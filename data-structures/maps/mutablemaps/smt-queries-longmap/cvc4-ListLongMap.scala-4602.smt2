; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64208 () Bool)

(assert start!64208)

(declare-fun b!720823 () Bool)

(declare-fun res!483066 () Bool)

(declare-fun e!404257 () Bool)

(assert (=> b!720823 (=> (not res!483066) (not e!404257))))

(declare-datatypes ((array!40799 0))(
  ( (array!40800 (arr!19520 (Array (_ BitVec 32) (_ BitVec 64))) (size!19941 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40799)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720823 (= res!483066 (validKeyInArray!0 (select (arr!19520 a!3186) j!159)))))

(declare-fun b!720824 () Bool)

(declare-fun res!483063 () Bool)

(assert (=> b!720824 (=> (not res!483063) (not e!404257))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!720824 (= res!483063 (and (= (size!19941 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19941 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19941 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!483058 () Bool)

(assert (=> start!64208 (=> (not res!483058) (not e!404257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64208 (= res!483058 (validMask!0 mask!3328))))

(assert (=> start!64208 e!404257))

(assert (=> start!64208 true))

(declare-fun array_inv!15294 (array!40799) Bool)

(assert (=> start!64208 (array_inv!15294 a!3186)))

(declare-fun b!720825 () Bool)

(declare-fun res!483065 () Bool)

(assert (=> b!720825 (=> (not res!483065) (not e!404257))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720825 (= res!483065 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!720826 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404256 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7127 0))(
  ( (MissingZero!7127 (index!30875 (_ BitVec 32))) (Found!7127 (index!30876 (_ BitVec 32))) (Intermediate!7127 (undefined!7939 Bool) (index!30877 (_ BitVec 32)) (x!61904 (_ BitVec 32))) (Undefined!7127) (MissingVacant!7127 (index!30878 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40799 (_ BitVec 32)) SeekEntryResult!7127)

(assert (=> b!720826 (= e!404256 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19520 a!3186) j!159) a!3186 mask!3328) (Found!7127 j!159)))))

(declare-fun b!720827 () Bool)

(declare-fun res!483064 () Bool)

(declare-fun e!404259 () Bool)

(assert (=> b!720827 (=> (not res!483064) (not e!404259))))

(assert (=> b!720827 (= res!483064 e!404256)))

(declare-fun c!79254 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720827 (= c!79254 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720828 () Bool)

(declare-fun res!483062 () Bool)

(assert (=> b!720828 (=> (not res!483062) (not e!404259))))

(assert (=> b!720828 (= res!483062 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19520 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720829 () Bool)

(declare-fun res!483057 () Bool)

(assert (=> b!720829 (=> (not res!483057) (not e!404257))))

(assert (=> b!720829 (= res!483057 (validKeyInArray!0 k!2102))))

(declare-fun lt!319887 () SeekEntryResult!7127)

(declare-fun b!720830 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40799 (_ BitVec 32)) SeekEntryResult!7127)

(assert (=> b!720830 (= e!404256 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19520 a!3186) j!159) a!3186 mask!3328) lt!319887))))

(declare-fun b!720831 () Bool)

(declare-fun e!404258 () Bool)

(assert (=> b!720831 (= e!404257 e!404258)))

(declare-fun res!483061 () Bool)

(assert (=> b!720831 (=> (not res!483061) (not e!404258))))

(declare-fun lt!319888 () SeekEntryResult!7127)

(assert (=> b!720831 (= res!483061 (or (= lt!319888 (MissingZero!7127 i!1173)) (= lt!319888 (MissingVacant!7127 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40799 (_ BitVec 32)) SeekEntryResult!7127)

(assert (=> b!720831 (= lt!319888 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720832 () Bool)

(assert (=> b!720832 (= e!404259 false)))

(declare-fun lt!319889 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720832 (= lt!319889 (toIndex!0 (select (store (arr!19520 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720833 () Bool)

(assert (=> b!720833 (= e!404258 e!404259)))

(declare-fun res!483055 () Bool)

(assert (=> b!720833 (=> (not res!483055) (not e!404259))))

(assert (=> b!720833 (= res!483055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19520 a!3186) j!159) mask!3328) (select (arr!19520 a!3186) j!159) a!3186 mask!3328) lt!319887))))

(assert (=> b!720833 (= lt!319887 (Intermediate!7127 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!720834 () Bool)

(declare-fun res!483059 () Bool)

(assert (=> b!720834 (=> (not res!483059) (not e!404258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40799 (_ BitVec 32)) Bool)

(assert (=> b!720834 (= res!483059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720835 () Bool)

(declare-fun res!483056 () Bool)

(assert (=> b!720835 (=> (not res!483056) (not e!404258))))

(declare-datatypes ((List!13575 0))(
  ( (Nil!13572) (Cons!13571 (h!14622 (_ BitVec 64)) (t!19898 List!13575)) )
))
(declare-fun arrayNoDuplicates!0 (array!40799 (_ BitVec 32) List!13575) Bool)

(assert (=> b!720835 (= res!483056 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13572))))

(declare-fun b!720836 () Bool)

(declare-fun res!483060 () Bool)

(assert (=> b!720836 (=> (not res!483060) (not e!404258))))

(assert (=> b!720836 (= res!483060 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19941 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19941 a!3186))))))

(assert (= (and start!64208 res!483058) b!720824))

(assert (= (and b!720824 res!483063) b!720823))

(assert (= (and b!720823 res!483066) b!720829))

(assert (= (and b!720829 res!483057) b!720825))

(assert (= (and b!720825 res!483065) b!720831))

(assert (= (and b!720831 res!483061) b!720834))

(assert (= (and b!720834 res!483059) b!720835))

(assert (= (and b!720835 res!483056) b!720836))

(assert (= (and b!720836 res!483060) b!720833))

(assert (= (and b!720833 res!483055) b!720828))

(assert (= (and b!720828 res!483062) b!720827))

(assert (= (and b!720827 c!79254) b!720830))

(assert (= (and b!720827 (not c!79254)) b!720826))

(assert (= (and b!720827 res!483064) b!720832))

(declare-fun m!675903 () Bool)

(assert (=> b!720823 m!675903))

(assert (=> b!720823 m!675903))

(declare-fun m!675905 () Bool)

(assert (=> b!720823 m!675905))

(declare-fun m!675907 () Bool)

(assert (=> b!720825 m!675907))

(declare-fun m!675909 () Bool)

(assert (=> start!64208 m!675909))

(declare-fun m!675911 () Bool)

(assert (=> start!64208 m!675911))

(declare-fun m!675913 () Bool)

(assert (=> b!720832 m!675913))

(declare-fun m!675915 () Bool)

(assert (=> b!720832 m!675915))

(assert (=> b!720832 m!675915))

(declare-fun m!675917 () Bool)

(assert (=> b!720832 m!675917))

(declare-fun m!675919 () Bool)

(assert (=> b!720828 m!675919))

(assert (=> b!720830 m!675903))

(assert (=> b!720830 m!675903))

(declare-fun m!675921 () Bool)

(assert (=> b!720830 m!675921))

(assert (=> b!720833 m!675903))

(assert (=> b!720833 m!675903))

(declare-fun m!675923 () Bool)

(assert (=> b!720833 m!675923))

(assert (=> b!720833 m!675923))

(assert (=> b!720833 m!675903))

(declare-fun m!675925 () Bool)

(assert (=> b!720833 m!675925))

(declare-fun m!675927 () Bool)

(assert (=> b!720829 m!675927))

(declare-fun m!675929 () Bool)

(assert (=> b!720831 m!675929))

(declare-fun m!675931 () Bool)

(assert (=> b!720835 m!675931))

(declare-fun m!675933 () Bool)

(assert (=> b!720834 m!675933))

(assert (=> b!720826 m!675903))

(assert (=> b!720826 m!675903))

(declare-fun m!675935 () Bool)

(assert (=> b!720826 m!675935))

(push 1)

(assert (not b!720835))

(assert (not b!720832))

(assert (not b!720831))

(assert (not start!64208))

