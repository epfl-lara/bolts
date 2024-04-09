; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47554 () Bool)

(assert start!47554)

(declare-fun b!523138 () Bool)

(declare-fun e!305101 () Bool)

(declare-fun e!305107 () Bool)

(assert (=> b!523138 (= e!305101 e!305107)))

(declare-fun res!320663 () Bool)

(assert (=> b!523138 (=> (not res!320663) (not e!305107))))

(declare-datatypes ((SeekEntryResult!4464 0))(
  ( (MissingZero!4464 (index!20062 (_ BitVec 32))) (Found!4464 (index!20063 (_ BitVec 32))) (Intermediate!4464 (undefined!5276 Bool) (index!20064 (_ BitVec 32)) (x!49070 (_ BitVec 32))) (Undefined!4464) (MissingVacant!4464 (index!20065 (_ BitVec 32))) )
))
(declare-fun lt!240077 () SeekEntryResult!4464)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!523138 (= res!320663 (or (= lt!240077 (MissingZero!4464 i!1204)) (= lt!240077 (MissingVacant!4464 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33277 0))(
  ( (array!33278 (arr!15990 (Array (_ BitVec 32) (_ BitVec 64))) (size!16354 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33277)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33277 (_ BitVec 32)) SeekEntryResult!4464)

(assert (=> b!523138 (= lt!240077 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!523139 () Bool)

(declare-fun res!320670 () Bool)

(assert (=> b!523139 (=> (not res!320670) (not e!305101))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!523139 (= res!320670 (validKeyInArray!0 (select (arr!15990 a!3235) j!176)))))

(declare-fun b!523140 () Bool)

(declare-datatypes ((Unit!16322 0))(
  ( (Unit!16323) )
))
(declare-fun e!305106 () Unit!16322)

(declare-fun Unit!16324 () Unit!16322)

(assert (=> b!523140 (= e!305106 Unit!16324)))

(declare-fun b!523141 () Bool)

(declare-fun res!320662 () Bool)

(assert (=> b!523141 (=> (not res!320662) (not e!305107))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33277 (_ BitVec 32)) Bool)

(assert (=> b!523141 (= res!320662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!523142 () Bool)

(declare-fun res!320664 () Bool)

(assert (=> b!523142 (=> (not res!320664) (not e!305101))))

(declare-fun arrayContainsKey!0 (array!33277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!523142 (= res!320664 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!320666 () Bool)

(assert (=> start!47554 (=> (not res!320666) (not e!305101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47554 (= res!320666 (validMask!0 mask!3524))))

(assert (=> start!47554 e!305101))

(assert (=> start!47554 true))

(declare-fun array_inv!11764 (array!33277) Bool)

(assert (=> start!47554 (array_inv!11764 a!3235)))

(declare-fun b!523143 () Bool)

(declare-fun res!320661 () Bool)

(declare-fun e!305105 () Bool)

(assert (=> b!523143 (=> res!320661 e!305105)))

(declare-fun lt!240075 () SeekEntryResult!4464)

(assert (=> b!523143 (= res!320661 (or (undefined!5276 lt!240075) (not (is-Intermediate!4464 lt!240075))))))

(declare-fun b!523144 () Bool)

(declare-fun Unit!16325 () Unit!16322)

(assert (=> b!523144 (= e!305106 Unit!16325)))

(declare-fun lt!240073 () Unit!16322)

(declare-fun lt!240072 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16322)

(assert (=> b!523144 (= lt!240073 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240072 #b00000000000000000000000000000000 (index!20064 lt!240075) (x!49070 lt!240075) mask!3524))))

(declare-fun lt!240080 () array!33277)

(declare-fun lt!240078 () (_ BitVec 64))

(declare-fun res!320665 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33277 (_ BitVec 32)) SeekEntryResult!4464)

(assert (=> b!523144 (= res!320665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240072 lt!240078 lt!240080 mask!3524) (Intermediate!4464 false (index!20064 lt!240075) (x!49070 lt!240075))))))

(declare-fun e!305103 () Bool)

(assert (=> b!523144 (=> (not res!320665) (not e!305103))))

(assert (=> b!523144 e!305103))

(declare-fun e!305104 () Bool)

(declare-fun b!523145 () Bool)

(assert (=> b!523145 (= e!305104 (= (seekEntryOrOpen!0 (select (arr!15990 a!3235) j!176) a!3235 mask!3524) (Found!4464 j!176)))))

(declare-fun b!523146 () Bool)

(declare-fun res!320667 () Bool)

(assert (=> b!523146 (=> (not res!320667) (not e!305107))))

(declare-datatypes ((List!10201 0))(
  ( (Nil!10198) (Cons!10197 (h!11122 (_ BitVec 64)) (t!16437 List!10201)) )
))
(declare-fun arrayNoDuplicates!0 (array!33277 (_ BitVec 32) List!10201) Bool)

(assert (=> b!523146 (= res!320667 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10198))))

(declare-fun b!523147 () Bool)

(assert (=> b!523147 (= e!305107 (not e!305105))))

(declare-fun res!320671 () Bool)

(assert (=> b!523147 (=> res!320671 e!305105)))

(declare-fun lt!240076 () (_ BitVec 32))

(assert (=> b!523147 (= res!320671 (= lt!240075 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240076 lt!240078 lt!240080 mask!3524)))))

(assert (=> b!523147 (= lt!240075 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240072 (select (arr!15990 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523147 (= lt!240076 (toIndex!0 lt!240078 mask!3524))))

(assert (=> b!523147 (= lt!240078 (select (store (arr!15990 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!523147 (= lt!240072 (toIndex!0 (select (arr!15990 a!3235) j!176) mask!3524))))

(assert (=> b!523147 (= lt!240080 (array!33278 (store (arr!15990 a!3235) i!1204 k!2280) (size!16354 a!3235)))))

(assert (=> b!523147 e!305104))

(declare-fun res!320672 () Bool)

(assert (=> b!523147 (=> (not res!320672) (not e!305104))))

(assert (=> b!523147 (= res!320672 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240079 () Unit!16322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16322)

(assert (=> b!523147 (= lt!240079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!523148 () Bool)

(declare-fun res!320669 () Bool)

(assert (=> b!523148 (=> (not res!320669) (not e!305101))))

(assert (=> b!523148 (= res!320669 (validKeyInArray!0 k!2280))))

(declare-fun b!523149 () Bool)

(declare-fun res!320668 () Bool)

(assert (=> b!523149 (=> (not res!320668) (not e!305101))))

(assert (=> b!523149 (= res!320668 (and (= (size!16354 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16354 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16354 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!523150 () Bool)

(assert (=> b!523150 (= e!305105 (or (bvsgt #b00000000000000000000000000000000 (x!49070 lt!240075)) (bvsgt (x!49070 lt!240075) #b01111111111111111111111111111110) (and (bvsge lt!240072 #b00000000000000000000000000000000) (bvslt lt!240072 (size!16354 a!3235)))))))

(assert (=> b!523150 (and (or (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240074 () Unit!16322)

(assert (=> b!523150 (= lt!240074 e!305106)))

(declare-fun c!61541 () Bool)

(assert (=> b!523150 (= c!61541 (= (select (arr!15990 a!3235) (index!20064 lt!240075)) (select (arr!15990 a!3235) j!176)))))

(assert (=> b!523150 (and (bvslt (x!49070 lt!240075) #b01111111111111111111111111111110) (or (= (select (arr!15990 a!3235) (index!20064 lt!240075)) (select (arr!15990 a!3235) j!176)) (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15990 a!3235) (index!20064 lt!240075)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523151 () Bool)

(assert (=> b!523151 (= e!305103 false)))

(assert (= (and start!47554 res!320666) b!523149))

(assert (= (and b!523149 res!320668) b!523139))

(assert (= (and b!523139 res!320670) b!523148))

(assert (= (and b!523148 res!320669) b!523142))

(assert (= (and b!523142 res!320664) b!523138))

(assert (= (and b!523138 res!320663) b!523141))

(assert (= (and b!523141 res!320662) b!523146))

(assert (= (and b!523146 res!320667) b!523147))

(assert (= (and b!523147 res!320672) b!523145))

(assert (= (and b!523147 (not res!320671)) b!523143))

(assert (= (and b!523143 (not res!320661)) b!523150))

(assert (= (and b!523150 c!61541) b!523144))

(assert (= (and b!523150 (not c!61541)) b!523140))

(assert (= (and b!523144 res!320665) b!523151))

(declare-fun m!503995 () Bool)

(assert (=> b!523146 m!503995))

(declare-fun m!503997 () Bool)

(assert (=> b!523141 m!503997))

(declare-fun m!503999 () Bool)

(assert (=> b!523148 m!503999))

(declare-fun m!504001 () Bool)

(assert (=> b!523138 m!504001))

(declare-fun m!504003 () Bool)

(assert (=> b!523144 m!504003))

(declare-fun m!504005 () Bool)

(assert (=> b!523144 m!504005))

(declare-fun m!504007 () Bool)

(assert (=> b!523139 m!504007))

(assert (=> b!523139 m!504007))

(declare-fun m!504009 () Bool)

(assert (=> b!523139 m!504009))

(declare-fun m!504011 () Bool)

(assert (=> b!523147 m!504011))

(declare-fun m!504013 () Bool)

(assert (=> b!523147 m!504013))

(declare-fun m!504015 () Bool)

(assert (=> b!523147 m!504015))

(assert (=> b!523147 m!504007))

(declare-fun m!504017 () Bool)

(assert (=> b!523147 m!504017))

(assert (=> b!523147 m!504007))

(declare-fun m!504019 () Bool)

(assert (=> b!523147 m!504019))

(declare-fun m!504021 () Bool)

(assert (=> b!523147 m!504021))

(assert (=> b!523147 m!504007))

(declare-fun m!504023 () Bool)

(assert (=> b!523147 m!504023))

(declare-fun m!504025 () Bool)

(assert (=> b!523147 m!504025))

(declare-fun m!504027 () Bool)

(assert (=> start!47554 m!504027))

(declare-fun m!504029 () Bool)

(assert (=> start!47554 m!504029))

(assert (=> b!523145 m!504007))

(assert (=> b!523145 m!504007))

(declare-fun m!504031 () Bool)

(assert (=> b!523145 m!504031))

(declare-fun m!504033 () Bool)

(assert (=> b!523142 m!504033))

(declare-fun m!504035 () Bool)

(assert (=> b!523150 m!504035))

(assert (=> b!523150 m!504007))

(push 1)

(assert (not b!523139))

(assert (not b!523141))

(assert (not b!523145))

(assert (not b!523147))

(assert (not start!47554))

(assert (not b!523148))

(assert (not b!523146))

(assert (not b!523144))

(assert (not b!523142))

(assert (not b!523138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80413 () Bool)

(declare-fun lt!240178 () SeekEntryResult!4464)

(assert (=> d!80413 (and (or (is-Undefined!4464 lt!240178) (not (is-Found!4464 lt!240178)) (and (bvsge (index!20063 lt!240178) #b00000000000000000000000000000000) (bvslt (index!20063 lt!240178) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240178) (is-Found!4464 lt!240178) (not (is-MissingZero!4464 lt!240178)) (and (bvsge (index!20062 lt!240178) #b00000000000000000000000000000000) (bvslt (index!20062 lt!240178) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240178) (is-Found!4464 lt!240178) (is-MissingZero!4464 lt!240178) (not (is-MissingVacant!4464 lt!240178)) (and (bvsge (index!20065 lt!240178) #b00000000000000000000000000000000) (bvslt (index!20065 lt!240178) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240178) (ite (is-Found!4464 lt!240178) (= (select (arr!15990 a!3235) (index!20063 lt!240178)) (select (arr!15990 a!3235) j!176)) (ite (is-MissingZero!4464 lt!240178) (= (select (arr!15990 a!3235) (index!20062 lt!240178)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4464 lt!240178) (= (select (arr!15990 a!3235) (index!20065 lt!240178)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!305197 () SeekEntryResult!4464)

(assert (=> d!80413 (= lt!240178 e!305197)))

(declare-fun c!61581 () Bool)

(declare-fun lt!240176 () SeekEntryResult!4464)

(assert (=> d!80413 (= c!61581 (and (is-Intermediate!4464 lt!240176) (undefined!5276 lt!240176)))))

(assert (=> d!80413 (= lt!240176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15990 a!3235) j!176) mask!3524) (select (arr!15990 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80413 (validMask!0 mask!3524)))

(assert (=> d!80413 (= (seekEntryOrOpen!0 (select (arr!15990 a!3235) j!176) a!3235 mask!3524) lt!240178)))

(declare-fun b!523317 () Bool)

(declare-fun e!305195 () SeekEntryResult!4464)

(assert (=> b!523317 (= e!305195 (MissingZero!4464 (index!20064 lt!240176)))))

(declare-fun b!523318 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33277 (_ BitVec 32)) SeekEntryResult!4464)

(assert (=> b!523318 (= e!305195 (seekKeyOrZeroReturnVacant!0 (x!49070 lt!240176) (index!20064 lt!240176) (index!20064 lt!240176) (select (arr!15990 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!523319 () Bool)

(declare-fun c!61583 () Bool)

(declare-fun lt!240177 () (_ BitVec 64))

(assert (=> b!523319 (= c!61583 (= lt!240177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305196 () SeekEntryResult!4464)

(assert (=> b!523319 (= e!305196 e!305195)))

(declare-fun b!523320 () Bool)

(assert (=> b!523320 (= e!305196 (Found!4464 (index!20064 lt!240176)))))

(declare-fun b!523321 () Bool)

(assert (=> b!523321 (= e!305197 e!305196)))

(assert (=> b!523321 (= lt!240177 (select (arr!15990 a!3235) (index!20064 lt!240176)))))

(declare-fun c!61582 () Bool)

(assert (=> b!523321 (= c!61582 (= lt!240177 (select (arr!15990 a!3235) j!176)))))

(declare-fun b!523322 () Bool)

(assert (=> b!523322 (= e!305197 Undefined!4464)))

(assert (= (and d!80413 c!61581) b!523322))

(assert (= (and d!80413 (not c!61581)) b!523321))

(assert (= (and b!523321 c!61582) b!523320))

(assert (= (and b!523321 (not c!61582)) b!523319))

(assert (= (and b!523319 c!61583) b!523317))

(assert (= (and b!523319 (not c!61583)) b!523318))

(assert (=> d!80413 m!504027))

(assert (=> d!80413 m!504017))

(assert (=> d!80413 m!504007))

(declare-fun m!504161 () Bool)

(assert (=> d!80413 m!504161))

(declare-fun m!504163 () Bool)

(assert (=> d!80413 m!504163))

(declare-fun m!504165 () Bool)

(assert (=> d!80413 m!504165))

(assert (=> d!80413 m!504007))

(assert (=> d!80413 m!504017))

(declare-fun m!504167 () Bool)

(assert (=> d!80413 m!504167))

(assert (=> b!523318 m!504007))

(declare-fun m!504169 () Bool)

(assert (=> b!523318 m!504169))

(declare-fun m!504171 () Bool)

(assert (=> b!523321 m!504171))

(assert (=> b!523145 d!80413))

(declare-fun d!80419 () Bool)

(declare-fun lt!240181 () SeekEntryResult!4464)

(assert (=> d!80419 (and (or (is-Undefined!4464 lt!240181) (not (is-Found!4464 lt!240181)) (and (bvsge (index!20063 lt!240181) #b00000000000000000000000000000000) (bvslt (index!20063 lt!240181) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240181) (is-Found!4464 lt!240181) (not (is-MissingZero!4464 lt!240181)) (and (bvsge (index!20062 lt!240181) #b00000000000000000000000000000000) (bvslt (index!20062 lt!240181) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240181) (is-Found!4464 lt!240181) (is-MissingZero!4464 lt!240181) (not (is-MissingVacant!4464 lt!240181)) (and (bvsge (index!20065 lt!240181) #b00000000000000000000000000000000) (bvslt (index!20065 lt!240181) (size!16354 a!3235)))) (or (is-Undefined!4464 lt!240181) (ite (is-Found!4464 lt!240181) (= (select (arr!15990 a!3235) (index!20063 lt!240181)) k!2280) (ite (is-MissingZero!4464 lt!240181) (= (select (arr!15990 a!3235) (index!20062 lt!240181)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4464 lt!240181) (= (select (arr!15990 a!3235) (index!20065 lt!240181)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!305200 () SeekEntryResult!4464)

(assert (=> d!80419 (= lt!240181 e!305200)))

(declare-fun c!61584 () Bool)

(declare-fun lt!240179 () SeekEntryResult!4464)

(assert (=> d!80419 (= c!61584 (and (is-Intermediate!4464 lt!240179) (undefined!5276 lt!240179)))))

(assert (=> d!80419 (= lt!240179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80419 (validMask!0 mask!3524)))

(assert (=> d!80419 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!240181)))

(declare-fun b!523323 () Bool)

(declare-fun e!305198 () SeekEntryResult!4464)

(assert (=> b!523323 (= e!305198 (MissingZero!4464 (index!20064 lt!240179)))))

(declare-fun b!523324 () Bool)

(assert (=> b!523324 (= e!305198 (seekKeyOrZeroReturnVacant!0 (x!49070 lt!240179) (index!20064 lt!240179) (index!20064 lt!240179) k!2280 a!3235 mask!3524))))

(declare-fun b!523325 () Bool)

(declare-fun c!61586 () Bool)

(declare-fun lt!240180 () (_ BitVec 64))

(assert (=> b!523325 (= c!61586 (= lt!240180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305199 () SeekEntryResult!4464)

(assert (=> b!523325 (= e!305199 e!305198)))

(declare-fun b!523326 () Bool)

(assert (=> b!523326 (= e!305199 (Found!4464 (index!20064 lt!240179)))))

(declare-fun b!523327 () Bool)

(assert (=> b!523327 (= e!305200 e!305199)))

(assert (=> b!523327 (= lt!240180 (select (arr!15990 a!3235) (index!20064 lt!240179)))))

(declare-fun c!61585 () Bool)

(assert (=> b!523327 (= c!61585 (= lt!240180 k!2280))))

(declare-fun b!523328 () Bool)

(assert (=> b!523328 (= e!305200 Undefined!4464)))

(assert (= (and d!80419 c!61584) b!523328))

(assert (= (and d!80419 (not c!61584)) b!523327))

(assert (= (and b!523327 c!61585) b!523326))

(assert (= (and b!523327 (not c!61585)) b!523325))

(assert (= (and b!523325 c!61586) b!523323))

(assert (= (and b!523325 (not c!61586)) b!523324))

(assert (=> d!80419 m!504027))

(declare-fun m!504173 () Bool)

(assert (=> d!80419 m!504173))

(declare-fun m!504175 () Bool)

(assert (=> d!80419 m!504175))

(declare-fun m!504177 () Bool)

(assert (=> d!80419 m!504177))

(declare-fun m!504179 () Bool)

(assert (=> d!80419 m!504179))

(assert (=> d!80419 m!504173))

(declare-fun m!504181 () Bool)

(assert (=> d!80419 m!504181))

(declare-fun m!504183 () Bool)

(assert (=> b!523324 m!504183))

(declare-fun m!504185 () Bool)

(assert (=> b!523327 m!504185))

(assert (=> b!523138 d!80419))

(declare-fun d!80421 () Bool)

(assert (=> d!80421 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47554 d!80421))

(declare-fun d!80433 () Bool)

(assert (=> d!80433 (= (array_inv!11764 a!3235) (bvsge (size!16354 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47554 d!80433))

(declare-fun d!80435 () Bool)

(declare-fun e!305229 () Bool)

(assert (=> d!80435 e!305229))

(declare-fun res!320778 () Bool)

(assert (=> d!80435 (=> (not res!320778) (not e!305229))))

(assert (=> d!80435 (= res!320778 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16354 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16354 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16354 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16354 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16354 a!3235))))))

(declare-fun lt!240207 () Unit!16322)

(declare-fun choose!47 (array!33277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16322)

(assert (=> d!80435 (= lt!240207 (choose!47 a!3235 i!1204 k!2280 j!176 lt!240072 #b00000000000000000000000000000000 (index!20064 lt!240075) (x!49070 lt!240075) mask!3524))))

(assert (=> d!80435 (validMask!0 mask!3524)))

(assert (=> d!80435 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240072 #b00000000000000000000000000000000 (index!20064 lt!240075) (x!49070 lt!240075) mask!3524) lt!240207)))

(declare-fun b!523370 () Bool)

(assert (=> b!523370 (= e!305229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240072 (select (store (arr!15990 a!3235) i!1204 k!2280) j!176) (array!33278 (store (arr!15990 a!3235) i!1204 k!2280) (size!16354 a!3235)) mask!3524) (Intermediate!4464 false (index!20064 lt!240075) (x!49070 lt!240075))))))

(assert (= (and d!80435 res!320778) b!523370))

(declare-fun m!504225 () Bool)

(assert (=> d!80435 m!504225))

(assert (=> d!80435 m!504027))

(assert (=> b!523370 m!504011))

(assert (=> b!523370 m!504013))

(assert (=> b!523370 m!504013))

(declare-fun m!504227 () Bool)

(assert (=> b!523370 m!504227))

(assert (=> b!523144 d!80435))

(declare-fun b!523449 () Bool)

(declare-fun e!305290 () SeekEntryResult!4464)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!523449 (= e!305290 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240072 #b00000000000000000000000000000000 mask!3524) lt!240078 lt!240080 mask!3524))))

(declare-fun d!80445 () Bool)

(declare-fun e!305287 () Bool)

(assert (=> d!80445 e!305287))

(declare-fun c!61619 () Bool)

(declare-fun lt!240226 () SeekEntryResult!4464)

(assert (=> d!80445 (= c!61619 (and (is-Intermediate!4464 lt!240226) (undefined!5276 lt!240226)))))

(declare-fun e!305288 () SeekEntryResult!4464)

(assert (=> d!80445 (= lt!240226 e!305288)))

(declare-fun c!61618 () Bool)

(assert (=> d!80445 (= c!61618 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!240225 () (_ BitVec 64))

(assert (=> d!80445 (= lt!240225 (select (arr!15990 lt!240080) lt!240072))))

(assert (=> d!80445 (validMask!0 mask!3524)))

(assert (=> d!80445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240072 lt!240078 lt!240080 mask!3524) lt!240226)))

(declare-fun b!523450 () Bool)

(assert (=> b!523450 (and (bvsge (index!20064 lt!240226) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240226) (size!16354 lt!240080)))))

(declare-fun res!320821 () Bool)

(assert (=> b!523450 (= res!320821 (= (select (arr!15990 lt!240080) (index!20064 lt!240226)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305289 () Bool)

(assert (=> b!523450 (=> res!320821 e!305289)))

(declare-fun b!523451 () Bool)

(assert (=> b!523451 (and (bvsge (index!20064 lt!240226) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240226) (size!16354 lt!240080)))))

(assert (=> b!523451 (= e!305289 (= (select (arr!15990 lt!240080) (index!20064 lt!240226)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523452 () Bool)

(assert (=> b!523452 (= e!305288 (Intermediate!4464 true lt!240072 #b00000000000000000000000000000000))))

(declare-fun b!523453 () Bool)

(assert (=> b!523453 (= e!305287 (bvsge (x!49070 lt!240226) #b01111111111111111111111111111110))))

(declare-fun b!523454 () Bool)

(assert (=> b!523454 (= e!305288 e!305290)))

(declare-fun c!61620 () Bool)

(assert (=> b!523454 (= c!61620 (or (= lt!240225 lt!240078) (= (bvadd lt!240225 lt!240225) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523455 () Bool)

(assert (=> b!523455 (and (bvsge (index!20064 lt!240226) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240226) (size!16354 lt!240080)))))

(declare-fun res!320819 () Bool)

(assert (=> b!523455 (= res!320819 (= (select (arr!15990 lt!240080) (index!20064 lt!240226)) lt!240078))))

(assert (=> b!523455 (=> res!320819 e!305289)))

(declare-fun e!305286 () Bool)

(assert (=> b!523455 (= e!305286 e!305289)))

(declare-fun b!523456 () Bool)

(assert (=> b!523456 (= e!305287 e!305286)))

(declare-fun res!320820 () Bool)

(assert (=> b!523456 (= res!320820 (and (is-Intermediate!4464 lt!240226) (not (undefined!5276 lt!240226)) (bvslt (x!49070 lt!240226) #b01111111111111111111111111111110) (bvsge (x!49070 lt!240226) #b00000000000000000000000000000000) (bvsge (x!49070 lt!240226) #b00000000000000000000000000000000)))))

(assert (=> b!523456 (=> (not res!320820) (not e!305286))))

(declare-fun b!523457 () Bool)

(assert (=> b!523457 (= e!305290 (Intermediate!4464 false lt!240072 #b00000000000000000000000000000000))))

(assert (= (and d!80445 c!61618) b!523452))

(assert (= (and d!80445 (not c!61618)) b!523454))

(assert (= (and b!523454 c!61620) b!523457))

(assert (= (and b!523454 (not c!61620)) b!523449))

(assert (= (and d!80445 c!61619) b!523453))

(assert (= (and d!80445 (not c!61619)) b!523456))

(assert (= (and b!523456 res!320820) b!523455))

(assert (= (and b!523455 (not res!320819)) b!523450))

(assert (= (and b!523450 (not res!320821)) b!523451))

(declare-fun m!504273 () Bool)

(assert (=> b!523449 m!504273))

(assert (=> b!523449 m!504273))

(declare-fun m!504275 () Bool)

(assert (=> b!523449 m!504275))

(declare-fun m!504277 () Bool)

(assert (=> d!80445 m!504277))

(assert (=> d!80445 m!504027))

(declare-fun m!504281 () Bool)

(assert (=> b!523451 m!504281))

(assert (=> b!523450 m!504281))

(assert (=> b!523455 m!504281))

(assert (=> b!523144 d!80445))

(declare-fun d!80461 () Bool)

(assert (=> d!80461 (= (validKeyInArray!0 (select (arr!15990 a!3235) j!176)) (and (not (= (select (arr!15990 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15990 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523139 d!80461))

(declare-fun d!80465 () Bool)

(declare-fun res!320827 () Bool)

(declare-fun e!305296 () Bool)

(assert (=> d!80465 (=> res!320827 e!305296)))

(assert (=> d!80465 (= res!320827 (= (select (arr!15990 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80465 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!305296)))

(declare-fun b!523463 () Bool)

(declare-fun e!305297 () Bool)

(assert (=> b!523463 (= e!305296 e!305297)))

(declare-fun res!320828 () Bool)

(assert (=> b!523463 (=> (not res!320828) (not e!305297))))

(assert (=> b!523463 (= res!320828 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16354 a!3235)))))

(declare-fun b!523464 () Bool)

(assert (=> b!523464 (= e!305297 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80465 (not res!320827)) b!523463))

(assert (= (and b!523463 res!320828) b!523464))

(declare-fun m!504285 () Bool)

(assert (=> d!80465 m!504285))

(declare-fun m!504287 () Bool)

(assert (=> b!523464 m!504287))

(assert (=> b!523142 d!80465))

(declare-fun d!80467 () Bool)

(assert (=> d!80467 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!523148 d!80467))

(declare-fun b!523475 () Bool)

(declare-fun e!305306 () Bool)

(declare-fun e!305307 () Bool)

(assert (=> b!523475 (= e!305306 e!305307)))

(declare-fun res!320835 () Bool)

(assert (=> b!523475 (=> (not res!320835) (not e!305307))))

(declare-fun e!305308 () Bool)

(assert (=> b!523475 (= res!320835 (not e!305308))))

(declare-fun res!320836 () Bool)

(assert (=> b!523475 (=> (not res!320836) (not e!305308))))

(assert (=> b!523475 (= res!320836 (validKeyInArray!0 (select (arr!15990 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31839 () Bool)

(declare-fun call!31842 () Bool)

(declare-fun c!61623 () Bool)

(assert (=> bm!31839 (= call!31842 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61623 (Cons!10197 (select (arr!15990 a!3235) #b00000000000000000000000000000000) Nil!10198) Nil!10198)))))

(declare-fun b!523476 () Bool)

(declare-fun e!305309 () Bool)

(assert (=> b!523476 (= e!305309 call!31842)))

(declare-fun b!523477 () Bool)

(declare-fun contains!2774 (List!10201 (_ BitVec 64)) Bool)

(assert (=> b!523477 (= e!305308 (contains!2774 Nil!10198 (select (arr!15990 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523478 () Bool)

(assert (=> b!523478 (= e!305307 e!305309)))

(assert (=> b!523478 (= c!61623 (validKeyInArray!0 (select (arr!15990 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!523479 () Bool)

(assert (=> b!523479 (= e!305309 call!31842)))

(declare-fun d!80469 () Bool)

(declare-fun res!320837 () Bool)

(assert (=> d!80469 (=> res!320837 e!305306)))

(assert (=> d!80469 (= res!320837 (bvsge #b00000000000000000000000000000000 (size!16354 a!3235)))))

(assert (=> d!80469 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10198) e!305306)))

(assert (= (and d!80469 (not res!320837)) b!523475))

(assert (= (and b!523475 res!320836) b!523477))

(assert (= (and b!523475 res!320835) b!523478))

(assert (= (and b!523478 c!61623) b!523476))

(assert (= (and b!523478 (not c!61623)) b!523479))

(assert (= (or b!523476 b!523479) bm!31839))

(assert (=> b!523475 m!504285))

(assert (=> b!523475 m!504285))

(declare-fun m!504289 () Bool)

(assert (=> b!523475 m!504289))

(assert (=> bm!31839 m!504285))

(declare-fun m!504291 () Bool)

(assert (=> bm!31839 m!504291))

(assert (=> b!523477 m!504285))

(assert (=> b!523477 m!504285))

(declare-fun m!504293 () Bool)

(assert (=> b!523477 m!504293))

(assert (=> b!523478 m!504285))

(assert (=> b!523478 m!504285))

(assert (=> b!523478 m!504289))

(assert (=> b!523146 d!80469))

(declare-fun b!523524 () Bool)

(declare-fun e!305338 () Bool)

(declare-fun call!31845 () Bool)

(assert (=> b!523524 (= e!305338 call!31845)))

(declare-fun b!523525 () Bool)

(declare-fun e!305336 () Bool)

(assert (=> b!523525 (= e!305336 e!305338)))

(declare-fun lt!240244 () (_ BitVec 64))

(assert (=> b!523525 (= lt!240244 (select (arr!15990 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!240243 () Unit!16322)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33277 (_ BitVec 64) (_ BitVec 32)) Unit!16322)

(assert (=> b!523525 (= lt!240243 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240244 #b00000000000000000000000000000000))))

(assert (=> b!523525 (arrayContainsKey!0 a!3235 lt!240244 #b00000000000000000000000000000000)))

(declare-fun lt!240242 () Unit!16322)

(assert (=> b!523525 (= lt!240242 lt!240243)))

(declare-fun res!320855 () Bool)

(assert (=> b!523525 (= res!320855 (= (seekEntryOrOpen!0 (select (arr!15990 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4464 #b00000000000000000000000000000000)))))

(assert (=> b!523525 (=> (not res!320855) (not e!305338))))

(declare-fun b!523526 () Bool)

(declare-fun e!305337 () Bool)

(assert (=> b!523526 (= e!305337 e!305336)))

(declare-fun c!61638 () Bool)

(assert (=> b!523526 (= c!61638 (validKeyInArray!0 (select (arr!15990 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80471 () Bool)

(declare-fun res!320856 () Bool)

(assert (=> d!80471 (=> res!320856 e!305337)))

(assert (=> d!80471 (= res!320856 (bvsge #b00000000000000000000000000000000 (size!16354 a!3235)))))

(assert (=> d!80471 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!305337)))

(declare-fun bm!31842 () Bool)

(assert (=> bm!31842 (= call!31845 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523527 () Bool)

(assert (=> b!523527 (= e!305336 call!31845)))

(assert (= (and d!80471 (not res!320856)) b!523526))

(assert (= (and b!523526 c!61638) b!523525))

(assert (= (and b!523526 (not c!61638)) b!523527))

(assert (= (and b!523525 res!320855) b!523524))

(assert (= (or b!523524 b!523527) bm!31842))

(assert (=> b!523525 m!504285))

(declare-fun m!504309 () Bool)

(assert (=> b!523525 m!504309))

(declare-fun m!504311 () Bool)

(assert (=> b!523525 m!504311))

(assert (=> b!523525 m!504285))

(declare-fun m!504313 () Bool)

(assert (=> b!523525 m!504313))

(assert (=> b!523526 m!504285))

(assert (=> b!523526 m!504285))

(assert (=> b!523526 m!504289))

(declare-fun m!504315 () Bool)

(assert (=> bm!31842 m!504315))

(assert (=> b!523141 d!80471))

(declare-fun d!80477 () Bool)

(declare-fun lt!240261 () (_ BitVec 32))

(declare-fun lt!240260 () (_ BitVec 32))

(assert (=> d!80477 (= lt!240261 (bvmul (bvxor lt!240260 (bvlshr lt!240260 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80477 (= lt!240260 ((_ extract 31 0) (bvand (bvxor (select (arr!15990 a!3235) j!176) (bvlshr (select (arr!15990 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80477 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320857 (let ((h!11127 ((_ extract 31 0) (bvand (bvxor (select (arr!15990 a!3235) j!176) (bvlshr (select (arr!15990 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49081 (bvmul (bvxor h!11127 (bvlshr h!11127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49081 (bvlshr x!49081 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320857 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320857 #b00000000000000000000000000000000))))))

(assert (=> d!80477 (= (toIndex!0 (select (arr!15990 a!3235) j!176) mask!3524) (bvand (bvxor lt!240261 (bvlshr lt!240261 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523147 d!80477))

(declare-fun b!523541 () Bool)

(declare-fun e!305349 () Bool)

(declare-fun call!31847 () Bool)

(assert (=> b!523541 (= e!305349 call!31847)))

(declare-fun b!523542 () Bool)

(declare-fun e!305347 () Bool)

(assert (=> b!523542 (= e!305347 e!305349)))

(declare-fun lt!240266 () (_ BitVec 64))

(assert (=> b!523542 (= lt!240266 (select (arr!15990 a!3235) j!176))))

(declare-fun lt!240265 () Unit!16322)

(assert (=> b!523542 (= lt!240265 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!240266 j!176))))

(assert (=> b!523542 (arrayContainsKey!0 a!3235 lt!240266 #b00000000000000000000000000000000)))

(declare-fun lt!240264 () Unit!16322)

(assert (=> b!523542 (= lt!240264 lt!240265)))

(declare-fun res!320863 () Bool)

(assert (=> b!523542 (= res!320863 (= (seekEntryOrOpen!0 (select (arr!15990 a!3235) j!176) a!3235 mask!3524) (Found!4464 j!176)))))

(assert (=> b!523542 (=> (not res!320863) (not e!305349))))

(declare-fun b!523543 () Bool)

(declare-fun e!305348 () Bool)

(assert (=> b!523543 (= e!305348 e!305347)))

(declare-fun c!61643 () Bool)

(assert (=> b!523543 (= c!61643 (validKeyInArray!0 (select (arr!15990 a!3235) j!176)))))

(declare-fun d!80487 () Bool)

(declare-fun res!320864 () Bool)

(assert (=> d!80487 (=> res!320864 e!305348)))

(assert (=> d!80487 (= res!320864 (bvsge j!176 (size!16354 a!3235)))))

(assert (=> d!80487 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!305348)))

(declare-fun bm!31844 () Bool)

(assert (=> bm!31844 (= call!31847 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!523544 () Bool)

(assert (=> b!523544 (= e!305347 call!31847)))

(assert (= (and d!80487 (not res!320864)) b!523543))

(assert (= (and b!523543 c!61643) b!523542))

(assert (= (and b!523543 (not c!61643)) b!523544))

(assert (= (and b!523542 res!320863) b!523541))

(assert (= (or b!523541 b!523544) bm!31844))

(assert (=> b!523542 m!504007))

(declare-fun m!504331 () Bool)

(assert (=> b!523542 m!504331))

(declare-fun m!504333 () Bool)

(assert (=> b!523542 m!504333))

(assert (=> b!523542 m!504007))

(assert (=> b!523542 m!504031))

(assert (=> b!523543 m!504007))

(assert (=> b!523543 m!504007))

(assert (=> b!523543 m!504009))

(declare-fun m!504335 () Bool)

(assert (=> bm!31844 m!504335))

(assert (=> b!523147 d!80487))

(declare-fun e!305354 () SeekEntryResult!4464)

(declare-fun b!523545 () Bool)

(assert (=> b!523545 (= e!305354 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240076 #b00000000000000000000000000000000 mask!3524) lt!240078 lt!240080 mask!3524))))

(declare-fun d!80489 () Bool)

(declare-fun e!305351 () Bool)

(assert (=> d!80489 e!305351))

(declare-fun c!61645 () Bool)

(declare-fun lt!240268 () SeekEntryResult!4464)

(assert (=> d!80489 (= c!61645 (and (is-Intermediate!4464 lt!240268) (undefined!5276 lt!240268)))))

(declare-fun e!305352 () SeekEntryResult!4464)

(assert (=> d!80489 (= lt!240268 e!305352)))

(declare-fun c!61644 () Bool)

(assert (=> d!80489 (= c!61644 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!240267 () (_ BitVec 64))

(assert (=> d!80489 (= lt!240267 (select (arr!15990 lt!240080) lt!240076))))

(assert (=> d!80489 (validMask!0 mask!3524)))

(assert (=> d!80489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240076 lt!240078 lt!240080 mask!3524) lt!240268)))

(declare-fun b!523546 () Bool)

(assert (=> b!523546 (and (bvsge (index!20064 lt!240268) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240268) (size!16354 lt!240080)))))

(declare-fun res!320867 () Bool)

(assert (=> b!523546 (= res!320867 (= (select (arr!15990 lt!240080) (index!20064 lt!240268)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305353 () Bool)

(assert (=> b!523546 (=> res!320867 e!305353)))

(declare-fun b!523547 () Bool)

(assert (=> b!523547 (and (bvsge (index!20064 lt!240268) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240268) (size!16354 lt!240080)))))

(assert (=> b!523547 (= e!305353 (= (select (arr!15990 lt!240080) (index!20064 lt!240268)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523548 () Bool)

(assert (=> b!523548 (= e!305352 (Intermediate!4464 true lt!240076 #b00000000000000000000000000000000))))

(declare-fun b!523549 () Bool)

(assert (=> b!523549 (= e!305351 (bvsge (x!49070 lt!240268) #b01111111111111111111111111111110))))

(declare-fun b!523550 () Bool)

(assert (=> b!523550 (= e!305352 e!305354)))

(declare-fun c!61646 () Bool)

(assert (=> b!523550 (= c!61646 (or (= lt!240267 lt!240078) (= (bvadd lt!240267 lt!240267) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523551 () Bool)

(assert (=> b!523551 (and (bvsge (index!20064 lt!240268) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240268) (size!16354 lt!240080)))))

(declare-fun res!320865 () Bool)

(assert (=> b!523551 (= res!320865 (= (select (arr!15990 lt!240080) (index!20064 lt!240268)) lt!240078))))

(assert (=> b!523551 (=> res!320865 e!305353)))

(declare-fun e!305350 () Bool)

(assert (=> b!523551 (= e!305350 e!305353)))

(declare-fun b!523552 () Bool)

(assert (=> b!523552 (= e!305351 e!305350)))

(declare-fun res!320866 () Bool)

(assert (=> b!523552 (= res!320866 (and (is-Intermediate!4464 lt!240268) (not (undefined!5276 lt!240268)) (bvslt (x!49070 lt!240268) #b01111111111111111111111111111110) (bvsge (x!49070 lt!240268) #b00000000000000000000000000000000) (bvsge (x!49070 lt!240268) #b00000000000000000000000000000000)))))

(assert (=> b!523552 (=> (not res!320866) (not e!305350))))

(declare-fun b!523553 () Bool)

(assert (=> b!523553 (= e!305354 (Intermediate!4464 false lt!240076 #b00000000000000000000000000000000))))

(assert (= (and d!80489 c!61644) b!523548))

(assert (= (and d!80489 (not c!61644)) b!523550))

(assert (= (and b!523550 c!61646) b!523553))

(assert (= (and b!523550 (not c!61646)) b!523545))

(assert (= (and d!80489 c!61645) b!523549))

(assert (= (and d!80489 (not c!61645)) b!523552))

(assert (= (and b!523552 res!320866) b!523551))

(assert (= (and b!523551 (not res!320865)) b!523546))

(assert (= (and b!523546 (not res!320867)) b!523547))

(declare-fun m!504337 () Bool)

(assert (=> b!523545 m!504337))

(assert (=> b!523545 m!504337))

(declare-fun m!504339 () Bool)

(assert (=> b!523545 m!504339))

(declare-fun m!504341 () Bool)

(assert (=> d!80489 m!504341))

(assert (=> d!80489 m!504027))

(declare-fun m!504343 () Bool)

(assert (=> b!523547 m!504343))

(assert (=> b!523546 m!504343))

(assert (=> b!523551 m!504343))

(assert (=> b!523147 d!80489))

(declare-fun d!80491 () Bool)

(assert (=> d!80491 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!240274 () Unit!16322)

(declare-fun choose!38 (array!33277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16322)

(assert (=> d!80491 (= lt!240274 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80491 (validMask!0 mask!3524)))

(assert (=> d!80491 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!240274)))

(declare-fun bs!16448 () Bool)

(assert (= bs!16448 d!80491))

(assert (=> bs!16448 m!504019))

(declare-fun m!504347 () Bool)

(assert (=> bs!16448 m!504347))

(assert (=> bs!16448 m!504027))

(assert (=> b!523147 d!80491))

(declare-fun d!80495 () Bool)

(declare-fun lt!240276 () (_ BitVec 32))

(declare-fun lt!240275 () (_ BitVec 32))

(assert (=> d!80495 (= lt!240276 (bvmul (bvxor lt!240275 (bvlshr lt!240275 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80495 (= lt!240275 ((_ extract 31 0) (bvand (bvxor lt!240078 (bvlshr lt!240078 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80495 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320857 (let ((h!11127 ((_ extract 31 0) (bvand (bvxor lt!240078 (bvlshr lt!240078 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49081 (bvmul (bvxor h!11127 (bvlshr h!11127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49081 (bvlshr x!49081 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320857 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320857 #b00000000000000000000000000000000))))))

(assert (=> d!80495 (= (toIndex!0 lt!240078 mask!3524) (bvand (bvxor lt!240276 (bvlshr lt!240276 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!523147 d!80495))

(declare-fun e!305359 () SeekEntryResult!4464)

(declare-fun b!523554 () Bool)

(assert (=> b!523554 (= e!305359 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!240072 #b00000000000000000000000000000000 mask!3524) (select (arr!15990 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!80497 () Bool)

(declare-fun e!305356 () Bool)

(assert (=> d!80497 e!305356))

(declare-fun c!61648 () Bool)

(declare-fun lt!240278 () SeekEntryResult!4464)

(assert (=> d!80497 (= c!61648 (and (is-Intermediate!4464 lt!240278) (undefined!5276 lt!240278)))))

(declare-fun e!305357 () SeekEntryResult!4464)

(assert (=> d!80497 (= lt!240278 e!305357)))

(declare-fun c!61647 () Bool)

(assert (=> d!80497 (= c!61647 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!240277 () (_ BitVec 64))

(assert (=> d!80497 (= lt!240277 (select (arr!15990 a!3235) lt!240072))))

(assert (=> d!80497 (validMask!0 mask!3524)))

(assert (=> d!80497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240072 (select (arr!15990 a!3235) j!176) a!3235 mask!3524) lt!240278)))

(declare-fun b!523555 () Bool)

(assert (=> b!523555 (and (bvsge (index!20064 lt!240278) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240278) (size!16354 a!3235)))))

(declare-fun res!320870 () Bool)

(assert (=> b!523555 (= res!320870 (= (select (arr!15990 a!3235) (index!20064 lt!240278)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!305358 () Bool)

(assert (=> b!523555 (=> res!320870 e!305358)))

(declare-fun b!523556 () Bool)

(assert (=> b!523556 (and (bvsge (index!20064 lt!240278) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240278) (size!16354 a!3235)))))

(assert (=> b!523556 (= e!305358 (= (select (arr!15990 a!3235) (index!20064 lt!240278)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!523557 () Bool)

(assert (=> b!523557 (= e!305357 (Intermediate!4464 true lt!240072 #b00000000000000000000000000000000))))

(declare-fun b!523558 () Bool)

(assert (=> b!523558 (= e!305356 (bvsge (x!49070 lt!240278) #b01111111111111111111111111111110))))

(declare-fun b!523559 () Bool)

(assert (=> b!523559 (= e!305357 e!305359)))

(declare-fun c!61649 () Bool)

(assert (=> b!523559 (= c!61649 (or (= lt!240277 (select (arr!15990 a!3235) j!176)) (= (bvadd lt!240277 lt!240277) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!523560 () Bool)

(assert (=> b!523560 (and (bvsge (index!20064 lt!240278) #b00000000000000000000000000000000) (bvslt (index!20064 lt!240278) (size!16354 a!3235)))))

(declare-fun res!320868 () Bool)

(assert (=> b!523560 (= res!320868 (= (select (arr!15990 a!3235) (index!20064 lt!240278)) (select (arr!15990 a!3235) j!176)))))

(assert (=> b!523560 (=> res!320868 e!305358)))

(declare-fun e!305355 () Bool)

(assert (=> b!523560 (= e!305355 e!305358)))

(declare-fun b!523561 () Bool)

(assert (=> b!523561 (= e!305356 e!305355)))

(declare-fun res!320869 () Bool)

(assert (=> b!523561 (= res!320869 (and (is-Intermediate!4464 lt!240278) (not (undefined!5276 lt!240278)) (bvslt (x!49070 lt!240278) #b01111111111111111111111111111110) (bvsge (x!49070 lt!240278) #b00000000000000000000000000000000) (bvsge (x!49070 lt!240278) #b00000000000000000000000000000000)))))

(assert (=> b!523561 (=> (not res!320869) (not e!305355))))

(declare-fun b!523562 () Bool)

(assert (=> b!523562 (= e!305359 (Intermediate!4464 false lt!240072 #b00000000000000000000000000000000))))

(assert (= (and d!80497 c!61647) b!523557))

(assert (= (and d!80497 (not c!61647)) b!523559))

(assert (= (and b!523559 c!61649) b!523562))

(assert (= (and b!523559 (not c!61649)) b!523554))

(assert (= (and d!80497 c!61648) b!523558))

(assert (= (and d!80497 (not c!61648)) b!523561))

(assert (= (and b!523561 res!320869) b!523560))

(assert (= (and b!523560 (not res!320868)) b!523555))

(assert (= (and b!523555 (not res!320870)) b!523556))

(assert (=> b!523554 m!504273))

(assert (=> b!523554 m!504273))

(assert (=> b!523554 m!504007))

(declare-fun m!504349 () Bool)

(assert (=> b!523554 m!504349))

(declare-fun m!504351 () Bool)

(assert (=> d!80497 m!504351))

(assert (=> d!80497 m!504027))

(declare-fun m!504353 () Bool)

(assert (=> b!523556 m!504353))

(assert (=> b!523555 m!504353))

(assert (=> b!523560 m!504353))

(assert (=> b!523147 d!80497))

(push 1)

(assert (not d!80419))

(assert (not b!523543))

(assert (not d!80497))

(assert (not b!523370))

(assert (not d!80445))

(assert (not b!523545))

(assert (not bm!31839))

(assert (not bm!31844))

(assert (not bm!31842))

(assert (not b!523475))

(assert (not b!523449))

(assert (not b!523542))

(assert (not b!523525))

(assert (not d!80435))

(assert (not b!523478))

(assert (not b!523464))

(assert (not d!80489))

(assert (not b!523477))

(assert (not b!523526))

(assert (not b!523554))

(assert (not d!80413))

(assert (not d!80491))

(assert (not b!523324))

(assert (not b!523318))

(check-sat)

(pop 1)

(push 1)

(check-sat)

