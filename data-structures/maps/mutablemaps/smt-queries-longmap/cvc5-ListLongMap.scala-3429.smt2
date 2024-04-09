; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47704 () Bool)

(assert start!47704)

(declare-fun b!524170 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33301 0))(
  ( (array!33302 (arr!15999 (Array (_ BitVec 32) (_ BitVec 64))) (size!16363 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33301)

(declare-fun e!305714 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4473 0))(
  ( (MissingZero!4473 (index!20104 (_ BitVec 32))) (Found!4473 (index!20105 (_ BitVec 32))) (Intermediate!4473 (undefined!5285 Bool) (index!20106 (_ BitVec 32)) (x!49121 (_ BitVec 32))) (Undefined!4473) (MissingVacant!4473 (index!20107 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33301 (_ BitVec 32)) SeekEntryResult!4473)

(assert (=> b!524170 (= e!305714 (= (seekEntryOrOpen!0 (select (arr!15999 a!3235) j!176) a!3235 mask!3524) (Found!4473 j!176)))))

(declare-fun b!524171 () Bool)

(declare-fun e!305710 () Bool)

(declare-fun e!305713 () Bool)

(assert (=> b!524171 (= e!305710 e!305713)))

(declare-fun res!321239 () Bool)

(assert (=> b!524171 (=> (not res!321239) (not e!305713))))

(declare-fun lt!240607 () SeekEntryResult!4473)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524171 (= res!321239 (or (= lt!240607 (MissingZero!4473 i!1204)) (= lt!240607 (MissingVacant!4473 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!524171 (= lt!240607 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524172 () Bool)

(declare-fun res!321240 () Bool)

(assert (=> b!524172 (=> (not res!321240) (not e!305713))))

(declare-datatypes ((List!10210 0))(
  ( (Nil!10207) (Cons!10206 (h!11137 (_ BitVec 64)) (t!16446 List!10210)) )
))
(declare-fun arrayNoDuplicates!0 (array!33301 (_ BitVec 32) List!10210) Bool)

(assert (=> b!524172 (= res!321240 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10207))))

(declare-fun b!524173 () Bool)

(declare-datatypes ((Unit!16358 0))(
  ( (Unit!16359) )
))
(declare-fun e!305715 () Unit!16358)

(declare-fun Unit!16360 () Unit!16358)

(assert (=> b!524173 (= e!305715 Unit!16360)))

(declare-fun b!524174 () Bool)

(declare-fun res!321246 () Bool)

(assert (=> b!524174 (=> (not res!321246) (not e!305710))))

(assert (=> b!524174 (= res!321246 (and (= (size!16363 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16363 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16363 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524175 () Bool)

(declare-fun e!305712 () Bool)

(assert (=> b!524175 (= e!305712 true)))

(declare-fun lt!240605 () SeekEntryResult!4473)

(assert (=> b!524175 (and (or (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240603 () Unit!16358)

(assert (=> b!524175 (= lt!240603 e!305715)))

(declare-fun c!61772 () Bool)

(assert (=> b!524175 (= c!61772 (= (select (arr!15999 a!3235) (index!20106 lt!240605)) (select (arr!15999 a!3235) j!176)))))

(assert (=> b!524175 (and (bvslt (x!49121 lt!240605) #b01111111111111111111111111111110) (or (= (select (arr!15999 a!3235) (index!20106 lt!240605)) (select (arr!15999 a!3235) j!176)) (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15999 a!3235) (index!20106 lt!240605)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!321244 () Bool)

(assert (=> start!47704 (=> (not res!321244) (not e!305710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47704 (= res!321244 (validMask!0 mask!3524))))

(assert (=> start!47704 e!305710))

(assert (=> start!47704 true))

(declare-fun array_inv!11773 (array!33301) Bool)

(assert (=> start!47704 (array_inv!11773 a!3235)))

(declare-fun b!524176 () Bool)

(declare-fun res!321247 () Bool)

(assert (=> b!524176 (=> (not res!321247) (not e!305710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524176 (= res!321247 (validKeyInArray!0 (select (arr!15999 a!3235) j!176)))))

(declare-fun b!524177 () Bool)

(declare-fun res!321248 () Bool)

(assert (=> b!524177 (=> (not res!321248) (not e!305710))))

(declare-fun arrayContainsKey!0 (array!33301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524177 (= res!321248 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524178 () Bool)

(declare-fun res!321243 () Bool)

(assert (=> b!524178 (=> (not res!321243) (not e!305710))))

(assert (=> b!524178 (= res!321243 (validKeyInArray!0 k!2280))))

(declare-fun b!524179 () Bool)

(declare-fun e!305716 () Bool)

(assert (=> b!524179 (= e!305716 false)))

(declare-fun b!524180 () Bool)

(declare-fun Unit!16361 () Unit!16358)

(assert (=> b!524180 (= e!305715 Unit!16361)))

(declare-fun lt!240608 () (_ BitVec 32))

(declare-fun lt!240609 () Unit!16358)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16358)

(assert (=> b!524180 (= lt!240609 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240608 #b00000000000000000000000000000000 (index!20106 lt!240605) (x!49121 lt!240605) mask!3524))))

(declare-fun res!321241 () Bool)

(declare-fun lt!240604 () (_ BitVec 64))

(declare-fun lt!240611 () array!33301)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33301 (_ BitVec 32)) SeekEntryResult!4473)

(assert (=> b!524180 (= res!321241 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240608 lt!240604 lt!240611 mask!3524) (Intermediate!4473 false (index!20106 lt!240605) (x!49121 lt!240605))))))

(assert (=> b!524180 (=> (not res!321241) (not e!305716))))

(assert (=> b!524180 e!305716))

(declare-fun b!524181 () Bool)

(assert (=> b!524181 (= e!305713 (not e!305712))))

(declare-fun res!321237 () Bool)

(assert (=> b!524181 (=> res!321237 e!305712)))

(declare-fun lt!240610 () (_ BitVec 32))

(assert (=> b!524181 (= res!321237 (= lt!240605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240610 lt!240604 lt!240611 mask!3524)))))

(assert (=> b!524181 (= lt!240605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240608 (select (arr!15999 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524181 (= lt!240610 (toIndex!0 lt!240604 mask!3524))))

(assert (=> b!524181 (= lt!240604 (select (store (arr!15999 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524181 (= lt!240608 (toIndex!0 (select (arr!15999 a!3235) j!176) mask!3524))))

(assert (=> b!524181 (= lt!240611 (array!33302 (store (arr!15999 a!3235) i!1204 k!2280) (size!16363 a!3235)))))

(assert (=> b!524181 e!305714))

(declare-fun res!321242 () Bool)

(assert (=> b!524181 (=> (not res!321242) (not e!305714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33301 (_ BitVec 32)) Bool)

(assert (=> b!524181 (= res!321242 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240606 () Unit!16358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16358)

(assert (=> b!524181 (= lt!240606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524182 () Bool)

(declare-fun res!321245 () Bool)

(assert (=> b!524182 (=> res!321245 e!305712)))

(assert (=> b!524182 (= res!321245 (or (undefined!5285 lt!240605) (not (is-Intermediate!4473 lt!240605))))))

(declare-fun b!524183 () Bool)

(declare-fun res!321238 () Bool)

(assert (=> b!524183 (=> (not res!321238) (not e!305713))))

(assert (=> b!524183 (= res!321238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47704 res!321244) b!524174))

(assert (= (and b!524174 res!321246) b!524176))

(assert (= (and b!524176 res!321247) b!524178))

(assert (= (and b!524178 res!321243) b!524177))

(assert (= (and b!524177 res!321248) b!524171))

(assert (= (and b!524171 res!321239) b!524183))

(assert (= (and b!524183 res!321238) b!524172))

(assert (= (and b!524172 res!321240) b!524181))

(assert (= (and b!524181 res!321242) b!524170))

(assert (= (and b!524181 (not res!321237)) b!524182))

(assert (= (and b!524182 (not res!321245)) b!524175))

(assert (= (and b!524175 c!61772) b!524180))

(assert (= (and b!524175 (not c!61772)) b!524173))

(assert (= (and b!524180 res!321241) b!524179))

(declare-fun m!504841 () Bool)

(assert (=> b!524181 m!504841))

(declare-fun m!504843 () Bool)

(assert (=> b!524181 m!504843))

(declare-fun m!504845 () Bool)

(assert (=> b!524181 m!504845))

(declare-fun m!504847 () Bool)

(assert (=> b!524181 m!504847))

(declare-fun m!504849 () Bool)

(assert (=> b!524181 m!504849))

(declare-fun m!504851 () Bool)

(assert (=> b!524181 m!504851))

(assert (=> b!524181 m!504849))

(declare-fun m!504853 () Bool)

(assert (=> b!524181 m!504853))

(assert (=> b!524181 m!504849))

(declare-fun m!504855 () Bool)

(assert (=> b!524181 m!504855))

(declare-fun m!504857 () Bool)

(assert (=> b!524181 m!504857))

(declare-fun m!504859 () Bool)

(assert (=> b!524177 m!504859))

(assert (=> b!524176 m!504849))

(assert (=> b!524176 m!504849))

(declare-fun m!504861 () Bool)

(assert (=> b!524176 m!504861))

(declare-fun m!504863 () Bool)

(assert (=> b!524172 m!504863))

(declare-fun m!504865 () Bool)

(assert (=> start!47704 m!504865))

(declare-fun m!504867 () Bool)

(assert (=> start!47704 m!504867))

(assert (=> b!524170 m!504849))

(assert (=> b!524170 m!504849))

(declare-fun m!504869 () Bool)

(assert (=> b!524170 m!504869))

(declare-fun m!504871 () Bool)

(assert (=> b!524178 m!504871))

(declare-fun m!504873 () Bool)

(assert (=> b!524183 m!504873))

(declare-fun m!504875 () Bool)

(assert (=> b!524180 m!504875))

(declare-fun m!504877 () Bool)

(assert (=> b!524180 m!504877))

(declare-fun m!504879 () Bool)

(assert (=> b!524175 m!504879))

(assert (=> b!524175 m!504849))

(declare-fun m!504881 () Bool)

(assert (=> b!524171 m!504881))

(push 1)

