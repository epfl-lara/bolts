; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64204 () Bool)

(assert start!64204)

(declare-fun b!720739 () Bool)

(declare-fun res!482984 () Bool)

(declare-fun e!404226 () Bool)

(assert (=> b!720739 (=> (not res!482984) (not e!404226))))

(declare-datatypes ((array!40795 0))(
  ( (array!40796 (arr!19518 (Array (_ BitVec 32) (_ BitVec 64))) (size!19939 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40795)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!720739 (= res!482984 (and (= (size!19939 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19939 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19939 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720741 () Bool)

(declare-fun e!404225 () Bool)

(assert (=> b!720741 (= e!404225 false)))

(declare-fun lt!319870 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720741 (= lt!319870 (toIndex!0 (select (store (arr!19518 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!404228 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!720742 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7125 0))(
  ( (MissingZero!7125 (index!30867 (_ BitVec 32))) (Found!7125 (index!30868 (_ BitVec 32))) (Intermediate!7125 (undefined!7937 Bool) (index!30869 (_ BitVec 32)) (x!61902 (_ BitVec 32))) (Undefined!7125) (MissingVacant!7125 (index!30870 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40795 (_ BitVec 32)) SeekEntryResult!7125)

(assert (=> b!720742 (= e!404228 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19518 a!3186) j!159) a!3186 mask!3328) (Found!7125 j!159)))))

(declare-fun b!720743 () Bool)

(declare-fun e!404229 () Bool)

(assert (=> b!720743 (= e!404229 e!404225)))

(declare-fun res!482988 () Bool)

(assert (=> b!720743 (=> (not res!482988) (not e!404225))))

(declare-fun lt!319869 () SeekEntryResult!7125)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40795 (_ BitVec 32)) SeekEntryResult!7125)

(assert (=> b!720743 (= res!482988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19518 a!3186) j!159) mask!3328) (select (arr!19518 a!3186) j!159) a!3186 mask!3328) lt!319869))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720743 (= lt!319869 (Intermediate!7125 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!482987 () Bool)

(assert (=> start!64204 (=> (not res!482987) (not e!404226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64204 (= res!482987 (validMask!0 mask!3328))))

(assert (=> start!64204 e!404226))

(assert (=> start!64204 true))

(declare-fun array_inv!15292 (array!40795) Bool)

(assert (=> start!64204 (array_inv!15292 a!3186)))

(declare-fun b!720740 () Bool)

(declare-fun res!482992 () Bool)

(assert (=> b!720740 (=> (not res!482992) (not e!404226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720740 (= res!482992 (validKeyInArray!0 (select (arr!19518 a!3186) j!159)))))

(declare-fun b!720744 () Bool)

(declare-fun res!482993 () Bool)

(assert (=> b!720744 (=> (not res!482993) (not e!404229))))

(declare-datatypes ((List!13573 0))(
  ( (Nil!13570) (Cons!13569 (h!14620 (_ BitVec 64)) (t!19896 List!13573)) )
))
(declare-fun arrayNoDuplicates!0 (array!40795 (_ BitVec 32) List!13573) Bool)

(assert (=> b!720744 (= res!482993 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13570))))

(declare-fun b!720745 () Bool)

(assert (=> b!720745 (= e!404226 e!404229)))

(declare-fun res!482985 () Bool)

(assert (=> b!720745 (=> (not res!482985) (not e!404229))))

(declare-fun lt!319871 () SeekEntryResult!7125)

(assert (=> b!720745 (= res!482985 (or (= lt!319871 (MissingZero!7125 i!1173)) (= lt!319871 (MissingVacant!7125 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40795 (_ BitVec 32)) SeekEntryResult!7125)

(assert (=> b!720745 (= lt!319871 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720746 () Bool)

(declare-fun res!482989 () Bool)

(assert (=> b!720746 (=> (not res!482989) (not e!404229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40795 (_ BitVec 32)) Bool)

(assert (=> b!720746 (= res!482989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720747 () Bool)

(declare-fun res!482994 () Bool)

(assert (=> b!720747 (=> (not res!482994) (not e!404226))))

(declare-fun arrayContainsKey!0 (array!40795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720747 (= res!482994 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!720748 () Bool)

(declare-fun res!482991 () Bool)

(assert (=> b!720748 (=> (not res!482991) (not e!404229))))

(assert (=> b!720748 (= res!482991 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19939 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19939 a!3186))))))

(declare-fun b!720749 () Bool)

(declare-fun res!482990 () Bool)

(assert (=> b!720749 (=> (not res!482990) (not e!404225))))

(assert (=> b!720749 (= res!482990 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19518 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720750 () Bool)

(declare-fun res!482986 () Bool)

(assert (=> b!720750 (=> (not res!482986) (not e!404226))))

(assert (=> b!720750 (= res!482986 (validKeyInArray!0 k!2102))))

(declare-fun b!720751 () Bool)

(declare-fun res!482983 () Bool)

(assert (=> b!720751 (=> (not res!482983) (not e!404225))))

(assert (=> b!720751 (= res!482983 e!404228)))

(declare-fun c!79248 () Bool)

(assert (=> b!720751 (= c!79248 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720752 () Bool)

(assert (=> b!720752 (= e!404228 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19518 a!3186) j!159) a!3186 mask!3328) lt!319869))))

(assert (= (and start!64204 res!482987) b!720739))

(assert (= (and b!720739 res!482984) b!720740))

(assert (= (and b!720740 res!482992) b!720750))

(assert (= (and b!720750 res!482986) b!720747))

(assert (= (and b!720747 res!482994) b!720745))

(assert (= (and b!720745 res!482985) b!720746))

(assert (= (and b!720746 res!482989) b!720744))

(assert (= (and b!720744 res!482993) b!720748))

(assert (= (and b!720748 res!482991) b!720743))

(assert (= (and b!720743 res!482988) b!720749))

(assert (= (and b!720749 res!482990) b!720751))

(assert (= (and b!720751 c!79248) b!720752))

(assert (= (and b!720751 (not c!79248)) b!720742))

(assert (= (and b!720751 res!482983) b!720741))

(declare-fun m!675835 () Bool)

(assert (=> b!720741 m!675835))

(declare-fun m!675837 () Bool)

(assert (=> b!720741 m!675837))

(assert (=> b!720741 m!675837))

(declare-fun m!675839 () Bool)

(assert (=> b!720741 m!675839))

(declare-fun m!675841 () Bool)

(assert (=> b!720746 m!675841))

(declare-fun m!675843 () Bool)

(assert (=> start!64204 m!675843))

(declare-fun m!675845 () Bool)

(assert (=> start!64204 m!675845))

(declare-fun m!675847 () Bool)

(assert (=> b!720743 m!675847))

(assert (=> b!720743 m!675847))

(declare-fun m!675849 () Bool)

(assert (=> b!720743 m!675849))

(assert (=> b!720743 m!675849))

(assert (=> b!720743 m!675847))

(declare-fun m!675851 () Bool)

(assert (=> b!720743 m!675851))

(declare-fun m!675853 () Bool)

(assert (=> b!720749 m!675853))

(declare-fun m!675855 () Bool)

(assert (=> b!720744 m!675855))

(declare-fun m!675857 () Bool)

(assert (=> b!720750 m!675857))

(declare-fun m!675859 () Bool)

(assert (=> b!720747 m!675859))

(assert (=> b!720752 m!675847))

(assert (=> b!720752 m!675847))

(declare-fun m!675861 () Bool)

(assert (=> b!720752 m!675861))

(declare-fun m!675863 () Bool)

(assert (=> b!720745 m!675863))

(assert (=> b!720740 m!675847))

(assert (=> b!720740 m!675847))

(declare-fun m!675865 () Bool)

(assert (=> b!720740 m!675865))

(assert (=> b!720742 m!675847))

(assert (=> b!720742 m!675847))

(declare-fun m!675867 () Bool)

(assert (=> b!720742 m!675867))

(push 1)

