; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64952 () Bool)

(assert start!64952)

(declare-fun b!732908 () Bool)

(declare-fun e!410126 () Bool)

(declare-fun e!410131 () Bool)

(assert (=> b!732908 (= e!410126 e!410131)))

(declare-fun res!492585 () Bool)

(assert (=> b!732908 (=> (not res!492585) (not e!410131))))

(declare-datatypes ((SeekEntryResult!7328 0))(
  ( (MissingZero!7328 (index!31679 (_ BitVec 32))) (Found!7328 (index!31680 (_ BitVec 32))) (Intermediate!7328 (undefined!8140 Bool) (index!31681 (_ BitVec 32)) (x!62695 (_ BitVec 32))) (Undefined!7328) (MissingVacant!7328 (index!31682 (_ BitVec 32))) )
))
(declare-fun lt!324848 () SeekEntryResult!7328)

(declare-fun lt!324842 () SeekEntryResult!7328)

(assert (=> b!732908 (= res!492585 (= lt!324848 lt!324842))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!324843 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41216 0))(
  ( (array!41217 (arr!19721 (Array (_ BitVec 32) (_ BitVec 64))) (size!20142 (_ BitVec 32))) )
))
(declare-fun lt!324840 () array!41216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41216 (_ BitVec 32)) SeekEntryResult!7328)

(assert (=> b!732908 (= lt!324842 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324843 lt!324840 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732908 (= lt!324848 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324843 mask!3328) lt!324843 lt!324840 mask!3328))))

(declare-fun a!3186 () array!41216)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732908 (= lt!324843 (select (store (arr!19721 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732908 (= lt!324840 (array!41217 (store (arr!19721 a!3186) i!1173 k!2102) (size!20142 a!3186)))))

(declare-fun b!732909 () Bool)

(declare-fun res!492577 () Bool)

(declare-fun e!410124 () Bool)

(assert (=> b!732909 (=> (not res!492577) (not e!410124))))

(assert (=> b!732909 (= res!492577 (and (= (size!20142 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20142 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20142 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732910 () Bool)

(declare-fun e!410133 () Bool)

(assert (=> b!732910 (= e!410124 e!410133)))

(declare-fun res!492580 () Bool)

(assert (=> b!732910 (=> (not res!492580) (not e!410133))))

(declare-fun lt!324847 () SeekEntryResult!7328)

(assert (=> b!732910 (= res!492580 (or (= lt!324847 (MissingZero!7328 i!1173)) (= lt!324847 (MissingVacant!7328 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41216 (_ BitVec 32)) SeekEntryResult!7328)

(assert (=> b!732910 (= lt!324847 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732911 () Bool)

(declare-fun res!492581 () Bool)

(assert (=> b!732911 (=> (not res!492581) (not e!410133))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732911 (= res!492581 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20142 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20142 a!3186))))))

(declare-fun e!410127 () Bool)

(declare-fun b!732912 () Bool)

(declare-fun lt!324841 () SeekEntryResult!7328)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41216 (_ BitVec 32)) SeekEntryResult!7328)

(assert (=> b!732912 (= e!410127 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19721 a!3186) j!159) a!3186 mask!3328) lt!324841))))

(declare-fun b!732913 () Bool)

(declare-fun e!410129 () Bool)

(assert (=> b!732913 (= e!410129 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19721 a!3186) j!159) a!3186 mask!3328) (Found!7328 j!159)))))

(declare-fun b!732914 () Bool)

(declare-fun res!492583 () Bool)

