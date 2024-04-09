; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66486 () Bool)

(assert start!66486)

(declare-fun b!765736 () Bool)

(declare-fun res!518107 () Bool)

(declare-fun e!426467 () Bool)

(assert (=> b!765736 (=> (not res!518107) (not e!426467))))

(declare-datatypes ((array!42218 0))(
  ( (array!42219 (arr!20210 (Array (_ BitVec 32) (_ BitVec 64))) (size!20631 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42218)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765736 (= res!518107 (validKeyInArray!0 (select (arr!20210 a!3186) j!159)))))

(declare-fun b!765737 () Bool)

(declare-datatypes ((SeekEntryResult!7817 0))(
  ( (MissingZero!7817 (index!33635 (_ BitVec 32))) (Found!7817 (index!33636 (_ BitVec 32))) (Intermediate!7817 (undefined!8629 Bool) (index!33637 (_ BitVec 32)) (x!64568 (_ BitVec 32))) (Undefined!7817) (MissingVacant!7817 (index!33638 (_ BitVec 32))) )
))
(declare-fun lt!340647 () SeekEntryResult!7817)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!426466 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42218 (_ BitVec 32)) SeekEntryResult!7817)

(assert (=> b!765737 (= e!426466 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20210 a!3186) j!159) a!3186 mask!3328) lt!340647))))

(declare-fun b!765738 () Bool)

(declare-fun res!518101 () Bool)

(declare-fun e!426469 () Bool)

(assert (=> b!765738 (=> (not res!518101) (not e!426469))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!765738 (= res!518101 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20631 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20631 a!3186))))))

(declare-fun b!765739 () Bool)

(declare-fun e!426465 () Bool)

(assert (=> b!765739 (= e!426465 (not true))))

(declare-fun e!426464 () Bool)

(assert (=> b!765739 e!426464))

(declare-fun res!518099 () Bool)

