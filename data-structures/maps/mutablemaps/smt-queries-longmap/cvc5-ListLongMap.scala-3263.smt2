; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45460 () Bool)

(assert start!45460)

(declare-fun b!499894 () Bool)

(declare-fun res!301921 () Bool)

(declare-fun e!292909 () Bool)

(assert (=> b!499894 (=> (not res!301921) (not e!292909))))

(declare-datatypes ((array!32245 0))(
  ( (array!32246 (arr!15501 (Array (_ BitVec 32) (_ BitVec 64))) (size!15865 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32245)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499894 (= res!301921 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499895 () Bool)

(declare-fun res!301926 () Bool)

(declare-fun e!292914 () Bool)

(assert (=> b!499895 (=> (not res!301926) (not e!292914))))

(declare-datatypes ((List!9712 0))(
  ( (Nil!9709) (Cons!9708 (h!10582 (_ BitVec 64)) (t!15948 List!9712)) )
))
(declare-fun arrayNoDuplicates!0 (array!32245 (_ BitVec 32) List!9712) Bool)

(assert (=> b!499895 (= res!301926 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9709))))

(declare-fun e!292911 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!499896 () Bool)

(declare-datatypes ((SeekEntryResult!3975 0))(
  ( (MissingZero!3975 (index!18082 (_ BitVec 32))) (Found!3975 (index!18083 (_ BitVec 32))) (Intermediate!3975 (undefined!4787 Bool) (index!18084 (_ BitVec 32)) (x!47151 (_ BitVec 32))) (Undefined!3975) (MissingVacant!3975 (index!18085 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32245 (_ BitVec 32)) SeekEntryResult!3975)

(assert (=> b!499896 (= e!292911 (= (seekEntryOrOpen!0 (select (arr!15501 a!3235) j!176) a!3235 mask!3524) (Found!3975 j!176)))))

(declare-fun b!499897 () Bool)

(assert (=> b!499897 (= e!292909 e!292914)))

(declare-fun res!301924 () Bool)

(assert (=> b!499897 (=> (not res!301924) (not e!292914))))

(declare-fun lt!226846 () SeekEntryResult!3975)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499897 (= res!301924 (or (= lt!226846 (MissingZero!3975 i!1204)) (= lt!226846 (MissingVacant!3975 i!1204))))))

(assert (=> b!499897 (= lt!226846 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499898 () Bool)

(declare-fun e!292913 () Bool)

(declare-fun e!292910 () Bool)

(assert (=> b!499898 (= e!292913 e!292910)))

(declare-fun res!301920 () Bool)

(assert (=> b!499898 (=> res!301920 e!292910)))

(declare-fun lt!226847 () (_ BitVec 32))

(declare-fun lt!226850 () SeekEntryResult!3975)

(assert (=> b!499898 (= res!301920 (or (bvsgt #b00000000000000000000000000000000 (x!47151 lt!226850)) (bvsgt (x!47151 lt!226850) #b01111111111111111111111111111110) (bvslt lt!226847 #b00000000000000000000000000000000) (bvsge lt!226847 (size!15865 a!3235)) (bvslt (index!18084 lt!226850) #b00000000000000000000000000000000) (bvsge (index!18084 lt!226850) (size!15865 a!3235)) (not (= lt!226850 (Intermediate!3975 false (index!18084 lt!226850) (x!47151 lt!226850))))))))

(assert (=> b!499898 (and (or (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14990 0))(
  ( (Unit!14991) )
))
(declare-fun lt!226841 () Unit!14990)

(declare-fun e!292912 () Unit!14990)

(assert (=> b!499898 (= lt!226841 e!292912)))

(declare-fun c!59264 () Bool)

(assert (=> b!499898 (= c!59264 (= (select (arr!15501 a!3235) (index!18084 lt!226850)) (select (arr!15501 a!3235) j!176)))))

(assert (=> b!499898 (and (bvslt (x!47151 lt!226850) #b01111111111111111111111111111110) (or (= (select (arr!15501 a!3235) (index!18084 lt!226850)) (select (arr!15501 a!3235) j!176)) (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15501 a!3235) (index!18084 lt!226850)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499899 () Bool)

(assert (=> b!499899 (= e!292910 true)))

(declare-fun lt!226844 () array!32245)

(declare-fun lt!226842 () (_ BitVec 64))

(declare-fun lt!226849 () SeekEntryResult!3975)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32245 (_ BitVec 32)) SeekEntryResult!3975)

(assert (=> b!499899 (= lt!226849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226847 lt!226842 lt!226844 mask!3524))))

(declare-fun b!499900 () Bool)

(declare-fun e!292908 () Bool)

(assert (=> b!499900 (= e!292908 false)))

(declare-fun b!499901 () Bool)

(declare-fun res!301925 () Bool)

(assert (=> b!499901 (=> (not res!301925) (not e!292914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32245 (_ BitVec 32)) Bool)

(assert (=> b!499901 (= res!301925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499902 () Bool)

(declare-fun res!301922 () Bool)

(assert (=> b!499902 (=> res!301922 e!292913)))

(assert (=> b!499902 (= res!301922 (or (undefined!4787 lt!226850) (not (is-Intermediate!3975 lt!226850))))))

(declare-fun b!499903 () Bool)

(declare-fun res!301923 () Bool)

(assert (=> b!499903 (=> (not res!301923) (not e!292909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499903 (= res!301923 (validKeyInArray!0 (select (arr!15501 a!3235) j!176)))))

(declare-fun b!499904 () Bool)

(declare-fun res!301931 () Bool)

(assert (=> b!499904 (=> (not res!301931) (not e!292909))))

(assert (=> b!499904 (= res!301931 (and (= (size!15865 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15865 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15865 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!301927 () Bool)

(assert (=> start!45460 (=> (not res!301927) (not e!292909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45460 (= res!301927 (validMask!0 mask!3524))))

(assert (=> start!45460 e!292909))

(assert (=> start!45460 true))

(declare-fun array_inv!11275 (array!32245) Bool)

(assert (=> start!45460 (array_inv!11275 a!3235)))

(declare-fun b!499893 () Bool)

(declare-fun Unit!14992 () Unit!14990)

(assert (=> b!499893 (= e!292912 Unit!14992)))

(declare-fun b!499905 () Bool)

(declare-fun Unit!14993 () Unit!14990)

(assert (=> b!499905 (= e!292912 Unit!14993)))

(declare-fun lt!226845 () Unit!14990)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32245 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14990)

(assert (=> b!499905 (= lt!226845 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226847 #b00000000000000000000000000000000 (index!18084 lt!226850) (x!47151 lt!226850) mask!3524))))

(declare-fun res!301930 () Bool)

(assert (=> b!499905 (= res!301930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226847 lt!226842 lt!226844 mask!3524) (Intermediate!3975 false (index!18084 lt!226850) (x!47151 lt!226850))))))

(assert (=> b!499905 (=> (not res!301930) (not e!292908))))

(assert (=> b!499905 e!292908))

(declare-fun b!499906 () Bool)

(assert (=> b!499906 (= e!292914 (not e!292913))))

(declare-fun res!301929 () Bool)

(assert (=> b!499906 (=> res!301929 e!292913)))

(declare-fun lt!226848 () (_ BitVec 32))

(assert (=> b!499906 (= res!301929 (= lt!226850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226848 lt!226842 lt!226844 mask!3524)))))

(assert (=> b!499906 (= lt!226850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226847 (select (arr!15501 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499906 (= lt!226848 (toIndex!0 lt!226842 mask!3524))))

(assert (=> b!499906 (= lt!226842 (select (store (arr!15501 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499906 (= lt!226847 (toIndex!0 (select (arr!15501 a!3235) j!176) mask!3524))))

(assert (=> b!499906 (= lt!226844 (array!32246 (store (arr!15501 a!3235) i!1204 k!2280) (size!15865 a!3235)))))

(assert (=> b!499906 e!292911))

(declare-fun res!301919 () Bool)

(assert (=> b!499906 (=> (not res!301919) (not e!292911))))

(assert (=> b!499906 (= res!301919 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226843 () Unit!14990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32245 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14990)

(assert (=> b!499906 (= lt!226843 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499907 () Bool)

(declare-fun res!301928 () Bool)

(assert (=> b!499907 (=> (not res!301928) (not e!292909))))

(assert (=> b!499907 (= res!301928 (validKeyInArray!0 k!2280))))

(assert (= (and start!45460 res!301927) b!499904))

(assert (= (and b!499904 res!301931) b!499903))

(assert (= (and b!499903 res!301923) b!499907))

(assert (= (and b!499907 res!301928) b!499894))

(assert (= (and b!499894 res!301921) b!499897))

(assert (= (and b!499897 res!301924) b!499901))

(assert (= (and b!499901 res!301925) b!499895))

(assert (= (and b!499895 res!301926) b!499906))

(assert (= (and b!499906 res!301919) b!499896))

(assert (= (and b!499906 (not res!301929)) b!499902))

(assert (= (and b!499902 (not res!301922)) b!499898))

(assert (= (and b!499898 c!59264) b!499905))

(assert (= (and b!499898 (not c!59264)) b!499893))

(assert (= (and b!499905 res!301930) b!499900))

(assert (= (and b!499898 (not res!301920)) b!499899))

(declare-fun m!481087 () Bool)

(assert (=> start!45460 m!481087))

(declare-fun m!481089 () Bool)

(assert (=> start!45460 m!481089))

(declare-fun m!481091 () Bool)

(assert (=> b!499905 m!481091))

(declare-fun m!481093 () Bool)

(assert (=> b!499905 m!481093))

(declare-fun m!481095 () Bool)

(assert (=> b!499901 m!481095))

(declare-fun m!481097 () Bool)

(assert (=> b!499898 m!481097))

(declare-fun m!481099 () Bool)

(assert (=> b!499898 m!481099))

(assert (=> b!499906 m!481099))

(declare-fun m!481101 () Bool)

(assert (=> b!499906 m!481101))

(declare-fun m!481103 () Bool)

(assert (=> b!499906 m!481103))

(declare-fun m!481105 () Bool)

(assert (=> b!499906 m!481105))

(declare-fun m!481107 () Bool)

(assert (=> b!499906 m!481107))

(declare-fun m!481109 () Bool)

(assert (=> b!499906 m!481109))

(assert (=> b!499906 m!481099))

(declare-fun m!481111 () Bool)

(assert (=> b!499906 m!481111))

(assert (=> b!499906 m!481099))

(declare-fun m!481113 () Bool)

(assert (=> b!499906 m!481113))

(declare-fun m!481115 () Bool)

(assert (=> b!499906 m!481115))

(declare-fun m!481117 () Bool)

(assert (=> b!499907 m!481117))

(assert (=> b!499896 m!481099))

(assert (=> b!499896 m!481099))

(declare-fun m!481119 () Bool)

(assert (=> b!499896 m!481119))

(declare-fun m!481121 () Bool)

(assert (=> b!499897 m!481121))

(assert (=> b!499903 m!481099))

(assert (=> b!499903 m!481099))

(declare-fun m!481123 () Bool)

(assert (=> b!499903 m!481123))

(assert (=> b!499899 m!481093))

(declare-fun m!481125 () Bool)

(assert (=> b!499894 m!481125))

(declare-fun m!481127 () Bool)

(assert (=> b!499895 m!481127))

(push 1)