(assert (=> b!732914 (=> (not res!492583) (not e!410124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732914 (= res!492583 (validKeyInArray!0 k!2102))))

(declare-fun res!492588 () Bool)

(assert (=> start!64952 (=> (not res!492588) (not e!410124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64952 (= res!492588 (validMask!0 mask!3328))))

(assert (=> start!64952 e!410124))

(assert (=> start!64952 true))

(declare-fun array_inv!15495 (array!41216) Bool)

(assert (=> start!64952 (array_inv!15495 a!3186)))

(declare-fun b!732915 () Bool)

(declare-fun e!410132 () Bool)

(assert (=> b!732915 (= e!410132 e!410127)))

(declare-fun res!492578 () Bool)

(assert (=> b!732915 (=> (not res!492578) (not e!410127))))

(assert (=> b!732915 (= res!492578 (= (seekEntryOrOpen!0 (select (arr!19721 a!3186) j!159) a!3186 mask!3328) lt!324841))))

(assert (=> b!732915 (= lt!324841 (Found!7328 j!159))))

(declare-fun b!732916 () Bool)

(declare-fun e!410125 () Bool)

(declare-fun e!410130 () Bool)

(assert (=> b!732916 (= e!410125 e!410130)))

(declare-fun res!492587 () Bool)

(assert (=> b!732916 (=> res!492587 e!410130)))

(assert (=> b!732916 (= res!492587 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324845 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732916 (= lt!324845 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732917 () Bool)

(assert (=> b!732917 (= e!410130 true)))

(declare-fun lt!324839 () SeekEntryResult!7328)

(assert (=> b!732917 (= lt!324839 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19721 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732918 () Bool)

(declare-fun res!492586 () Bool)

(assert (=> b!732918 (=> (not res!492586) (not e!410126))))

(assert (=> b!732918 (= res!492586 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19721 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732919 () Bool)

(declare-fun res!492579 () Bool)

(assert (=> b!732919 (=> (not res!492579) (not e!410126))))

(assert (=> b!732919 (= res!492579 e!410129)))

(declare-fun c!80544 () Bool)

(assert (=> b!732919 (= c!80544 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732920 () Bool)

(assert (=> b!732920 (= e!410131 (not e!410125))))

(declare-fun res!492582 () Bool)

(assert (=> b!732920 (=> res!492582 e!410125)))

(assert (=> b!732920 (= res!492582 (or (not (is-Intermediate!7328 lt!324842)) (bvsge x!1131 (x!62695 lt!324842))))))

(assert (=> b!732920 e!410132))

(declare-fun res!492590 () Bool)

(assert (=> b!732920 (=> (not res!492590) (not e!410132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41216 (_ BitVec 32)) Bool)

(assert (=> b!732920 (= res!492590 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24974 0))(
  ( (Unit!24975) )
))
(declare-fun lt!324844 () Unit!24974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24974)

(assert (=> b!732920 (= lt!324844 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!324846 () SeekEntryResult!7328)

(declare-fun b!732921 () Bool)

(assert (=> b!732921 (= e!410129 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19721 a!3186) j!159) a!3186 mask!3328) lt!324846))))

(declare-fun b!732922 () Bool)

(declare-fun res!492584 () Bool)

(assert (=> b!732922 (=> (not res!492584) (not e!410124))))

(declare-fun arrayContainsKey!0 (array!41216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732922 (= res!492584 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732923 () Bool)

(declare-fun res!492575 () Bool)

(assert (=> b!732923 (=> (not res!492575) (not e!410133))))

(assert (=> b!732923 (= res!492575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732924 () Bool)

(assert (=> b!732924 (= e!410133 e!410126)))

(declare-fun res!492576 () Bool)

(assert (=> b!732924 (=> (not res!492576) (not e!410126))))

(assert (=> b!732924 (= res!492576 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19721 a!3186) j!159) mask!3328) (select (arr!19721 a!3186) j!159) a!3186 mask!3328) lt!324846))))

(assert (=> b!732924 (= lt!324846 (Intermediate!7328 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732925 () Bool)

(declare-fun res!492589 () Bool)

(assert (=> b!732925 (=> (not res!492589) (not e!410124))))

(assert (=> b!732925 (= res!492589 (validKeyInArray!0 (select (arr!19721 a!3186) j!159)))))

(declare-fun b!732926 () Bool)

(declare-fun res!492591 () Bool)

(assert (=> b!732926 (=> (not res!492591) (not e!410133))))

(declare-datatypes ((List!13776 0))(
  ( (Nil!13773) (Cons!13772 (h!14838 (_ BitVec 64)) (t!20099 List!13776)) )
))
(declare-fun arrayNoDuplicates!0 (array!41216 (_ BitVec 32) List!13776) Bool)

(assert (=> b!732926 (= res!492591 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13773))))

(assert (= (and start!64952 res!492588) b!732909))

(assert (= (and b!732909 res!492577) b!732925))

(assert (= (and b!732925 res!492589) b!732914))

(assert (= (and b!732914 res!492583) b!732922))

(assert (= (and b!732922 res!492584) b!732910))

(assert (= (and b!732910 res!492580) b!732923))

(assert (= (and b!732923 res!492575) b!732926))

(assert (= (and b!732926 res!492591) b!732911))

(assert (= (and b!732911 res!492581) b!732924))

(assert (= (and b!732924 res!492576) b!732918))

(assert (= (and b!732918 res!492586) b!732919))

(assert (= (and b!732919 c!80544) b!732921))

(assert (= (and b!732919 (not c!80544)) b!732913))

(assert (= (and b!732919 res!492579) b!732908))

(assert (= (and b!732908 res!492585) b!732920))

(assert (= (and b!732920 res!492590) b!732915))

(assert (= (and b!732915 res!492578) b!732912))

(assert (= (and b!732920 (not res!492582)) b!732916))

(assert (= (and b!732916 (not res!492587)) b!732917))

(declare-fun m!685969 () Bool)

(assert (=> b!732923 m!685969))

(declare-fun m!685971 () Bool)

(assert (=> b!732920 m!685971))

(declare-fun m!685973 () Bool)

(assert (=> b!732920 m!685973))

(declare-fun m!685975 () Bool)

(assert (=> b!732916 m!685975))

(declare-fun m!685977 () Bool)

(assert (=> b!732918 m!685977))

(declare-fun m!685979 () Bool)

(assert (=> b!732912 m!685979))

(assert (=> b!732912 m!685979))

(declare-fun m!685981 () Bool)

(assert (=> b!732912 m!685981))

(declare-fun m!685983 () Bool)

(assert (=> b!732914 m!685983))

(declare-fun m!685985 () Bool)

(assert (=> b!732910 m!685985))

(assert (=> b!732913 m!685979))

(assert (=> b!732913 m!685979))

(declare-fun m!685987 () Bool)

(assert (=> b!732913 m!685987))

(declare-fun m!685989 () Bool)

(assert (=> b!732908 m!685989))

(declare-fun m!685991 () Bool)

(assert (=> b!732908 m!685991))

(declare-fun m!685993 () Bool)

(assert (=> b!732908 m!685993))

(declare-fun m!685995 () Bool)

(assert (=> b!732908 m!685995))

(assert (=> b!732908 m!685989))

(declare-fun m!685997 () Bool)

(assert (=> b!732908 m!685997))

(assert (=> b!732921 m!685979))

(assert (=> b!732921 m!685979))

(declare-fun m!685999 () Bool)

(assert (=> b!732921 m!685999))

(assert (=> b!732925 m!685979))

(assert (=> b!732925 m!685979))

(declare-fun m!686001 () Bool)

(assert (=> b!732925 m!686001))

(declare-fun m!686003 () Bool)

(assert (=> start!64952 m!686003))

(declare-fun m!686005 () Bool)

(assert (=> start!64952 m!686005))

(assert (=> b!732924 m!685979))

(assert (=> b!732924 m!685979))

(declare-fun m!686007 () Bool)

(assert (=> b!732924 m!686007))

(assert (=> b!732924 m!686007))

(assert (=> b!732924 m!685979))

(declare-fun m!686009 () Bool)

(assert (=> b!732924 m!686009))

(assert (=> b!732915 m!685979))

(assert (=> b!732915 m!685979))

(declare-fun m!686011 () Bool)

(assert (=> b!732915 m!686011))

(declare-fun m!686013 () Bool)

(assert (=> b!732926 m!686013))

(declare-fun m!686015 () Bool)

(assert (=> b!732922 m!686015))

(assert (=> b!732917 m!685979))

(assert (=> b!732917 m!685979))

(assert (=> b!732917 m!685987))

(push 1)

