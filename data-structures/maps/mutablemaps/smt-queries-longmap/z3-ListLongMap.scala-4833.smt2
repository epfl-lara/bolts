; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66490 () Bool)

(assert start!66490)

(declare-fun b!765838 () Bool)

(declare-fun res!518192 () Bool)

(declare-fun e!426515 () Bool)

(assert (=> b!765838 (=> (not res!518192) (not e!426515))))

(declare-datatypes ((array!42222 0))(
  ( (array!42223 (arr!20212 (Array (_ BitVec 32) (_ BitVec 64))) (size!20633 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42222)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!765838 (= res!518192 (and (= (size!20633 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20633 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20633 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!426516 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!765839 () Bool)

(declare-datatypes ((SeekEntryResult!7819 0))(
  ( (MissingZero!7819 (index!33643 (_ BitVec 32))) (Found!7819 (index!33644 (_ BitVec 32))) (Intermediate!7819 (undefined!8631 Bool) (index!33645 (_ BitVec 32)) (x!64578 (_ BitVec 32))) (Undefined!7819) (MissingVacant!7819 (index!33646 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42222 (_ BitVec 32)) SeekEntryResult!7819)

(assert (=> b!765839 (= e!426516 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20212 a!3186) j!159) a!3186 mask!3328) (Found!7819 j!159)))))

(declare-fun b!765840 () Bool)

(declare-fun e!426513 () Bool)

(assert (=> b!765840 (= e!426515 e!426513)))

(declare-fun res!518198 () Bool)

(assert (=> b!765840 (=> (not res!518198) (not e!426513))))

(declare-fun lt!340680 () SeekEntryResult!7819)

(assert (=> b!765840 (= res!518198 (or (= lt!340680 (MissingZero!7819 i!1173)) (= lt!340680 (MissingVacant!7819 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42222 (_ BitVec 32)) SeekEntryResult!7819)

(assert (=> b!765840 (= lt!340680 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!765841 () Bool)

(declare-fun res!518190 () Bool)

(assert (=> b!765841 (=> (not res!518190) (not e!426513))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765841 (= res!518190 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20633 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20633 a!3186))))))

(declare-fun e!426517 () Bool)

(declare-fun lt!340684 () SeekEntryResult!7819)

(declare-fun b!765842 () Bool)

(assert (=> b!765842 (= e!426517 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20212 a!3186) j!159) a!3186 mask!3328) lt!340684))))

(declare-fun b!765844 () Bool)

(declare-fun res!518193 () Bool)

(assert (=> b!765844 (=> (not res!518193) (not e!426515))))

(declare-fun arrayContainsKey!0 (array!42222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765844 (= res!518193 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765845 () Bool)

(declare-fun res!518196 () Bool)

(declare-fun e!426518 () Bool)

(assert (=> b!765845 (=> (not res!518196) (not e!426518))))

(assert (=> b!765845 (= res!518196 e!426516)))

(declare-fun c!84216 () Bool)

(assert (=> b!765845 (= c!84216 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765846 () Bool)

(declare-fun lt!340681 () SeekEntryResult!7819)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42222 (_ BitVec 32)) SeekEntryResult!7819)

(assert (=> b!765846 (= e!426516 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20212 a!3186) j!159) a!3186 mask!3328) lt!340681))))

(declare-fun b!765847 () Bool)

(declare-fun res!518188 () Bool)

(assert (=> b!765847 (=> (not res!518188) (not e!426513))))

(declare-datatypes ((List!14267 0))(
  ( (Nil!14264) (Cons!14263 (h!15353 (_ BitVec 64)) (t!20590 List!14267)) )
))
(declare-fun arrayNoDuplicates!0 (array!42222 (_ BitVec 32) List!14267) Bool)

(assert (=> b!765847 (= res!518188 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14264))))

(declare-fun b!765848 () Bool)

(assert (=> b!765848 (= e!426513 e!426518)))

(declare-fun res!518197 () Bool)

(assert (=> b!765848 (=> (not res!518197) (not e!426518))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765848 (= res!518197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20212 a!3186) j!159) mask!3328) (select (arr!20212 a!3186) j!159) a!3186 mask!3328) lt!340681))))

