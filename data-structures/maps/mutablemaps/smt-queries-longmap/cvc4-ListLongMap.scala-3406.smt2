; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47240 () Bool)

(assert start!47240)

(declare-fun b!519722 () Bool)

(declare-fun e!303254 () Bool)

(declare-fun e!303253 () Bool)

(assert (=> b!519722 (= e!303254 e!303253)))

(declare-fun res!318200 () Bool)

(assert (=> b!519722 (=> (not res!318200) (not e!303253))))

(declare-datatypes ((SeekEntryResult!4406 0))(
  ( (MissingZero!4406 (index!19821 (_ BitVec 32))) (Found!4406 (index!19822 (_ BitVec 32))) (Intermediate!4406 (undefined!5218 Bool) (index!19823 (_ BitVec 32)) (x!48825 (_ BitVec 32))) (Undefined!4406) (MissingVacant!4406 (index!19824 (_ BitVec 32))) )
))
(declare-fun lt!238075 () SeekEntryResult!4406)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!519722 (= res!318200 (or (= lt!238075 (MissingZero!4406 i!1204)) (= lt!238075 (MissingVacant!4406 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33152 0))(
  ( (array!33153 (arr!15932 (Array (_ BitVec 32) (_ BitVec 64))) (size!16296 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33152)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33152 (_ BitVec 32)) SeekEntryResult!4406)

(assert (=> b!519722 (= lt!238075 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!519723 () Bool)

(declare-fun res!318196 () Bool)

(assert (=> b!519723 (=> (not res!318196) (not e!303254))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519723 (= res!318196 (validKeyInArray!0 k!2280))))

(declare-fun b!519724 () Bool)

(declare-fun res!318195 () Bool)

(assert (=> b!519724 (=> (not res!318195) (not e!303253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33152 (_ BitVec 32)) Bool)

(assert (=> b!519724 (= res!318195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519725 () Bool)

(declare-fun e!303259 () Bool)

(assert (=> b!519725 (= e!303253 (not e!303259))))

(declare-fun res!318198 () Bool)

(assert (=> b!519725 (=> res!318198 e!303259)))

(declare-fun lt!238077 () SeekEntryResult!4406)

(declare-fun lt!238076 () array!33152)

(declare-fun lt!238078 () (_ BitVec 32))

(declare-fun lt!238081 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33152 (_ BitVec 32)) SeekEntryResult!4406)

(assert (=> b!519725 (= res!318198 (= lt!238077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238078 lt!238081 lt!238076 mask!3524)))))

(declare-fun lt!238082 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!519725 (= lt!238077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238082 (select (arr!15932 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519725 (= lt!238078 (toIndex!0 lt!238081 mask!3524))))

(assert (=> b!519725 (= lt!238081 (select (store (arr!15932 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519725 (= lt!238082 (toIndex!0 (select (arr!15932 a!3235) j!176) mask!3524))))

(assert (=> b!519725 (= lt!238076 (array!33153 (store (arr!15932 a!3235) i!1204 k!2280) (size!16296 a!3235)))))

(declare-fun e!303258 () Bool)

(assert (=> b!519725 e!303258))

(declare-fun res!318205 () Bool)

(assert (=> b!519725 (=> (not res!318205) (not e!303258))))

(assert (=> b!519725 (= res!318205 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16090 0))(
  ( (Unit!16091) )
))
(declare-fun lt!238080 () Unit!16090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16090)

(assert (=> b!519725 (= lt!238080 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519726 () Bool)

(declare-fun res!318197 () Bool)

(assert (=> b!519726 (=> res!318197 e!303259)))

(assert (=> b!519726 (= res!318197 (or (undefined!5218 lt!238077) (not (is-Intermediate!4406 lt!238077))))))

(declare-fun b!519727 () Bool)

(declare-fun e!303257 () Unit!16090)

(declare-fun Unit!16092 () Unit!16090)

(assert (=> b!519727 (= e!303257 Unit!16092)))

(declare-fun lt!238079 () Unit!16090)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33152 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16090)

(assert (=> b!519727 (= lt!238079 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238082 #b00000000000000000000000000000000 (index!19823 lt!238077) (x!48825 lt!238077) mask!3524))))

(declare-fun res!318203 () Bool)

(assert (=> b!519727 (= res!318203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238082 lt!238081 lt!238076 mask!3524) (Intermediate!4406 false (index!19823 lt!238077) (x!48825 lt!238077))))))

(declare-fun e!303255 () Bool)

(assert (=> b!519727 (=> (not res!318203) (not e!303255))))

(assert (=> b!519727 e!303255))

(declare-fun b!519728 () Bool)

(assert (=> b!519728 (= e!303259 (not (= (select (arr!15932 a!3235) (index!19823 lt!238077)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!519728 (or (= (select (arr!15932 a!3235) (index!19823 lt!238077)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15932 a!3235) (index!19823 lt!238077)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238074 () Unit!16090)

(assert (=> b!519728 (= lt!238074 e!303257)))

(declare-fun c!61061 () Bool)

(assert (=> b!519728 (= c!61061 (= (select (arr!15932 a!3235) (index!19823 lt!238077)) (select (arr!15932 a!3235) j!176)))))

(assert (=> b!519728 (and (bvslt (x!48825 lt!238077) #b01111111111111111111111111111110) (or (= (select (arr!15932 a!3235) (index!19823 lt!238077)) (select (arr!15932 a!3235) j!176)) (= (select (arr!15932 a!3235) (index!19823 lt!238077)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15932 a!3235) (index!19823 lt!238077)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519729 () Bool)

(assert (=> b!519729 (= e!303255 false)))

(declare-fun b!519730 () Bool)

(declare-fun res!318202 () Bool)

(assert (=> b!519730 (=> (not res!318202) (not e!303254))))

(declare-fun arrayContainsKey!0 (array!33152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519730 (= res!318202 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519721 () Bool)

(declare-fun res!318204 () Bool)

(assert (=> b!519721 (=> (not res!318204) (not e!303253))))

(declare-datatypes ((List!10143 0))(
  ( (Nil!10140) (Cons!10139 (h!11055 (_ BitVec 64)) (t!16379 List!10143)) )
))
(declare-fun arrayNoDuplicates!0 (array!33152 (_ BitVec 32) List!10143) Bool)

(assert (=> b!519721 (= res!318204 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10140))))

(declare-fun res!318206 () Bool)

(assert (=> start!47240 (=> (not res!318206) (not e!303254))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47240 (= res!318206 (validMask!0 mask!3524))))

(assert (=> start!47240 e!303254))

(assert (=> start!47240 true))

(declare-fun array_inv!11706 (array!33152) Bool)

(assert (=> start!47240 (array_inv!11706 a!3235)))

(declare-fun b!519731 () Bool)

(declare-fun res!318201 () Bool)

(assert (=> b!519731 (=> (not res!318201) (not e!303254))))

(assert (=> b!519731 (= res!318201 (validKeyInArray!0 (select (arr!15932 a!3235) j!176)))))

(declare-fun b!519732 () Bool)

(declare-fun res!318199 () Bool)

(assert (=> b!519732 (=> (not res!318199) (not e!303254))))

(assert (=> b!519732 (= res!318199 (and (= (size!16296 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16296 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16296 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519733 () Bool)

(assert (=> b!519733 (= e!303258 (= (seekEntryOrOpen!0 (select (arr!15932 a!3235) j!176) a!3235 mask!3524) (Found!4406 j!176)))))

(declare-fun b!519734 () Bool)

(declare-fun Unit!16093 () Unit!16090)

(assert (=> b!519734 (= e!303257 Unit!16093)))

(assert (= (and start!47240 res!318206) b!519732))

(assert (= (and b!519732 res!318199) b!519731))

(assert (= (and b!519731 res!318201) b!519723))

(assert (= (and b!519723 res!318196) b!519730))

(assert (= (and b!519730 res!318202) b!519722))

(assert (= (and b!519722 res!318200) b!519724))

(assert (= (and b!519724 res!318195) b!519721))

(assert (= (and b!519721 res!318204) b!519725))

(assert (= (and b!519725 res!318205) b!519733))

(assert (= (and b!519725 (not res!318198)) b!519726))

(assert (= (and b!519726 (not res!318197)) b!519728))

(assert (= (and b!519728 c!61061) b!519727))

(assert (= (and b!519728 (not c!61061)) b!519734))

(assert (= (and b!519727 res!318203) b!519729))

(declare-fun m!500857 () Bool)

(assert (=> b!519727 m!500857))

(declare-fun m!500859 () Bool)

(assert (=> b!519727 m!500859))

(declare-fun m!500861 () Bool)

(assert (=> start!47240 m!500861))

(declare-fun m!500863 () Bool)

(assert (=> start!47240 m!500863))

(declare-fun m!500865 () Bool)

(assert (=> b!519722 m!500865))

(declare-fun m!500867 () Bool)

(assert (=> b!519730 m!500867))

(declare-fun m!500869 () Bool)

(assert (=> b!519723 m!500869))

(declare-fun m!500871 () Bool)

(assert (=> b!519724 m!500871))

(declare-fun m!500873 () Bool)

(assert (=> b!519721 m!500873))

(declare-fun m!500875 () Bool)

(assert (=> b!519725 m!500875))

(declare-fun m!500877 () Bool)

(assert (=> b!519725 m!500877))

(declare-fun m!500879 () Bool)

(assert (=> b!519725 m!500879))

(declare-fun m!500881 () Bool)

(assert (=> b!519725 m!500881))

(declare-fun m!500883 () Bool)

(assert (=> b!519725 m!500883))

(assert (=> b!519725 m!500881))

(declare-fun m!500885 () Bool)

(assert (=> b!519725 m!500885))

(declare-fun m!500887 () Bool)

(assert (=> b!519725 m!500887))

(assert (=> b!519725 m!500881))

(declare-fun m!500889 () Bool)

(assert (=> b!519725 m!500889))

(declare-fun m!500891 () Bool)

(assert (=> b!519725 m!500891))

(assert (=> b!519731 m!500881))

(assert (=> b!519731 m!500881))

(declare-fun m!500893 () Bool)

(assert (=> b!519731 m!500893))

(assert (=> b!519733 m!500881))

(assert (=> b!519733 m!500881))

(declare-fun m!500895 () Bool)

(assert (=> b!519733 m!500895))

(declare-fun m!500897 () Bool)

(assert (=> b!519728 m!500897))

(assert (=> b!519728 m!500881))

(push 1)

(assert (not b!519725))

(assert (not b!519724))

(assert (not start!47240))

(assert (not b!519721))

(assert (not b!519723))

(assert (not b!519727))

(assert (not b!519730))

(assert (not b!519722))

(assert (not b!519731))

(assert (not b!519733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80061 () Bool)

(declare-fun lt!238124 () SeekEntryResult!4406)

(assert (=> d!80061 (and (or (is-Undefined!4406 lt!238124) (not (is-Found!4406 lt!238124)) (and (bvsge (index!19822 lt!238124) #b00000000000000000000000000000000) (bvslt (index!19822 lt!238124) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238124) (is-Found!4406 lt!238124) (not (is-MissingZero!4406 lt!238124)) (and (bvsge (index!19821 lt!238124) #b00000000000000000000000000000000) (bvslt (index!19821 lt!238124) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238124) (is-Found!4406 lt!238124) (is-MissingZero!4406 lt!238124) (not (is-MissingVacant!4406 lt!238124)) (and (bvsge (index!19824 lt!238124) #b00000000000000000000000000000000) (bvslt (index!19824 lt!238124) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238124) (ite (is-Found!4406 lt!238124) (= (select (arr!15932 a!3235) (index!19822 lt!238124)) (select (arr!15932 a!3235) j!176)) (ite (is-MissingZero!4406 lt!238124) (= (select (arr!15932 a!3235) (index!19821 lt!238124)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4406 lt!238124) (= (select (arr!15932 a!3235) (index!19824 lt!238124)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303331 () SeekEntryResult!4406)

(assert (=> d!80061 (= lt!238124 e!303331)))

(declare-fun c!61095 () Bool)

(declare-fun lt!238125 () SeekEntryResult!4406)

(assert (=> d!80061 (= c!61095 (and (is-Intermediate!4406 lt!238125) (undefined!5218 lt!238125)))))

(assert (=> d!80061 (= lt!238125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15932 a!3235) j!176) mask!3524) (select (arr!15932 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80061 (validMask!0 mask!3524)))

(assert (=> d!80061 (= (seekEntryOrOpen!0 (select (arr!15932 a!3235) j!176) a!3235 mask!3524) lt!238124)))

(declare-fun b!519843 () Bool)

(declare-fun c!61097 () Bool)

(declare-fun lt!238123 () (_ BitVec 64))

(assert (=> b!519843 (= c!61097 (= lt!238123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303332 () SeekEntryResult!4406)

(declare-fun e!303333 () SeekEntryResult!4406)

(assert (=> b!519843 (= e!303332 e!303333)))

(declare-fun b!519844 () Bool)

(assert (=> b!519844 (= e!303333 (MissingZero!4406 (index!19823 lt!238125)))))

(declare-fun b!519845 () Bool)

(assert (=> b!519845 (= e!303332 (Found!4406 (index!19823 lt!238125)))))

(declare-fun b!519846 () Bool)

(assert (=> b!519846 (= e!303331 e!303332)))

(assert (=> b!519846 (= lt!238123 (select (arr!15932 a!3235) (index!19823 lt!238125)))))

(declare-fun c!61096 () Bool)

(assert (=> b!519846 (= c!61096 (= lt!238123 (select (arr!15932 a!3235) j!176)))))

(declare-fun b!519847 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33152 (_ BitVec 32)) SeekEntryResult!4406)

(assert (=> b!519847 (= e!303333 (seekKeyOrZeroReturnVacant!0 (x!48825 lt!238125) (index!19823 lt!238125) (index!19823 lt!238125) (select (arr!15932 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!519848 () Bool)

(assert (=> b!519848 (= e!303331 Undefined!4406)))

(assert (= (and d!80061 c!61095) b!519848))

(assert (= (and d!80061 (not c!61095)) b!519846))

(assert (= (and b!519846 c!61096) b!519845))

(assert (= (and b!519846 (not c!61096)) b!519843))

(assert (= (and b!519843 c!61097) b!519844))

(assert (= (and b!519843 (not c!61097)) b!519847))

(assert (=> d!80061 m!500883))

(assert (=> d!80061 m!500881))

(declare-fun m!500941 () Bool)

(assert (=> d!80061 m!500941))

(assert (=> d!80061 m!500881))

(assert (=> d!80061 m!500883))

(declare-fun m!500943 () Bool)

(assert (=> d!80061 m!500943))

(declare-fun m!500945 () Bool)

(assert (=> d!80061 m!500945))

(declare-fun m!500947 () Bool)

(assert (=> d!80061 m!500947))

(assert (=> d!80061 m!500861))

(declare-fun m!500949 () Bool)

(assert (=> b!519846 m!500949))

(assert (=> b!519847 m!500881))

(declare-fun m!500951 () Bool)

(assert (=> b!519847 m!500951))

(assert (=> b!519733 d!80061))

(declare-fun d!80075 () Bool)

(assert (=> d!80075 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47240 d!80075))

(declare-fun d!80085 () Bool)

(assert (=> d!80085 (= (array_inv!11706 a!3235) (bvsge (size!16296 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47240 d!80085))

(declare-fun d!80087 () Bool)

(declare-fun lt!238136 () SeekEntryResult!4406)

(assert (=> d!80087 (and (or (is-Undefined!4406 lt!238136) (not (is-Found!4406 lt!238136)) (and (bvsge (index!19822 lt!238136) #b00000000000000000000000000000000) (bvslt (index!19822 lt!238136) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238136) (is-Found!4406 lt!238136) (not (is-MissingZero!4406 lt!238136)) (and (bvsge (index!19821 lt!238136) #b00000000000000000000000000000000) (bvslt (index!19821 lt!238136) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238136) (is-Found!4406 lt!238136) (is-MissingZero!4406 lt!238136) (not (is-MissingVacant!4406 lt!238136)) (and (bvsge (index!19824 lt!238136) #b00000000000000000000000000000000) (bvslt (index!19824 lt!238136) (size!16296 a!3235)))) (or (is-Undefined!4406 lt!238136) (ite (is-Found!4406 lt!238136) (= (select (arr!15932 a!3235) (index!19822 lt!238136)) k!2280) (ite (is-MissingZero!4406 lt!238136) (= (select (arr!15932 a!3235) (index!19821 lt!238136)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4406 lt!238136) (= (select (arr!15932 a!3235) (index!19824 lt!238136)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!303337 () SeekEntryResult!4406)

(assert (=> d!80087 (= lt!238136 e!303337)))

(declare-fun c!61101 () Bool)

(declare-fun lt!238137 () SeekEntryResult!4406)

(assert (=> d!80087 (= c!61101 (and (is-Intermediate!4406 lt!238137) (undefined!5218 lt!238137)))))

(assert (=> d!80087 (= lt!238137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80087 (validMask!0 mask!3524)))

(assert (=> d!80087 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!238136)))

(declare-fun b!519855 () Bool)

(declare-fun c!61103 () Bool)

(declare-fun lt!238135 () (_ BitVec 64))

(assert (=> b!519855 (= c!61103 (= lt!238135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303338 () SeekEntryResult!4406)

(declare-fun e!303339 () SeekEntryResult!4406)

(assert (=> b!519855 (= e!303338 e!303339)))

(declare-fun b!519856 () Bool)

(assert (=> b!519856 (= e!303339 (MissingZero!4406 (index!19823 lt!238137)))))

(declare-fun b!519857 () Bool)

(assert (=> b!519857 (= e!303338 (Found!4406 (index!19823 lt!238137)))))

(declare-fun b!519858 () Bool)

(assert (=> b!519858 (= e!303337 e!303338)))

(assert (=> b!519858 (= lt!238135 (select (arr!15932 a!3235) (index!19823 lt!238137)))))

(declare-fun c!61102 () Bool)

(assert (=> b!519858 (= c!61102 (= lt!238135 k!2280))))

(declare-fun b!519859 () Bool)

(assert (=> b!519859 (= e!303339 (seekKeyOrZeroReturnVacant!0 (x!48825 lt!238137) (index!19823 lt!238137) (index!19823 lt!238137) k!2280 a!3235 mask!3524))))

(declare-fun b!519860 () Bool)

(assert (=> b!519860 (= e!303337 Undefined!4406)))

(assert (= (and d!80087 c!61101) b!519860))

(assert (= (and d!80087 (not c!61101)) b!519858))

(assert (= (and b!519858 c!61102) b!519857))

(assert (= (and b!519858 (not c!61102)) b!519855))

(assert (= (and b!519855 c!61103) b!519856))

(assert (= (and b!519855 (not c!61103)) b!519859))

(declare-fun m!500965 () Bool)

(assert (=> d!80087 m!500965))

(declare-fun m!500967 () Bool)

(assert (=> d!80087 m!500967))

(assert (=> d!80087 m!500965))

(declare-fun m!500969 () Bool)

(assert (=> d!80087 m!500969))

(declare-fun m!500971 () Bool)

(assert (=> d!80087 m!500971))

(declare-fun m!500973 () Bool)

(assert (=> d!80087 m!500973))

(assert (=> d!80087 m!500861))

(declare-fun m!500975 () Bool)

(assert (=> b!519858 m!500975))

(declare-fun m!500977 () Bool)

(assert (=> b!519859 m!500977))

(assert (=> b!519722 d!80087))

(declare-fun d!80089 () Bool)

(assert (=> d!80089 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519723 d!80089))

(declare-fun b!519883 () Bool)

(declare-fun e!303357 () Bool)

(declare-fun e!303358 () Bool)

(assert (=> b!519883 (= e!303357 e!303358)))

(declare-fun c!61109 () Bool)

(assert (=> b!519883 (= c!61109 (validKeyInArray!0 (select (arr!15932 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519884 () Bool)

(declare-fun e!303359 () Bool)

(declare-fun contains!2765 (List!10143 (_ BitVec 64)) Bool)

(assert (=> b!519884 (= e!303359 (contains!2765 Nil!10140 (select (arr!15932 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519885 () Bool)

(declare-fun call!31775 () Bool)

(assert (=> b!519885 (= e!303358 call!31775)))

(declare-fun b!519886 () Bool)

(declare-fun e!303356 () Bool)

(assert (=> b!519886 (= e!303356 e!303357)))

(declare-fun res!318265 () Bool)

(assert (=> b!519886 (=> (not res!318265) (not e!303357))))

(assert (=> b!519886 (= res!318265 (not e!303359))))

(declare-fun res!318264 () Bool)

(assert (=> b!519886 (=> (not res!318264) (not e!303359))))

(assert (=> b!519886 (= res!318264 (validKeyInArray!0 (select (arr!15932 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519887 () Bool)

(assert (=> b!519887 (= e!303358 call!31775)))

(declare-fun d!80091 () Bool)

(declare-fun res!318263 () Bool)

(assert (=> d!80091 (=> res!318263 e!303356)))

(assert (=> d!80091 (= res!318263 (bvsge #b00000000000000000000000000000000 (size!16296 a!3235)))))

(assert (=> d!80091 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10140) e!303356)))

(declare-fun bm!31772 () Bool)

(assert (=> bm!31772 (= call!31775 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61109 (Cons!10139 (select (arr!15932 a!3235) #b00000000000000000000000000000000) Nil!10140) Nil!10140)))))

(assert (= (and d!80091 (not res!318263)) b!519886))

(assert (= (and b!519886 res!318264) b!519884))

(assert (= (and b!519886 res!318265) b!519883))

(assert (= (and b!519883 c!61109) b!519887))

(assert (= (and b!519883 (not c!61109)) b!519885))

(assert (= (or b!519887 b!519885) bm!31772))

(declare-fun m!500989 () Bool)

(assert (=> b!519883 m!500989))

(assert (=> b!519883 m!500989))

(declare-fun m!500991 () Bool)

(assert (=> b!519883 m!500991))

(assert (=> b!519884 m!500989))

(assert (=> b!519884 m!500989))

(declare-fun m!500993 () Bool)

(assert (=> b!519884 m!500993))

(assert (=> b!519886 m!500989))

(assert (=> b!519886 m!500989))

(assert (=> b!519886 m!500991))

(assert (=> bm!31772 m!500989))

(declare-fun m!500995 () Bool)

(assert (=> bm!31772 m!500995))

(assert (=> b!519721 d!80091))

(declare-fun d!80097 () Bool)

(declare-fun e!303377 () Bool)

(assert (=> d!80097 e!303377))

(declare-fun res!318277 () Bool)

(assert (=> d!80097 (=> (not res!318277) (not e!303377))))

(assert (=> d!80097 (= res!318277 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16296 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16296 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16296 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16296 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16296 a!3235))))))

(declare-fun lt!238151 () Unit!16090)

(declare-fun choose!47 (array!33152 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16090)

(assert (=> d!80097 (= lt!238151 (choose!47 a!3235 i!1204 k!2280 j!176 lt!238082 #b00000000000000000000000000000000 (index!19823 lt!238077) (x!48825 lt!238077) mask!3524))))

(assert (=> d!80097 (validMask!0 mask!3524)))

(assert (=> d!80097 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238082 #b00000000000000000000000000000000 (index!19823 lt!238077) (x!48825 lt!238077) mask!3524) lt!238151)))

(declare-fun b!519917 () Bool)

(assert (=> b!519917 (= e!303377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238082 (select (store (arr!15932 a!3235) i!1204 k!2280) j!176) (array!33153 (store (arr!15932 a!3235) i!1204 k!2280) (size!16296 a!3235)) mask!3524) (Intermediate!4406 false (index!19823 lt!238077) (x!48825 lt!238077))))))

(assert (= (and d!80097 res!318277) b!519917))

(declare-fun m!501005 () Bool)

(assert (=> d!80097 m!501005))

(assert (=> d!80097 m!500861))

(assert (=> b!519917 m!500875))

(assert (=> b!519917 m!500891))

(assert (=> b!519917 m!500891))

(declare-fun m!501007 () Bool)

(assert (=> b!519917 m!501007))

(assert (=> b!519727 d!80097))

(declare-fun b!520001 () Bool)

(declare-fun lt!238194 () SeekEntryResult!4406)

(assert (=> b!520001 (and (bvsge (index!19823 lt!238194) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238194) (size!16296 lt!238076)))))

(declare-fun e!303433 () Bool)

(assert (=> b!520001 (= e!303433 (= (select (arr!15932 lt!238076) (index!19823 lt!238194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520002 () Bool)

(declare-fun e!303431 () SeekEntryResult!4406)

(declare-fun e!303430 () SeekEntryResult!4406)

(assert (=> b!520002 (= e!303431 e!303430)))

(declare-fun c!61149 () Bool)

(declare-fun lt!238193 () (_ BitVec 64))

(assert (=> b!520002 (= c!61149 (or (= lt!238193 lt!238081) (= (bvadd lt!238193 lt!238193) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80101 () Bool)

(declare-fun e!303429 () Bool)

(assert (=> d!80101 e!303429))

(declare-fun c!61148 () Bool)

(assert (=> d!80101 (= c!61148 (and (is-Intermediate!4406 lt!238194) (undefined!5218 lt!238194)))))

(assert (=> d!80101 (= lt!238194 e!303431)))

(declare-fun c!61150 () Bool)

(assert (=> d!80101 (= c!61150 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80101 (= lt!238193 (select (arr!15932 lt!238076) lt!238082))))

(assert (=> d!80101 (validMask!0 mask!3524)))

(assert (=> d!80101 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238082 lt!238081 lt!238076 mask!3524) lt!238194)))

(declare-fun b!520003 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520003 (= e!303430 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238082 #b00000000000000000000000000000000 mask!3524) lt!238081 lt!238076 mask!3524))))

(declare-fun b!520004 () Bool)

(assert (=> b!520004 (= e!303430 (Intermediate!4406 false lt!238082 #b00000000000000000000000000000000))))

(declare-fun b!520005 () Bool)

(assert (=> b!520005 (= e!303429 (bvsge (x!48825 lt!238194) #b01111111111111111111111111111110))))

(declare-fun b!520006 () Bool)

(assert (=> b!520006 (= e!303431 (Intermediate!4406 true lt!238082 #b00000000000000000000000000000000))))

(declare-fun b!520007 () Bool)

(assert (=> b!520007 (and (bvsge (index!19823 lt!238194) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238194) (size!16296 lt!238076)))))

(declare-fun res!318303 () Bool)

(assert (=> b!520007 (= res!318303 (= (select (arr!15932 lt!238076) (index!19823 lt!238194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520007 (=> res!318303 e!303433)))

(declare-fun b!520008 () Bool)

(assert (=> b!520008 (and (bvsge (index!19823 lt!238194) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238194) (size!16296 lt!238076)))))

(declare-fun res!318305 () Bool)

(assert (=> b!520008 (= res!318305 (= (select (arr!15932 lt!238076) (index!19823 lt!238194)) lt!238081))))

(assert (=> b!520008 (=> res!318305 e!303433)))

(declare-fun e!303432 () Bool)

(assert (=> b!520008 (= e!303432 e!303433)))

(declare-fun b!520009 () Bool)

(assert (=> b!520009 (= e!303429 e!303432)))

(declare-fun res!318304 () Bool)

(assert (=> b!520009 (= res!318304 (and (is-Intermediate!4406 lt!238194) (not (undefined!5218 lt!238194)) (bvslt (x!48825 lt!238194) #b01111111111111111111111111111110) (bvsge (x!48825 lt!238194) #b00000000000000000000000000000000) (bvsge (x!48825 lt!238194) #b00000000000000000000000000000000)))))

(assert (=> b!520009 (=> (not res!318304) (not e!303432))))

(assert (= (and d!80101 c!61150) b!520006))

(assert (= (and d!80101 (not c!61150)) b!520002))

(assert (= (and b!520002 c!61149) b!520004))

(assert (= (and b!520002 (not c!61149)) b!520003))

(assert (= (and d!80101 c!61148) b!520005))

(assert (= (and d!80101 (not c!61148)) b!520009))

(assert (= (and b!520009 res!318304) b!520008))

(assert (= (and b!520008 (not res!318305)) b!520007))

(assert (= (and b!520007 (not res!318303)) b!520001))

(declare-fun m!501083 () Bool)

(assert (=> d!80101 m!501083))

(assert (=> d!80101 m!500861))

(declare-fun m!501085 () Bool)

(assert (=> b!520008 m!501085))

(assert (=> b!520007 m!501085))

(declare-fun m!501087 () Bool)

(assert (=> b!520003 m!501087))

(assert (=> b!520003 m!501087))

(declare-fun m!501089 () Bool)

(assert (=> b!520003 m!501089))

(assert (=> b!520001 m!501085))

(assert (=> b!519727 d!80101))

(declare-fun d!80127 () Bool)

(declare-fun lt!238200 () (_ BitVec 32))

(declare-fun lt!238199 () (_ BitVec 32))

(assert (=> d!80127 (= lt!238200 (bvmul (bvxor lt!238199 (bvlshr lt!238199 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80127 (= lt!238199 ((_ extract 31 0) (bvand (bvxor (select (arr!15932 a!3235) j!176) (bvlshr (select (arr!15932 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80127 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318306 (let ((h!11058 ((_ extract 31 0) (bvand (bvxor (select (arr!15932 a!3235) j!176) (bvlshr (select (arr!15932 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48833 (bvmul (bvxor h!11058 (bvlshr h!11058 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48833 (bvlshr x!48833 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318306 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318306 #b00000000000000000000000000000000))))))

(assert (=> d!80127 (= (toIndex!0 (select (arr!15932 a!3235) j!176) mask!3524) (bvand (bvxor lt!238200 (bvlshr lt!238200 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519725 d!80127))

(declare-fun b!520010 () Bool)

(declare-fun lt!238202 () SeekEntryResult!4406)

(assert (=> b!520010 (and (bvsge (index!19823 lt!238202) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238202) (size!16296 lt!238076)))))

(declare-fun e!303438 () Bool)

(assert (=> b!520010 (= e!303438 (= (select (arr!15932 lt!238076) (index!19823 lt!238202)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520011 () Bool)

(declare-fun e!303436 () SeekEntryResult!4406)

(declare-fun e!303435 () SeekEntryResult!4406)

(assert (=> b!520011 (= e!303436 e!303435)))

(declare-fun c!61152 () Bool)

(declare-fun lt!238201 () (_ BitVec 64))

(assert (=> b!520011 (= c!61152 (or (= lt!238201 lt!238081) (= (bvadd lt!238201 lt!238201) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80129 () Bool)

(declare-fun e!303434 () Bool)

(assert (=> d!80129 e!303434))

(declare-fun c!61151 () Bool)

(assert (=> d!80129 (= c!61151 (and (is-Intermediate!4406 lt!238202) (undefined!5218 lt!238202)))))

(assert (=> d!80129 (= lt!238202 e!303436)))

(declare-fun c!61153 () Bool)

(assert (=> d!80129 (= c!61153 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80129 (= lt!238201 (select (arr!15932 lt!238076) lt!238078))))

(assert (=> d!80129 (validMask!0 mask!3524)))

(assert (=> d!80129 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238078 lt!238081 lt!238076 mask!3524) lt!238202)))

(declare-fun b!520012 () Bool)

(assert (=> b!520012 (= e!303435 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238078 #b00000000000000000000000000000000 mask!3524) lt!238081 lt!238076 mask!3524))))

(declare-fun b!520013 () Bool)

(assert (=> b!520013 (= e!303435 (Intermediate!4406 false lt!238078 #b00000000000000000000000000000000))))

(declare-fun b!520014 () Bool)

(assert (=> b!520014 (= e!303434 (bvsge (x!48825 lt!238202) #b01111111111111111111111111111110))))

(declare-fun b!520015 () Bool)

(assert (=> b!520015 (= e!303436 (Intermediate!4406 true lt!238078 #b00000000000000000000000000000000))))

(declare-fun b!520016 () Bool)

(assert (=> b!520016 (and (bvsge (index!19823 lt!238202) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238202) (size!16296 lt!238076)))))

(declare-fun res!318307 () Bool)

(assert (=> b!520016 (= res!318307 (= (select (arr!15932 lt!238076) (index!19823 lt!238202)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520016 (=> res!318307 e!303438)))

(declare-fun b!520017 () Bool)

(assert (=> b!520017 (and (bvsge (index!19823 lt!238202) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238202) (size!16296 lt!238076)))))

(declare-fun res!318309 () Bool)

(assert (=> b!520017 (= res!318309 (= (select (arr!15932 lt!238076) (index!19823 lt!238202)) lt!238081))))

(assert (=> b!520017 (=> res!318309 e!303438)))

(declare-fun e!303437 () Bool)

(assert (=> b!520017 (= e!303437 e!303438)))

(declare-fun b!520018 () Bool)

(assert (=> b!520018 (= e!303434 e!303437)))

(declare-fun res!318308 () Bool)

(assert (=> b!520018 (= res!318308 (and (is-Intermediate!4406 lt!238202) (not (undefined!5218 lt!238202)) (bvslt (x!48825 lt!238202) #b01111111111111111111111111111110) (bvsge (x!48825 lt!238202) #b00000000000000000000000000000000) (bvsge (x!48825 lt!238202) #b00000000000000000000000000000000)))))

(assert (=> b!520018 (=> (not res!318308) (not e!303437))))

(assert (= (and d!80129 c!61153) b!520015))

(assert (= (and d!80129 (not c!61153)) b!520011))

(assert (= (and b!520011 c!61152) b!520013))

(assert (= (and b!520011 (not c!61152)) b!520012))

(assert (= (and d!80129 c!61151) b!520014))

(assert (= (and d!80129 (not c!61151)) b!520018))

(assert (= (and b!520018 res!318308) b!520017))

(assert (= (and b!520017 (not res!318309)) b!520016))

(assert (= (and b!520016 (not res!318307)) b!520010))

(declare-fun m!501091 () Bool)

(assert (=> d!80129 m!501091))

(assert (=> d!80129 m!500861))

(declare-fun m!501093 () Bool)

(assert (=> b!520017 m!501093))

(assert (=> b!520016 m!501093))

(declare-fun m!501095 () Bool)

(assert (=> b!520012 m!501095))

(assert (=> b!520012 m!501095))

(declare-fun m!501097 () Bool)

(assert (=> b!520012 m!501097))

(assert (=> b!520010 m!501093))

(assert (=> b!519725 d!80129))

(declare-fun d!80131 () Bool)

(assert (=> d!80131 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238205 () Unit!16090)

(declare-fun choose!38 (array!33152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16090)

(assert (=> d!80131 (= lt!238205 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80131 (validMask!0 mask!3524)))

(assert (=> d!80131 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238205)))

(declare-fun bs!16379 () Bool)

(assert (= bs!16379 d!80131))

(assert (=> bs!16379 m!500885))

(declare-fun m!501099 () Bool)

(assert (=> bs!16379 m!501099))

(assert (=> bs!16379 m!500861))

(assert (=> b!519725 d!80131))

(declare-fun d!80133 () Bool)

(declare-fun lt!238209 () (_ BitVec 32))

(declare-fun lt!238208 () (_ BitVec 32))

(assert (=> d!80133 (= lt!238209 (bvmul (bvxor lt!238208 (bvlshr lt!238208 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80133 (= lt!238208 ((_ extract 31 0) (bvand (bvxor lt!238081 (bvlshr lt!238081 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80133 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318306 (let ((h!11058 ((_ extract 31 0) (bvand (bvxor lt!238081 (bvlshr lt!238081 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48833 (bvmul (bvxor h!11058 (bvlshr h!11058 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48833 (bvlshr x!48833 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318306 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318306 #b00000000000000000000000000000000))))))

(assert (=> d!80133 (= (toIndex!0 lt!238081 mask!3524) (bvand (bvxor lt!238209 (bvlshr lt!238209 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519725 d!80133))

(declare-fun b!520021 () Bool)

(declare-fun lt!238211 () SeekEntryResult!4406)

(assert (=> b!520021 (and (bvsge (index!19823 lt!238211) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238211) (size!16296 a!3235)))))

(declare-fun e!303445 () Bool)

(assert (=> b!520021 (= e!303445 (= (select (arr!15932 a!3235) (index!19823 lt!238211)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520022 () Bool)

(declare-fun e!303443 () SeekEntryResult!4406)

(declare-fun e!303442 () SeekEntryResult!4406)

(assert (=> b!520022 (= e!303443 e!303442)))

(declare-fun lt!238210 () (_ BitVec 64))

(declare-fun c!61155 () Bool)

(assert (=> b!520022 (= c!61155 (or (= lt!238210 (select (arr!15932 a!3235) j!176)) (= (bvadd lt!238210 lt!238210) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!80135 () Bool)

(declare-fun e!303441 () Bool)

(assert (=> d!80135 e!303441))

(declare-fun c!61154 () Bool)

(assert (=> d!80135 (= c!61154 (and (is-Intermediate!4406 lt!238211) (undefined!5218 lt!238211)))))

(assert (=> d!80135 (= lt!238211 e!303443)))

(declare-fun c!61156 () Bool)

(assert (=> d!80135 (= c!61156 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80135 (= lt!238210 (select (arr!15932 a!3235) lt!238082))))

(assert (=> d!80135 (validMask!0 mask!3524)))

(assert (=> d!80135 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238082 (select (arr!15932 a!3235) j!176) a!3235 mask!3524) lt!238211)))

(declare-fun b!520023 () Bool)

(assert (=> b!520023 (= e!303442 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238082 #b00000000000000000000000000000000 mask!3524) (select (arr!15932 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!520024 () Bool)

(assert (=> b!520024 (= e!303442 (Intermediate!4406 false lt!238082 #b00000000000000000000000000000000))))

(declare-fun b!520025 () Bool)

(assert (=> b!520025 (= e!303441 (bvsge (x!48825 lt!238211) #b01111111111111111111111111111110))))

(declare-fun b!520026 () Bool)

(assert (=> b!520026 (= e!303443 (Intermediate!4406 true lt!238082 #b00000000000000000000000000000000))))

(declare-fun b!520027 () Bool)

(assert (=> b!520027 (and (bvsge (index!19823 lt!238211) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238211) (size!16296 a!3235)))))

(declare-fun res!318312 () Bool)

(assert (=> b!520027 (= res!318312 (= (select (arr!15932 a!3235) (index!19823 lt!238211)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520027 (=> res!318312 e!303445)))

(declare-fun b!520028 () Bool)

(assert (=> b!520028 (and (bvsge (index!19823 lt!238211) #b00000000000000000000000000000000) (bvslt (index!19823 lt!238211) (size!16296 a!3235)))))

(declare-fun res!318314 () Bool)

(assert (=> b!520028 (= res!318314 (= (select (arr!15932 a!3235) (index!19823 lt!238211)) (select (arr!15932 a!3235) j!176)))))

(assert (=> b!520028 (=> res!318314 e!303445)))

(declare-fun e!303444 () Bool)

(assert (=> b!520028 (= e!303444 e!303445)))

(declare-fun b!520029 () Bool)

(assert (=> b!520029 (= e!303441 e!303444)))

(declare-fun res!318313 () Bool)

(assert (=> b!520029 (= res!318313 (and (is-Intermediate!4406 lt!238211) (not (undefined!5218 lt!238211)) (bvslt (x!48825 lt!238211) #b01111111111111111111111111111110) (bvsge (x!48825 lt!238211) #b00000000000000000000000000000000) (bvsge (x!48825 lt!238211) #b00000000000000000000000000000000)))))

(assert (=> b!520029 (=> (not res!318313) (not e!303444))))

(assert (= (and d!80135 c!61156) b!520026))

(assert (= (and d!80135 (not c!61156)) b!520022))

(assert (= (and b!520022 c!61155) b!520024))

(assert (= (and b!520022 (not c!61155)) b!520023))

(assert (= (and d!80135 c!61154) b!520025))

(assert (= (and d!80135 (not c!61154)) b!520029))

(assert (= (and b!520029 res!318313) b!520028))

(assert (= (and b!520028 (not res!318314)) b!520027))

(assert (= (and b!520027 (not res!318312)) b!520021))

(declare-fun m!501101 () Bool)

(assert (=> d!80135 m!501101))

(assert (=> d!80135 m!500861))

(declare-fun m!501103 () Bool)

(assert (=> b!520028 m!501103))

(assert (=> b!520027 m!501103))

(assert (=> b!520023 m!501087))

(assert (=> b!520023 m!501087))

(assert (=> b!520023 m!500881))

(declare-fun m!501105 () Bool)

(assert (=> b!520023 m!501105))

(assert (=> b!520021 m!501103))

(assert (=> b!519725 d!80135))

(declare-fun b!520048 () Bool)

(declare-fun e!303459 () Bool)

(declare-fun call!31783 () Bool)

(assert (=> b!520048 (= e!303459 call!31783)))

(declare-fun b!520049 () Bool)

(declare-fun e!303460 () Bool)

(assert (=> b!520049 (= e!303460 call!31783)))

(declare-fun b!520050 () Bool)

(declare-fun e!303458 () Bool)

(assert (=> b!520050 (= e!303458 e!303460)))

(declare-fun c!61162 () Bool)

(assert (=> b!520050 (= c!61162 (validKeyInArray!0 (select (arr!15932 a!3235) j!176)))))

(declare-fun d!80137 () Bool)

(declare-fun res!318323 () Bool)

(assert (=> d!80137 (=> res!318323 e!303458)))

(assert (=> d!80137 (= res!318323 (bvsge j!176 (size!16296 a!3235)))))

(assert (=> d!80137 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303458)))

(declare-fun b!520051 () Bool)

(assert (=> b!520051 (= e!303460 e!303459)))

(declare-fun lt!238221 () (_ BitVec 64))

(assert (=> b!520051 (= lt!238221 (select (arr!15932 a!3235) j!176))))

(declare-fun lt!238222 () Unit!16090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33152 (_ BitVec 64) (_ BitVec 32)) Unit!16090)

(assert (=> b!520051 (= lt!238222 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238221 j!176))))

(assert (=> b!520051 (arrayContainsKey!0 a!3235 lt!238221 #b00000000000000000000000000000000)))

(declare-fun lt!238223 () Unit!16090)

(assert (=> b!520051 (= lt!238223 lt!238222)))

(declare-fun res!318324 () Bool)

(assert (=> b!520051 (= res!318324 (= (seekEntryOrOpen!0 (select (arr!15932 a!3235) j!176) a!3235 mask!3524) (Found!4406 j!176)))))

(assert (=> b!520051 (=> (not res!318324) (not e!303459))))

(declare-fun bm!31780 () Bool)

(assert (=> bm!31780 (= call!31783 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80137 (not res!318323)) b!520050))

(assert (= (and b!520050 c!61162) b!520051))

(assert (= (and b!520050 (not c!61162)) b!520049))

(assert (= (and b!520051 res!318324) b!520048))

(assert (= (or b!520048 b!520049) bm!31780))

(assert (=> b!520050 m!500881))

(assert (=> b!520050 m!500881))

(assert (=> b!520050 m!500893))

(assert (=> b!520051 m!500881))

(declare-fun m!501117 () Bool)

(assert (=> b!520051 m!501117))

(declare-fun m!501119 () Bool)

(assert (=> b!520051 m!501119))

(assert (=> b!520051 m!500881))

(assert (=> b!520051 m!500895))

(declare-fun m!501121 () Bool)

(assert (=> bm!31780 m!501121))

(assert (=> b!519725 d!80137))

(declare-fun d!80143 () Bool)

(declare-fun res!318329 () Bool)

(declare-fun e!303465 () Bool)

(assert (=> d!80143 (=> res!318329 e!303465)))

(assert (=> d!80143 (= res!318329 (= (select (arr!15932 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80143 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!303465)))

(declare-fun b!520056 () Bool)

(declare-fun e!303466 () Bool)

(assert (=> b!520056 (= e!303465 e!303466)))

(declare-fun res!318330 () Bool)

(assert (=> b!520056 (=> (not res!318330) (not e!303466))))

(assert (=> b!520056 (= res!318330 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16296 a!3235)))))

(declare-fun b!520057 () Bool)

(assert (=> b!520057 (= e!303466 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80143 (not res!318329)) b!520056))

(assert (= (and b!520056 res!318330) b!520057))

(assert (=> d!80143 m!500989))

(declare-fun m!501123 () Bool)

(assert (=> b!520057 m!501123))

(assert (=> b!519730 d!80143))

(declare-fun d!80145 () Bool)

(assert (=> d!80145 (= (validKeyInArray!0 (select (arr!15932 a!3235) j!176)) (and (not (= (select (arr!15932 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15932 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519731 d!80145))

(declare-fun b!520058 () Bool)

(declare-fun e!303468 () Bool)

(declare-fun call!31784 () Bool)

(assert (=> b!520058 (= e!303468 call!31784)))

(declare-fun b!520059 () Bool)

(declare-fun e!303469 () Bool)

(assert (=> b!520059 (= e!303469 call!31784)))

(declare-fun b!520060 () Bool)

(declare-fun e!303467 () Bool)

(assert (=> b!520060 (= e!303467 e!303469)))

(declare-fun c!61163 () Bool)

(assert (=> b!520060 (= c!61163 (validKeyInArray!0 (select (arr!15932 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80147 () Bool)

(declare-fun res!318331 () Bool)

(assert (=> d!80147 (=> res!318331 e!303467)))

(assert (=> d!80147 (= res!318331 (bvsge #b00000000000000000000000000000000 (size!16296 a!3235)))))

(assert (=> d!80147 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303467)))

(declare-fun b!520061 () Bool)

(assert (=> b!520061 (= e!303469 e!303468)))

(declare-fun lt!238224 () (_ BitVec 64))

(assert (=> b!520061 (= lt!238224 (select (arr!15932 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238225 () Unit!16090)

(assert (=> b!520061 (= lt!238225 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238224 #b00000000000000000000000000000000))))

(assert (=> b!520061 (arrayContainsKey!0 a!3235 lt!238224 #b00000000000000000000000000000000)))

(declare-fun lt!238226 () Unit!16090)

(assert (=> b!520061 (= lt!238226 lt!238225)))

(declare-fun res!318332 () Bool)

(assert (=> b!520061 (= res!318332 (= (seekEntryOrOpen!0 (select (arr!15932 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4406 #b00000000000000000000000000000000)))))

(assert (=> b!520061 (=> (not res!318332) (not e!303468))))

(declare-fun bm!31781 () Bool)

(assert (=> bm!31781 (= call!31784 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80147 (not res!318331)) b!520060))

(assert (= (and b!520060 c!61163) b!520061))

(assert (= (and b!520060 (not c!61163)) b!520059))

(assert (= (and b!520061 res!318332) b!520058))

(assert (= (or b!520058 b!520059) bm!31781))

(assert (=> b!520060 m!500989))

(assert (=> b!520060 m!500989))

(assert (=> b!520060 m!500991))

