; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47398 () Bool)

(assert start!47398)

(declare-fun b!520921 () Bool)

(declare-fun e!303952 () Bool)

(assert (=> b!520921 (= e!303952 true)))

(declare-datatypes ((array!33184 0))(
  ( (array!33185 (arr!15945 (Array (_ BitVec 32) (_ BitVec 64))) (size!16309 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33184)

(declare-datatypes ((SeekEntryResult!4419 0))(
  ( (MissingZero!4419 (index!19879 (_ BitVec 32))) (Found!4419 (index!19880 (_ BitVec 32))) (Intermediate!4419 (undefined!5231 Bool) (index!19881 (_ BitVec 32)) (x!48896 (_ BitVec 32))) (Undefined!4419) (MissingVacant!4419 (index!19882 (_ BitVec 32))) )
))
(declare-fun lt!238717 () SeekEntryResult!4419)

(assert (=> b!520921 (and (or (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16142 0))(
  ( (Unit!16143) )
))
(declare-fun lt!238716 () Unit!16142)

(declare-fun e!303951 () Unit!16142)

(assert (=> b!520921 (= lt!238716 e!303951)))

(declare-fun c!61304 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!520921 (= c!61304 (= (select (arr!15945 a!3235) (index!19881 lt!238717)) (select (arr!15945 a!3235) j!176)))))

(assert (=> b!520921 (and (bvslt (x!48896 lt!238717) #b01111111111111111111111111111110) (or (= (select (arr!15945 a!3235) (index!19881 lt!238717)) (select (arr!15945 a!3235) j!176)) (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15945 a!3235) (index!19881 lt!238717)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520922 () Bool)

(declare-fun res!318920 () Bool)

(declare-fun e!303949 () Bool)

(assert (=> b!520922 (=> (not res!318920) (not e!303949))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33184 (_ BitVec 32)) Bool)

(assert (=> b!520922 (= res!318920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520923 () Bool)

(declare-fun res!318916 () Bool)

(declare-fun e!303946 () Bool)

(assert (=> b!520923 (=> (not res!318916) (not e!303946))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520923 (= res!318916 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520924 () Bool)

(assert (=> b!520924 (= e!303946 e!303949)))

(declare-fun res!318926 () Bool)

(assert (=> b!520924 (=> (not res!318926) (not e!303949))))

(declare-fun lt!238715 () SeekEntryResult!4419)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520924 (= res!318926 (or (= lt!238715 (MissingZero!4419 i!1204)) (= lt!238715 (MissingVacant!4419 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33184 (_ BitVec 32)) SeekEntryResult!4419)

(assert (=> b!520924 (= lt!238715 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520925 () Bool)

(declare-fun res!318922 () Bool)

(assert (=> b!520925 (=> (not res!318922) (not e!303946))))

(assert (=> b!520925 (= res!318922 (and (= (size!16309 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16309 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16309 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520927 () Bool)

(declare-fun res!318925 () Bool)

(assert (=> b!520927 (=> res!318925 e!303952)))

(assert (=> b!520927 (= res!318925 (or (undefined!5231 lt!238717) (not (is-Intermediate!4419 lt!238717))))))

(declare-fun e!303947 () Bool)

(declare-fun b!520928 () Bool)

(assert (=> b!520928 (= e!303947 (= (seekEntryOrOpen!0 (select (arr!15945 a!3235) j!176) a!3235 mask!3524) (Found!4419 j!176)))))

(declare-fun b!520929 () Bool)

(declare-fun Unit!16144 () Unit!16142)

(assert (=> b!520929 (= e!303951 Unit!16144)))

(declare-fun lt!238714 () Unit!16142)

(declare-fun lt!238718 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33184 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16142)

(assert (=> b!520929 (= lt!238714 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238718 #b00000000000000000000000000000000 (index!19881 lt!238717) (x!48896 lt!238717) mask!3524))))

(declare-fun lt!238721 () array!33184)

(declare-fun res!318923 () Bool)

(declare-fun lt!238719 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33184 (_ BitVec 32)) SeekEntryResult!4419)

(assert (=> b!520929 (= res!318923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238718 lt!238719 lt!238721 mask!3524) (Intermediate!4419 false (index!19881 lt!238717) (x!48896 lt!238717))))))

(declare-fun e!303948 () Bool)

(assert (=> b!520929 (=> (not res!318923) (not e!303948))))

(assert (=> b!520929 e!303948))

(declare-fun b!520930 () Bool)

(declare-fun Unit!16145 () Unit!16142)

(assert (=> b!520930 (= e!303951 Unit!16145)))

(declare-fun b!520931 () Bool)

(declare-fun res!318915 () Bool)

(assert (=> b!520931 (=> (not res!318915) (not e!303946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520931 (= res!318915 (validKeyInArray!0 k!2280))))

(declare-fun b!520932 () Bool)

(declare-fun res!318924 () Bool)

(assert (=> b!520932 (=> (not res!318924) (not e!303946))))

(assert (=> b!520932 (= res!318924 (validKeyInArray!0 (select (arr!15945 a!3235) j!176)))))

(declare-fun b!520933 () Bool)

(declare-fun res!318918 () Bool)

(assert (=> b!520933 (=> (not res!318918) (not e!303949))))

(declare-datatypes ((List!10156 0))(
  ( (Nil!10153) (Cons!10152 (h!11074 (_ BitVec 64)) (t!16392 List!10156)) )
))
(declare-fun arrayNoDuplicates!0 (array!33184 (_ BitVec 32) List!10156) Bool)

(assert (=> b!520933 (= res!318918 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10153))))

(declare-fun b!520934 () Bool)

(assert (=> b!520934 (= e!303948 false)))

(declare-fun b!520926 () Bool)

(assert (=> b!520926 (= e!303949 (not e!303952))))

(declare-fun res!318921 () Bool)

(assert (=> b!520926 (=> res!318921 e!303952)))

(declare-fun lt!238720 () (_ BitVec 32))

(assert (=> b!520926 (= res!318921 (= lt!238717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238720 lt!238719 lt!238721 mask!3524)))))

(assert (=> b!520926 (= lt!238717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238718 (select (arr!15945 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520926 (= lt!238720 (toIndex!0 lt!238719 mask!3524))))

(assert (=> b!520926 (= lt!238719 (select (store (arr!15945 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520926 (= lt!238718 (toIndex!0 (select (arr!15945 a!3235) j!176) mask!3524))))

(assert (=> b!520926 (= lt!238721 (array!33185 (store (arr!15945 a!3235) i!1204 k!2280) (size!16309 a!3235)))))

(assert (=> b!520926 e!303947))

(declare-fun res!318919 () Bool)

(assert (=> b!520926 (=> (not res!318919) (not e!303947))))

(assert (=> b!520926 (= res!318919 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238713 () Unit!16142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33184 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16142)

(assert (=> b!520926 (= lt!238713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!318917 () Bool)

(assert (=> start!47398 (=> (not res!318917) (not e!303946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47398 (= res!318917 (validMask!0 mask!3524))))

(assert (=> start!47398 e!303946))

(assert (=> start!47398 true))

(declare-fun array_inv!11719 (array!33184) Bool)

(assert (=> start!47398 (array_inv!11719 a!3235)))

(assert (= (and start!47398 res!318917) b!520925))

(assert (= (and b!520925 res!318922) b!520932))

(assert (= (and b!520932 res!318924) b!520931))

(assert (= (and b!520931 res!318915) b!520923))

(assert (= (and b!520923 res!318916) b!520924))

(assert (= (and b!520924 res!318926) b!520922))

(assert (= (and b!520922 res!318920) b!520933))

(assert (= (and b!520933 res!318918) b!520926))

(assert (= (and b!520926 res!318919) b!520928))

(assert (= (and b!520926 (not res!318921)) b!520927))

(assert (= (and b!520927 (not res!318925)) b!520921))

(assert (= (and b!520921 c!61304) b!520929))

(assert (= (and b!520921 (not c!61304)) b!520930))

(assert (= (and b!520929 res!318923) b!520934))

(declare-fun m!501871 () Bool)

(assert (=> b!520923 m!501871))

(declare-fun m!501873 () Bool)

(assert (=> b!520931 m!501873))

(declare-fun m!501875 () Bool)

(assert (=> b!520929 m!501875))

(declare-fun m!501877 () Bool)

(assert (=> b!520929 m!501877))

(declare-fun m!501879 () Bool)

(assert (=> b!520932 m!501879))

(assert (=> b!520932 m!501879))

(declare-fun m!501881 () Bool)

(assert (=> b!520932 m!501881))

(declare-fun m!501883 () Bool)

(assert (=> b!520933 m!501883))

(declare-fun m!501885 () Bool)

(assert (=> b!520926 m!501885))

(declare-fun m!501887 () Bool)

(assert (=> b!520926 m!501887))

(declare-fun m!501889 () Bool)

(assert (=> b!520926 m!501889))

(assert (=> b!520926 m!501879))

(declare-fun m!501891 () Bool)

(assert (=> b!520926 m!501891))

(assert (=> b!520926 m!501879))

(declare-fun m!501893 () Bool)

(assert (=> b!520926 m!501893))

(declare-fun m!501895 () Bool)

(assert (=> b!520926 m!501895))

(declare-fun m!501897 () Bool)

(assert (=> b!520926 m!501897))

(assert (=> b!520926 m!501879))

(declare-fun m!501899 () Bool)

(assert (=> b!520926 m!501899))

(declare-fun m!501901 () Bool)

(assert (=> b!520922 m!501901))

(assert (=> b!520928 m!501879))

(assert (=> b!520928 m!501879))

(declare-fun m!501903 () Bool)

(assert (=> b!520928 m!501903))

(declare-fun m!501905 () Bool)

(assert (=> start!47398 m!501905))

(declare-fun m!501907 () Bool)

(assert (=> start!47398 m!501907))

(declare-fun m!501909 () Bool)

(assert (=> b!520921 m!501909))

(assert (=> b!520921 m!501879))

(declare-fun m!501911 () Bool)

(assert (=> b!520924 m!501911))

(push 1)

