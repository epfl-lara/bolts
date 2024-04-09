; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45998 () Bool)

(assert start!45998)

(declare-fun res!309944 () Bool)

(declare-fun e!297679 () Bool)

(assert (=> start!45998 (=> (not res!309944) (not e!297679))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45998 (= res!309944 (validMask!0 mask!3524))))

(assert (=> start!45998 e!297679))

(assert (=> start!45998 true))

(declare-datatypes ((array!32669 0))(
  ( (array!32670 (arr!15710 (Array (_ BitVec 32) (_ BitVec 64))) (size!16074 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32669)

(declare-fun array_inv!11484 (array!32669) Bool)

(assert (=> start!45998 (array_inv!11484 a!3235)))

(declare-fun b!508941 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297682 () Bool)

(declare-datatypes ((SeekEntryResult!4184 0))(
  ( (MissingZero!4184 (index!18924 (_ BitVec 32))) (Found!4184 (index!18925 (_ BitVec 32))) (Intermediate!4184 (undefined!4996 Bool) (index!18926 (_ BitVec 32)) (x!47924 (_ BitVec 32))) (Undefined!4184) (MissingVacant!4184 (index!18927 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32669 (_ BitVec 32)) SeekEntryResult!4184)

(assert (=> b!508941 (= e!297682 (= (seekEntryOrOpen!0 (select (arr!15710 a!3235) j!176) a!3235 mask!3524) (Found!4184 j!176)))))

(declare-fun b!508942 () Bool)

(declare-fun res!309942 () Bool)

(assert (=> b!508942 (=> (not res!309942) (not e!297679))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508942 (= res!309942 (validKeyInArray!0 k!2280))))

(declare-fun b!508943 () Bool)

(declare-fun res!309943 () Bool)

(declare-fun e!297681 () Bool)

(assert (=> b!508943 (=> (not res!309943) (not e!297681))))

(declare-datatypes ((List!9921 0))(
  ( (Nil!9918) (Cons!9917 (h!10794 (_ BitVec 64)) (t!16157 List!9921)) )
))
(declare-fun arrayNoDuplicates!0 (array!32669 (_ BitVec 32) List!9921) Bool)

(assert (=> b!508943 (= res!309943 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9918))))

(declare-fun b!508944 () Bool)

(assert (=> b!508944 (= e!297679 e!297681)))

(declare-fun res!309936 () Bool)

(assert (=> b!508944 (=> (not res!309936) (not e!297681))))

(declare-fun lt!232476 () SeekEntryResult!4184)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508944 (= res!309936 (or (= lt!232476 (MissingZero!4184 i!1204)) (= lt!232476 (MissingVacant!4184 i!1204))))))

(assert (=> b!508944 (= lt!232476 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508945 () Bool)

(declare-fun res!309940 () Bool)

(assert (=> b!508945 (=> (not res!309940) (not e!297681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32669 (_ BitVec 32)) Bool)

(assert (=> b!508945 (= res!309940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508946 () Bool)

(declare-fun res!309938 () Bool)

(assert (=> b!508946 (=> (not res!309938) (not e!297679))))

(assert (=> b!508946 (= res!309938 (validKeyInArray!0 (select (arr!15710 a!3235) j!176)))))

(declare-fun b!508947 () Bool)

(declare-fun res!309937 () Bool)

(assert (=> b!508947 (=> (not res!309937) (not e!297679))))

(declare-fun arrayContainsKey!0 (array!32669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508947 (= res!309937 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508948 () Bool)

(declare-fun res!309941 () Bool)

(assert (=> b!508948 (=> (not res!309941) (not e!297679))))

(assert (=> b!508948 (= res!309941 (and (= (size!16074 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16074 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16074 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508949 () Bool)

(assert (=> b!508949 (= e!297681 (not true))))

(declare-fun lt!232481 () SeekEntryResult!4184)

(declare-fun lt!232477 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32669 (_ BitVec 32)) SeekEntryResult!4184)

(assert (=> b!508949 (= lt!232481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232477 (select (store (arr!15710 a!3235) i!1204 k!2280) j!176) (array!32670 (store (arr!15710 a!3235) i!1204 k!2280) (size!16074 a!3235)) mask!3524))))

(declare-fun lt!232479 () SeekEntryResult!4184)

(declare-fun lt!232480 () (_ BitVec 32))

(assert (=> b!508949 (= lt!232479 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232480 (select (arr!15710 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!508949 (= lt!232477 (toIndex!0 (select (store (arr!15710 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!508949 (= lt!232480 (toIndex!0 (select (arr!15710 a!3235) j!176) mask!3524))))

(assert (=> b!508949 e!297682))

(declare-fun res!309939 () Bool)

(assert (=> b!508949 (=> (not res!309939) (not e!297682))))

(assert (=> b!508949 (= res!309939 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15618 0))(
  ( (Unit!15619) )
))
(declare-fun lt!232478 () Unit!15618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15618)

(assert (=> b!508949 (= lt!232478 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45998 res!309944) b!508948))

(assert (= (and b!508948 res!309941) b!508946))

(assert (= (and b!508946 res!309938) b!508942))

(assert (= (and b!508942 res!309942) b!508947))

(assert (= (and b!508947 res!309937) b!508944))

(assert (= (and b!508944 res!309936) b!508945))

(assert (= (and b!508945 res!309940) b!508943))

(assert (= (and b!508943 res!309943) b!508949))

(assert (= (and b!508949 res!309939) b!508941))

(declare-fun m!489763 () Bool)

(assert (=> b!508946 m!489763))

(assert (=> b!508946 m!489763))

(declare-fun m!489765 () Bool)

(assert (=> b!508946 m!489765))

(declare-fun m!489767 () Bool)

(assert (=> b!508942 m!489767))

(assert (=> b!508941 m!489763))

(assert (=> b!508941 m!489763))

(declare-fun m!489769 () Bool)

(assert (=> b!508941 m!489769))

(declare-fun m!489771 () Bool)

(assert (=> b!508944 m!489771))

(declare-fun m!489773 () Bool)

(assert (=> start!45998 m!489773))

(declare-fun m!489775 () Bool)

(assert (=> start!45998 m!489775))

(declare-fun m!489777 () Bool)

(assert (=> b!508943 m!489777))

(declare-fun m!489779 () Bool)

(assert (=> b!508947 m!489779))

(declare-fun m!489781 () Bool)

(assert (=> b!508945 m!489781))

(declare-fun m!489783 () Bool)

(assert (=> b!508949 m!489783))

(declare-fun m!489785 () Bool)

(assert (=> b!508949 m!489785))

(assert (=> b!508949 m!489763))

(declare-fun m!489787 () Bool)

(assert (=> b!508949 m!489787))

(assert (=> b!508949 m!489763))

(declare-fun m!489789 () Bool)

(assert (=> b!508949 m!489789))

(assert (=> b!508949 m!489785))

(declare-fun m!489791 () Bool)

(assert (=> b!508949 m!489791))

(assert (=> b!508949 m!489785))

(declare-fun m!489793 () Bool)

(assert (=> b!508949 m!489793))

(assert (=> b!508949 m!489763))

(declare-fun m!489795 () Bool)

(assert (=> b!508949 m!489795))

(declare-fun m!489797 () Bool)

(assert (=> b!508949 m!489797))

(push 1)

(assert (not b!508942))

(assert (not b!508945))

(assert (not b!508941))

(assert (not b!508944))

(assert (not start!45998))

(assert (not b!508949))

(assert (not b!508947))

(assert (not b!508946))

(assert (not b!508943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