(assert (=> b!765848 (= lt!340681 (Intermediate!7819 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765849 () Bool)

(declare-fun e!426511 () Bool)

(assert (=> b!765849 (= e!426511 (not true))))

(declare-fun e!426512 () Bool)

(assert (=> b!765849 e!426512))

(declare-fun res!518186 () Bool)

(assert (=> b!765849 (=> (not res!518186) (not e!426512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42222 (_ BitVec 32)) Bool)

(assert (=> b!765849 (= res!518186 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26364 0))(
  ( (Unit!26365) )
))
(declare-fun lt!340679 () Unit!26364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26364)

(assert (=> b!765849 (= lt!340679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765850 () Bool)

(declare-fun res!518187 () Bool)

(assert (=> b!765850 (=> (not res!518187) (not e!426513))))

(assert (=> b!765850 (= res!518187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765851 () Bool)

(declare-fun res!518185 () Bool)

(assert (=> b!765851 (=> (not res!518185) (not e!426515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765851 (= res!518185 (validKeyInArray!0 k0!2102))))

(declare-fun b!765852 () Bool)

(declare-fun res!518195 () Bool)

(assert (=> b!765852 (=> (not res!518195) (not e!426518))))

(assert (=> b!765852 (= res!518195 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20212 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!518194 () Bool)

(assert (=> start!66490 (=> (not res!518194) (not e!426515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66490 (= res!518194 (validMask!0 mask!3328))))

(assert (=> start!66490 e!426515))

(assert (=> start!66490 true))

(declare-fun array_inv!15986 (array!42222) Bool)

(assert (=> start!66490 (array_inv!15986 a!3186)))

(declare-fun b!765843 () Bool)

(declare-fun res!518189 () Bool)

(assert (=> b!765843 (=> (not res!518189) (not e!426515))))

(assert (=> b!765843 (= res!518189 (validKeyInArray!0 (select (arr!20212 a!3186) j!159)))))

(declare-fun b!765853 () Bool)

(assert (=> b!765853 (= e!426518 e!426511)))

(declare-fun res!518191 () Bool)

(assert (=> b!765853 (=> (not res!518191) (not e!426511))))

(declare-fun lt!340683 () (_ BitVec 64))

(declare-fun lt!340682 () array!42222)

(assert (=> b!765853 (= res!518191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340683 mask!3328) lt!340683 lt!340682 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340683 lt!340682 mask!3328)))))

(assert (=> b!765853 (= lt!340683 (select (store (arr!20212 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!765853 (= lt!340682 (array!42223 (store (arr!20212 a!3186) i!1173 k0!2102) (size!20633 a!3186)))))

(declare-fun b!765854 () Bool)

(assert (=> b!765854 (= e!426512 e!426517)))

(declare-fun res!518199 () Bool)

(assert (=> b!765854 (=> (not res!518199) (not e!426517))))

(assert (=> b!765854 (= res!518199 (= (seekEntryOrOpen!0 (select (arr!20212 a!3186) j!159) a!3186 mask!3328) lt!340684))))

(assert (=> b!765854 (= lt!340684 (Found!7819 j!159))))

(assert (= (and start!66490 res!518194) b!765838))

(assert (= (and b!765838 res!518192) b!765843))

(assert (= (and b!765843 res!518189) b!765851))

(assert (= (and b!765851 res!518185) b!765844))

(assert (= (and b!765844 res!518193) b!765840))

(assert (= (and b!765840 res!518198) b!765850))

(assert (= (and b!765850 res!518187) b!765847))

(assert (= (and b!765847 res!518188) b!765841))

(assert (= (and b!765841 res!518190) b!765848))

(assert (= (and b!765848 res!518197) b!765852))

(assert (= (and b!765852 res!518195) b!765845))

(assert (= (and b!765845 c!84216) b!765846))

(assert (= (and b!765845 (not c!84216)) b!765839))

(assert (= (and b!765845 res!518196) b!765853))

(assert (= (and b!765853 res!518191) b!765849))

(assert (= (and b!765849 res!518186) b!765854))

(assert (= (and b!765854 res!518199) b!765842))

(declare-fun m!711957 () Bool)

(assert (=> b!765839 m!711957))

(assert (=> b!765839 m!711957))

(declare-fun m!711959 () Bool)

(assert (=> b!765839 m!711959))

(declare-fun m!711961 () Bool)

(assert (=> b!765851 m!711961))

(declare-fun m!711963 () Bool)

(assert (=> b!765840 m!711963))

(declare-fun m!711965 () Bool)

(assert (=> b!765847 m!711965))

(declare-fun m!711967 () Bool)

(assert (=> b!765852 m!711967))

(assert (=> b!765842 m!711957))

(assert (=> b!765842 m!711957))

(declare-fun m!711969 () Bool)

(assert (=> b!765842 m!711969))

(declare-fun m!711971 () Bool)

(assert (=> b!765853 m!711971))

(declare-fun m!711973 () Bool)

(assert (=> b!765853 m!711973))

(declare-fun m!711975 () Bool)

(assert (=> b!765853 m!711975))

(assert (=> b!765853 m!711975))

(declare-fun m!711977 () Bool)

(assert (=> b!765853 m!711977))

(declare-fun m!711979 () Bool)

(assert (=> b!765853 m!711979))

(assert (=> b!765848 m!711957))

(assert (=> b!765848 m!711957))

(declare-fun m!711981 () Bool)

(assert (=> b!765848 m!711981))

(assert (=> b!765848 m!711981))

(assert (=> b!765848 m!711957))

(declare-fun m!711983 () Bool)

(assert (=> b!765848 m!711983))

(declare-fun m!711985 () Bool)

(assert (=> b!765849 m!711985))

(declare-fun m!711987 () Bool)

(assert (=> b!765849 m!711987))

(assert (=> b!765843 m!711957))

(assert (=> b!765843 m!711957))

(declare-fun m!711989 () Bool)

(assert (=> b!765843 m!711989))

(declare-fun m!711991 () Bool)

(assert (=> b!765844 m!711991))

(declare-fun m!711993 () Bool)

(assert (=> b!765850 m!711993))

(declare-fun m!711995 () Bool)

(assert (=> start!66490 m!711995))

(declare-fun m!711997 () Bool)

(assert (=> start!66490 m!711997))

(assert (=> b!765854 m!711957))

(assert (=> b!765854 m!711957))

(declare-fun m!711999 () Bool)

(assert (=> b!765854 m!711999))

(assert (=> b!765846 m!711957))

(assert (=> b!765846 m!711957))

(declare-fun m!712001 () Bool)

(assert (=> b!765846 m!712001))

(check-sat (not b!765849) (not b!765842) (not b!765850) (not b!765848) (not b!765839) (not start!66490) (not b!765840) (not b!765851) (not b!765843) (not b!765854) (not b!765844) (not b!765847) (not b!765853) (not b!765846))
(check-sat)