(assert (=> b!765739 (=> (not res!518099) (not e!426464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42218 (_ BitVec 32)) Bool)

(assert (=> b!765739 (= res!518099 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26360 0))(
  ( (Unit!26361) )
))
(declare-fun lt!340646 () Unit!26360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26360)

(assert (=> b!765739 (= lt!340646 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765740 () Bool)

(declare-fun res!518103 () Bool)

(assert (=> b!765740 (=> (not res!518103) (not e!426467))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765740 (= res!518103 (and (= (size!20631 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20631 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20631 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765741 () Bool)

(declare-fun res!518097 () Bool)

(assert (=> b!765741 (=> (not res!518097) (not e!426469))))

(declare-datatypes ((List!14265 0))(
  ( (Nil!14262) (Cons!14261 (h!15351 (_ BitVec 64)) (t!20588 List!14265)) )
))
(declare-fun arrayNoDuplicates!0 (array!42218 (_ BitVec 32) List!14265) Bool)

(assert (=> b!765741 (= res!518097 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14262))))

(declare-fun b!765742 () Bool)

(assert (=> b!765742 (= e!426467 e!426469)))

(declare-fun res!518102 () Bool)

(assert (=> b!765742 (=> (not res!518102) (not e!426469))))

(declare-fun lt!340648 () SeekEntryResult!7817)

(assert (=> b!765742 (= res!518102 (or (= lt!340648 (MissingZero!7817 i!1173)) (= lt!340648 (MissingVacant!7817 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42218 (_ BitVec 32)) SeekEntryResult!7817)

(assert (=> b!765742 (= lt!340648 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765743 () Bool)

(declare-fun res!518096 () Bool)

(assert (=> b!765743 (=> (not res!518096) (not e!426467))))

(declare-fun arrayContainsKey!0 (array!42218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765743 (= res!518096 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765744 () Bool)

(assert (=> b!765744 (= e!426464 e!426466)))

(declare-fun res!518100 () Bool)

(assert (=> b!765744 (=> (not res!518100) (not e!426466))))

(assert (=> b!765744 (= res!518100 (= (seekEntryOrOpen!0 (select (arr!20210 a!3186) j!159) a!3186 mask!3328) lt!340647))))

(assert (=> b!765744 (= lt!340647 (Found!7817 j!159))))

(declare-fun b!765745 () Bool)

(declare-fun e!426470 () Bool)

(assert (=> b!765745 (= e!426470 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20210 a!3186) j!159) a!3186 mask!3328) (Found!7817 j!159)))))

(declare-fun b!765746 () Bool)

(declare-fun e!426468 () Bool)

(assert (=> b!765746 (= e!426468 e!426465)))

(declare-fun res!518105 () Bool)

(assert (=> b!765746 (=> (not res!518105) (not e!426465))))

(declare-fun lt!340645 () (_ BitVec 64))

(declare-fun lt!340644 () array!42218)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42218 (_ BitVec 32)) SeekEntryResult!7817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765746 (= res!518105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340645 mask!3328) lt!340645 lt!340644 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340645 lt!340644 mask!3328)))))

(assert (=> b!765746 (= lt!340645 (select (store (arr!20210 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765746 (= lt!340644 (array!42219 (store (arr!20210 a!3186) i!1173 k!2102) (size!20631 a!3186)))))

(declare-fun b!765747 () Bool)

(declare-fun res!518109 () Bool)

(assert (=> b!765747 (=> (not res!518109) (not e!426468))))

(assert (=> b!765747 (= res!518109 e!426470)))

(declare-fun c!84210 () Bool)

(assert (=> b!765747 (= c!84210 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765748 () Bool)

(declare-fun lt!340643 () SeekEntryResult!7817)

(assert (=> b!765748 (= e!426470 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20210 a!3186) j!159) a!3186 mask!3328) lt!340643))))

(declare-fun b!765749 () Bool)

(assert (=> b!765749 (= e!426469 e!426468)))

(declare-fun res!518104 () Bool)

(assert (=> b!765749 (=> (not res!518104) (not e!426468))))

(assert (=> b!765749 (= res!518104 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20210 a!3186) j!159) mask!3328) (select (arr!20210 a!3186) j!159) a!3186 mask!3328) lt!340643))))

(assert (=> b!765749 (= lt!340643 (Intermediate!7817 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765750 () Bool)

(declare-fun res!518095 () Bool)

(assert (=> b!765750 (=> (not res!518095) (not e!426467))))

(assert (=> b!765750 (= res!518095 (validKeyInArray!0 k!2102))))

(declare-fun res!518106 () Bool)

(assert (=> start!66486 (=> (not res!518106) (not e!426467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66486 (= res!518106 (validMask!0 mask!3328))))

(assert (=> start!66486 e!426467))

(assert (=> start!66486 true))

(declare-fun array_inv!15984 (array!42218) Bool)

(assert (=> start!66486 (array_inv!15984 a!3186)))

(declare-fun b!765751 () Bool)

(declare-fun res!518108 () Bool)

(assert (=> b!765751 (=> (not res!518108) (not e!426469))))

(assert (=> b!765751 (= res!518108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765752 () Bool)

(declare-fun res!518098 () Bool)

(assert (=> b!765752 (=> (not res!518098) (not e!426468))))

(assert (=> b!765752 (= res!518098 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20210 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!66486 res!518106) b!765740))

(assert (= (and b!765740 res!518103) b!765736))

(assert (= (and b!765736 res!518107) b!765750))

(assert (= (and b!765750 res!518095) b!765743))

(assert (= (and b!765743 res!518096) b!765742))

(assert (= (and b!765742 res!518102) b!765751))

(assert (= (and b!765751 res!518108) b!765741))

(assert (= (and b!765741 res!518097) b!765738))

(assert (= (and b!765738 res!518101) b!765749))

(assert (= (and b!765749 res!518104) b!765752))

(assert (= (and b!765752 res!518098) b!765747))

(assert (= (and b!765747 c!84210) b!765748))

(assert (= (and b!765747 (not c!84210)) b!765745))

(assert (= (and b!765747 res!518109) b!765746))

(assert (= (and b!765746 res!518105) b!765739))

(assert (= (and b!765739 res!518099) b!765744))

(assert (= (and b!765744 res!518100) b!765737))

(declare-fun m!711865 () Bool)

(assert (=> b!765745 m!711865))

(assert (=> b!765745 m!711865))

(declare-fun m!711867 () Bool)

(assert (=> b!765745 m!711867))

(assert (=> b!765749 m!711865))

(assert (=> b!765749 m!711865))

(declare-fun m!711869 () Bool)

(assert (=> b!765749 m!711869))

(assert (=> b!765749 m!711869))

(assert (=> b!765749 m!711865))

(declare-fun m!711871 () Bool)

(assert (=> b!765749 m!711871))

(declare-fun m!711873 () Bool)

(assert (=> start!66486 m!711873))

(declare-fun m!711875 () Bool)

(assert (=> start!66486 m!711875))

(assert (=> b!765737 m!711865))

(assert (=> b!765737 m!711865))

(declare-fun m!711877 () Bool)

(assert (=> b!765737 m!711877))

(declare-fun m!711879 () Bool)

(assert (=> b!765742 m!711879))

(assert (=> b!765748 m!711865))

(assert (=> b!765748 m!711865))

(declare-fun m!711881 () Bool)

(assert (=> b!765748 m!711881))

(assert (=> b!765736 m!711865))

(assert (=> b!765736 m!711865))

(declare-fun m!711883 () Bool)

(assert (=> b!765736 m!711883))

(declare-fun m!711885 () Bool)

(assert (=> b!765752 m!711885))

(declare-fun m!711887 () Bool)

(assert (=> b!765743 m!711887))

(assert (=> b!765744 m!711865))

(assert (=> b!765744 m!711865))

(declare-fun m!711889 () Bool)

(assert (=> b!765744 m!711889))

(declare-fun m!711891 () Bool)

(assert (=> b!765739 m!711891))

(declare-fun m!711893 () Bool)

(assert (=> b!765739 m!711893))

(declare-fun m!711895 () Bool)

(assert (=> b!765750 m!711895))

(declare-fun m!711897 () Bool)

(assert (=> b!765751 m!711897))

(declare-fun m!711899 () Bool)

(assert (=> b!765741 m!711899))

(declare-fun m!711901 () Bool)

(assert (=> b!765746 m!711901))

(declare-fun m!711903 () Bool)

(assert (=> b!765746 m!711903))

(declare-fun m!711905 () Bool)

(assert (=> b!765746 m!711905))

(declare-fun m!711907 () Bool)

(assert (=> b!765746 m!711907))

(declare-fun m!711909 () Bool)

(assert (=> b!765746 m!711909))

(assert (=> b!765746 m!711901))

(push 1)

