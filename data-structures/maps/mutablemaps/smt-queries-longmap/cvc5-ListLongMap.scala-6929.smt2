; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87166 () Bool)

(assert start!87166)

(declare-fun b!1010339 () Bool)

(declare-fun e!568429 () Bool)

(declare-fun e!568431 () Bool)

(assert (=> b!1010339 (= e!568429 e!568431)))

(declare-fun res!678839 () Bool)

(assert (=> b!1010339 (=> (not res!678839) (not e!568431))))

(declare-datatypes ((SeekEntryResult!9560 0))(
  ( (MissingZero!9560 (index!40610 (_ BitVec 32))) (Found!9560 (index!40611 (_ BitVec 32))) (Intermediate!9560 (undefined!10372 Bool) (index!40612 (_ BitVec 32)) (x!88047 (_ BitVec 32))) (Undefined!9560) (MissingVacant!9560 (index!40613 (_ BitVec 32))) )
))
(declare-fun lt!446554 () SeekEntryResult!9560)

(declare-fun lt!446553 () SeekEntryResult!9560)

(assert (=> b!1010339 (= res!678839 (= lt!446554 lt!446553))))

(declare-datatypes ((array!63628 0))(
  ( (array!63629 (arr!30628 (Array (_ BitVec 32) (_ BitVec 64))) (size!31131 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63628)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63628 (_ BitVec 32)) SeekEntryResult!9560)

(assert (=> b!1010339 (= lt!446554 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30628 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010340 () Bool)

(declare-fun res!678843 () Bool)

(declare-fun e!568430 () Bool)

(assert (=> b!1010340 (=> (not res!678843) (not e!568430))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010340 (= res!678843 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010341 () Bool)

(declare-fun e!568432 () Bool)

(assert (=> b!1010341 (= e!568430 e!568432)))

(declare-fun res!678833 () Bool)

(assert (=> b!1010341 (=> (not res!678833) (not e!568432))))

(declare-fun lt!446556 () SeekEntryResult!9560)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010341 (= res!678833 (or (= lt!446556 (MissingVacant!9560 i!1194)) (= lt!446556 (MissingZero!9560 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63628 (_ BitVec 32)) SeekEntryResult!9560)

(assert (=> b!1010341 (= lt!446556 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010342 () Bool)

(declare-fun res!678836 () Bool)

(assert (=> b!1010342 (=> (not res!678836) (not e!568430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010342 (= res!678836 (validKeyInArray!0 k!2224))))

(declare-fun b!1010343 () Bool)

(declare-fun res!678846 () Bool)

(assert (=> b!1010343 (=> (not res!678846) (not e!568430))))

(assert (=> b!1010343 (= res!678846 (validKeyInArray!0 (select (arr!30628 a!3219) j!170)))))

(declare-fun e!568427 () Bool)

(declare-fun lt!446558 () (_ BitVec 32))

(declare-fun b!1010344 () Bool)

(assert (=> b!1010344 (= e!568427 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446558 (select (arr!30628 a!3219) j!170) a!3219 mask!3464) lt!446553)))))

(declare-fun b!1010345 () Bool)

(declare-fun e!568428 () Bool)

(assert (=> b!1010345 (= e!568431 e!568428)))

(declare-fun res!678838 () Bool)

(assert (=> b!1010345 (=> (not res!678838) (not e!568428))))

(declare-fun lt!446559 () (_ BitVec 64))

(declare-fun lt!446555 () SeekEntryResult!9560)

(declare-fun lt!446557 () array!63628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010345 (= res!678838 (not (= lt!446555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446559 mask!3464) lt!446559 lt!446557 mask!3464))))))

(assert (=> b!1010345 (= lt!446559 (select (store (arr!30628 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010345 (= lt!446557 (array!63629 (store (arr!30628 a!3219) i!1194 k!2224) (size!31131 a!3219)))))

(declare-fun b!1010346 () Bool)

(assert (=> b!1010346 (= e!568428 e!568427)))

(declare-fun res!678847 () Bool)

(assert (=> b!1010346 (=> (not res!678847) (not e!568427))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010346 (= res!678847 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446558 #b00000000000000000000000000000000) (bvslt lt!446558 (size!31131 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010346 (= lt!446558 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010347 () Bool)

(declare-fun res!678845 () Bool)

(assert (=> b!1010347 (=> (not res!678845) (not e!568428))))

(assert (=> b!1010347 (= res!678845 (not (= lt!446554 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446559 lt!446557 mask!3464))))))

(declare-fun b!1010348 () Bool)

(declare-fun res!678842 () Bool)

(assert (=> b!1010348 (=> (not res!678842) (not e!568432))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63628 (_ BitVec 32)) Bool)

(assert (=> b!1010348 (= res!678842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!678840 () Bool)

(assert (=> start!87166 (=> (not res!678840) (not e!568430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87166 (= res!678840 (validMask!0 mask!3464))))

(assert (=> start!87166 e!568430))

(declare-fun array_inv!23618 (array!63628) Bool)

(assert (=> start!87166 (array_inv!23618 a!3219)))

(assert (=> start!87166 true))

(declare-fun b!1010349 () Bool)

(assert (=> b!1010349 (= e!568432 e!568429)))

(declare-fun res!678841 () Bool)

(assert (=> b!1010349 (=> (not res!678841) (not e!568429))))

(assert (=> b!1010349 (= res!678841 (= lt!446555 lt!446553))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1010349 (= lt!446553 (Intermediate!9560 false resIndex!38 resX!38))))

(assert (=> b!1010349 (= lt!446555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) (select (arr!30628 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010350 () Bool)

(declare-fun res!678844 () Bool)

(assert (=> b!1010350 (=> (not res!678844) (not e!568432))))

(declare-datatypes ((List!21430 0))(
  ( (Nil!21427) (Cons!21426 (h!22618 (_ BitVec 64)) (t!30439 List!21430)) )
))
(declare-fun arrayNoDuplicates!0 (array!63628 (_ BitVec 32) List!21430) Bool)

(assert (=> b!1010350 (= res!678844 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21427))))

(declare-fun b!1010351 () Bool)

(declare-fun res!678835 () Bool)

(assert (=> b!1010351 (=> (not res!678835) (not e!568430))))

(assert (=> b!1010351 (= res!678835 (and (= (size!31131 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31131 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31131 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010352 () Bool)

(declare-fun res!678837 () Bool)

(assert (=> b!1010352 (=> (not res!678837) (not e!568428))))

(assert (=> b!1010352 (= res!678837 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010353 () Bool)

(declare-fun res!678834 () Bool)

(assert (=> b!1010353 (=> (not res!678834) (not e!568432))))

(assert (=> b!1010353 (= res!678834 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31131 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31131 a!3219))))))

(assert (= (and start!87166 res!678840) b!1010351))

(assert (= (and b!1010351 res!678835) b!1010343))

(assert (= (and b!1010343 res!678846) b!1010342))

(assert (= (and b!1010342 res!678836) b!1010340))

(assert (= (and b!1010340 res!678843) b!1010341))

(assert (= (and b!1010341 res!678833) b!1010348))

(assert (= (and b!1010348 res!678842) b!1010350))

(assert (= (and b!1010350 res!678844) b!1010353))

(assert (= (and b!1010353 res!678834) b!1010349))

(assert (= (and b!1010349 res!678841) b!1010339))

(assert (= (and b!1010339 res!678839) b!1010345))

(assert (= (and b!1010345 res!678838) b!1010347))

(assert (= (and b!1010347 res!678845) b!1010352))

(assert (= (and b!1010352 res!678837) b!1010346))

(assert (= (and b!1010346 res!678847) b!1010344))

(declare-fun m!934791 () Bool)

(assert (=> b!1010344 m!934791))

(assert (=> b!1010344 m!934791))

(declare-fun m!934793 () Bool)

(assert (=> b!1010344 m!934793))

(declare-fun m!934795 () Bool)

(assert (=> b!1010348 m!934795))

(declare-fun m!934797 () Bool)

(assert (=> b!1010346 m!934797))

(assert (=> b!1010343 m!934791))

(assert (=> b!1010343 m!934791))

(declare-fun m!934799 () Bool)

(assert (=> b!1010343 m!934799))

(declare-fun m!934801 () Bool)

(assert (=> b!1010345 m!934801))

(assert (=> b!1010345 m!934801))

(declare-fun m!934803 () Bool)

(assert (=> b!1010345 m!934803))

(declare-fun m!934805 () Bool)

(assert (=> b!1010345 m!934805))

(declare-fun m!934807 () Bool)

(assert (=> b!1010345 m!934807))

(assert (=> b!1010349 m!934791))

(assert (=> b!1010349 m!934791))

(declare-fun m!934809 () Bool)

(assert (=> b!1010349 m!934809))

(assert (=> b!1010349 m!934809))

(assert (=> b!1010349 m!934791))

(declare-fun m!934811 () Bool)

(assert (=> b!1010349 m!934811))

(declare-fun m!934813 () Bool)

(assert (=> b!1010341 m!934813))

(declare-fun m!934815 () Bool)

(assert (=> b!1010350 m!934815))

(assert (=> b!1010339 m!934791))

(assert (=> b!1010339 m!934791))

(declare-fun m!934817 () Bool)

(assert (=> b!1010339 m!934817))

(declare-fun m!934819 () Bool)

(assert (=> b!1010347 m!934819))

(declare-fun m!934821 () Bool)

(assert (=> b!1010342 m!934821))

(declare-fun m!934823 () Bool)

(assert (=> b!1010340 m!934823))

(declare-fun m!934825 () Bool)

(assert (=> start!87166 m!934825))

(declare-fun m!934827 () Bool)

(assert (=> start!87166 m!934827))

(push 1)

(assert (not b!1010349))

(assert (not b!1010348))

(assert (not b!1010350))

(assert (not b!1010345))

(assert (not b!1010341))

(assert (not b!1010340))

(assert (not b!1010339))

(assert (not b!1010342))

(assert (not b!1010347))

(assert (not b!1010344))

(assert (not b!1010343))

(assert (not start!87166))

(assert (not b!1010346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119971 () Bool)

(declare-fun lt!446624 () (_ BitVec 32))

(assert (=> d!119971 (and (bvsge lt!446624 #b00000000000000000000000000000000) (bvslt lt!446624 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119971 (= lt!446624 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119971 (validMask!0 mask!3464)))

(assert (=> d!119971 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446624)))

(declare-fun bs!28721 () Bool)

(assert (= bs!28721 d!119971))

(declare-fun m!934919 () Bool)

(assert (=> bs!28721 m!934919))

(assert (=> bs!28721 m!934825))

(assert (=> b!1010346 d!119971))

(declare-fun e!568547 () SeekEntryResult!9560)

(declare-fun b!1010567 () Bool)

(assert (=> b!1010567 (= e!568547 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446558 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30628 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010568 () Bool)

(declare-fun e!568549 () SeekEntryResult!9560)

(assert (=> b!1010568 (= e!568549 (Intermediate!9560 true lt!446558 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1010569 () Bool)

(declare-fun e!568548 () Bool)

(declare-fun e!568546 () Bool)

(assert (=> b!1010569 (= e!568548 e!568546)))

(declare-fun res!678978 () Bool)

(declare-fun lt!446643 () SeekEntryResult!9560)

(assert (=> b!1010569 (= res!678978 (and (is-Intermediate!9560 lt!446643) (not (undefined!10372 lt!446643)) (bvslt (x!88047 lt!446643) #b01111111111111111111111111111110) (bvsge (x!88047 lt!446643) #b00000000000000000000000000000000) (bvsge (x!88047 lt!446643) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1010569 (=> (not res!678978) (not e!568546))))

(declare-fun b!1010570 () Bool)

(assert (=> b!1010570 (= e!568549 e!568547)))

(declare-fun c!101957 () Bool)

(declare-fun lt!446642 () (_ BitVec 64))

(assert (=> b!1010570 (= c!101957 (or (= lt!446642 (select (arr!30628 a!3219) j!170)) (= (bvadd lt!446642 lt!446642) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010571 () Bool)

(assert (=> b!1010571 (= e!568547 (Intermediate!9560 false lt!446558 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun d!119975 () Bool)

(assert (=> d!119975 e!568548))

(declare-fun c!101956 () Bool)

(assert (=> d!119975 (= c!101956 (and (is-Intermediate!9560 lt!446643) (undefined!10372 lt!446643)))))

(assert (=> d!119975 (= lt!446643 e!568549)))

(declare-fun c!101958 () Bool)

(assert (=> d!119975 (= c!101958 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!119975 (= lt!446642 (select (arr!30628 a!3219) lt!446558))))

(assert (=> d!119975 (validMask!0 mask!3464)))

(assert (=> d!119975 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446558 (select (arr!30628 a!3219) j!170) a!3219 mask!3464) lt!446643)))

(declare-fun b!1010572 () Bool)

(assert (=> b!1010572 (= e!568548 (bvsge (x!88047 lt!446643) #b01111111111111111111111111111110))))

(declare-fun b!1010573 () Bool)

(assert (=> b!1010573 (and (bvsge (index!40612 lt!446643) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446643) (size!31131 a!3219)))))

(declare-fun res!678980 () Bool)

(assert (=> b!1010573 (= res!678980 (= (select (arr!30628 a!3219) (index!40612 lt!446643)) (select (arr!30628 a!3219) j!170)))))

(declare-fun e!568550 () Bool)

(assert (=> b!1010573 (=> res!678980 e!568550)))

(assert (=> b!1010573 (= e!568546 e!568550)))

(declare-fun b!1010574 () Bool)

(assert (=> b!1010574 (and (bvsge (index!40612 lt!446643) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446643) (size!31131 a!3219)))))

(assert (=> b!1010574 (= e!568550 (= (select (arr!30628 a!3219) (index!40612 lt!446643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010575 () Bool)

(assert (=> b!1010575 (and (bvsge (index!40612 lt!446643) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446643) (size!31131 a!3219)))))

(declare-fun res!678979 () Bool)

(assert (=> b!1010575 (= res!678979 (= (select (arr!30628 a!3219) (index!40612 lt!446643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010575 (=> res!678979 e!568550)))

(assert (= (and d!119975 c!101958) b!1010568))

(assert (= (and d!119975 (not c!101958)) b!1010570))

(assert (= (and b!1010570 c!101957) b!1010571))

(assert (= (and b!1010570 (not c!101957)) b!1010567))

(assert (= (and d!119975 c!101956) b!1010572))

(assert (= (and d!119975 (not c!101956)) b!1010569))

(assert (= (and b!1010569 res!678978) b!1010573))

(assert (= (and b!1010573 (not res!678980)) b!1010575))

(assert (= (and b!1010575 (not res!678979)) b!1010574))

(declare-fun m!934959 () Bool)

(assert (=> d!119975 m!934959))

(assert (=> d!119975 m!934825))

(declare-fun m!934961 () Bool)

(assert (=> b!1010574 m!934961))

(assert (=> b!1010573 m!934961))

(declare-fun m!934963 () Bool)

(assert (=> b!1010567 m!934963))

(assert (=> b!1010567 m!934963))

(assert (=> b!1010567 m!934791))

(declare-fun m!934965 () Bool)

(assert (=> b!1010567 m!934965))

(assert (=> b!1010575 m!934961))

(assert (=> b!1010344 d!119975))

(declare-fun e!568552 () SeekEntryResult!9560)

(declare-fun b!1010576 () Bool)

(assert (=> b!1010576 (= e!568552 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446559 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446559 lt!446557 mask!3464))))

(declare-fun b!1010577 () Bool)

(declare-fun e!568554 () SeekEntryResult!9560)

(assert (=> b!1010577 (= e!568554 (Intermediate!9560 true (toIndex!0 lt!446559 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010578 () Bool)

(declare-fun e!568553 () Bool)

(declare-fun e!568551 () Bool)

(assert (=> b!1010578 (= e!568553 e!568551)))

(declare-fun res!678981 () Bool)

(declare-fun lt!446645 () SeekEntryResult!9560)

(assert (=> b!1010578 (= res!678981 (and (is-Intermediate!9560 lt!446645) (not (undefined!10372 lt!446645)) (bvslt (x!88047 lt!446645) #b01111111111111111111111111111110) (bvsge (x!88047 lt!446645) #b00000000000000000000000000000000) (bvsge (x!88047 lt!446645) #b00000000000000000000000000000000)))))

(assert (=> b!1010578 (=> (not res!678981) (not e!568551))))

(declare-fun b!1010579 () Bool)

(assert (=> b!1010579 (= e!568554 e!568552)))

(declare-fun c!101960 () Bool)

(declare-fun lt!446644 () (_ BitVec 64))

(assert (=> b!1010579 (= c!101960 (or (= lt!446644 lt!446559) (= (bvadd lt!446644 lt!446644) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010580 () Bool)

(assert (=> b!1010580 (= e!568552 (Intermediate!9560 false (toIndex!0 lt!446559 mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!119993 () Bool)

(assert (=> d!119993 e!568553))

(declare-fun c!101959 () Bool)

(assert (=> d!119993 (= c!101959 (and (is-Intermediate!9560 lt!446645) (undefined!10372 lt!446645)))))

(assert (=> d!119993 (= lt!446645 e!568554)))

(declare-fun c!101961 () Bool)

(assert (=> d!119993 (= c!101961 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119993 (= lt!446644 (select (arr!30628 lt!446557) (toIndex!0 lt!446559 mask!3464)))))

(assert (=> d!119993 (validMask!0 mask!3464)))

(assert (=> d!119993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446559 mask!3464) lt!446559 lt!446557 mask!3464) lt!446645)))

(declare-fun b!1010581 () Bool)

(assert (=> b!1010581 (= e!568553 (bvsge (x!88047 lt!446645) #b01111111111111111111111111111110))))

(declare-fun b!1010582 () Bool)

(assert (=> b!1010582 (and (bvsge (index!40612 lt!446645) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446645) (size!31131 lt!446557)))))

(declare-fun res!678983 () Bool)

(assert (=> b!1010582 (= res!678983 (= (select (arr!30628 lt!446557) (index!40612 lt!446645)) lt!446559))))

(declare-fun e!568555 () Bool)

(assert (=> b!1010582 (=> res!678983 e!568555)))

(assert (=> b!1010582 (= e!568551 e!568555)))

(declare-fun b!1010583 () Bool)

(assert (=> b!1010583 (and (bvsge (index!40612 lt!446645) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446645) (size!31131 lt!446557)))))

(assert (=> b!1010583 (= e!568555 (= (select (arr!30628 lt!446557) (index!40612 lt!446645)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010584 () Bool)

(assert (=> b!1010584 (and (bvsge (index!40612 lt!446645) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446645) (size!31131 lt!446557)))))

(declare-fun res!678982 () Bool)

(assert (=> b!1010584 (= res!678982 (= (select (arr!30628 lt!446557) (index!40612 lt!446645)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010584 (=> res!678982 e!568555)))

(assert (= (and d!119993 c!101961) b!1010577))

(assert (= (and d!119993 (not c!101961)) b!1010579))

(assert (= (and b!1010579 c!101960) b!1010580))

(assert (= (and b!1010579 (not c!101960)) b!1010576))

(assert (= (and d!119993 c!101959) b!1010581))

(assert (= (and d!119993 (not c!101959)) b!1010578))

(assert (= (and b!1010578 res!678981) b!1010582))

(assert (= (and b!1010582 (not res!678983)) b!1010584))

(assert (= (and b!1010584 (not res!678982)) b!1010583))

(assert (=> d!119993 m!934801))

(declare-fun m!934967 () Bool)

(assert (=> d!119993 m!934967))

(assert (=> d!119993 m!934825))

(declare-fun m!934969 () Bool)

(assert (=> b!1010583 m!934969))

(assert (=> b!1010582 m!934969))

(assert (=> b!1010576 m!934801))

(declare-fun m!934971 () Bool)

(assert (=> b!1010576 m!934971))

(assert (=> b!1010576 m!934971))

(declare-fun m!934973 () Bool)

(assert (=> b!1010576 m!934973))

(assert (=> b!1010584 m!934969))

(assert (=> b!1010345 d!119993))

(declare-fun d!119995 () Bool)

(declare-fun lt!446659 () (_ BitVec 32))

(declare-fun lt!446658 () (_ BitVec 32))

(assert (=> d!119995 (= lt!446659 (bvmul (bvxor lt!446658 (bvlshr lt!446658 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119995 (= lt!446658 ((_ extract 31 0) (bvand (bvxor lt!446559 (bvlshr lt!446559 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119995 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678990 (let ((h!22622 ((_ extract 31 0) (bvand (bvxor lt!446559 (bvlshr lt!446559 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88055 (bvmul (bvxor h!22622 (bvlshr h!22622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88055 (bvlshr x!88055 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678990 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678990 #b00000000000000000000000000000000))))))

(assert (=> d!119995 (= (toIndex!0 lt!446559 mask!3464) (bvand (bvxor lt!446659 (bvlshr lt!446659 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010345 d!119995))

(declare-fun b!1010646 () Bool)

(declare-fun e!568600 () Bool)

(declare-fun e!568599 () Bool)

(assert (=> b!1010646 (= e!568600 e!568599)))

(declare-fun lt!446687 () (_ BitVec 64))

(assert (=> b!1010646 (= lt!446687 (select (arr!30628 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32974 0))(
  ( (Unit!32975) )
))
(declare-fun lt!446685 () Unit!32974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63628 (_ BitVec 64) (_ BitVec 32)) Unit!32974)

(assert (=> b!1010646 (= lt!446685 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446687 #b00000000000000000000000000000000))))

(assert (=> b!1010646 (arrayContainsKey!0 a!3219 lt!446687 #b00000000000000000000000000000000)))

(declare-fun lt!446686 () Unit!32974)

(assert (=> b!1010646 (= lt!446686 lt!446685)))

(declare-fun res!679016 () Bool)

(assert (=> b!1010646 (= res!679016 (= (seekEntryOrOpen!0 (select (arr!30628 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9560 #b00000000000000000000000000000000)))))

(assert (=> b!1010646 (=> (not res!679016) (not e!568599))))

(declare-fun bm!42417 () Bool)

(declare-fun call!42420 () Bool)

(assert (=> bm!42417 (= call!42420 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1010647 () Bool)

(assert (=> b!1010647 (= e!568599 call!42420)))

(declare-fun d!119999 () Bool)

(declare-fun res!679015 () Bool)

(declare-fun e!568601 () Bool)

(assert (=> d!119999 (=> res!679015 e!568601)))

(assert (=> d!119999 (= res!679015 (bvsge #b00000000000000000000000000000000 (size!31131 a!3219)))))

(assert (=> d!119999 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568601)))

(declare-fun b!1010648 () Bool)

(assert (=> b!1010648 (= e!568601 e!568600)))

(declare-fun c!101978 () Bool)

(assert (=> b!1010648 (= c!101978 (validKeyInArray!0 (select (arr!30628 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010649 () Bool)

(assert (=> b!1010649 (= e!568600 call!42420)))

(assert (= (and d!119999 (not res!679015)) b!1010648))

(assert (= (and b!1010648 c!101978) b!1010646))

(assert (= (and b!1010648 (not c!101978)) b!1010649))

(assert (= (and b!1010646 res!679016) b!1010647))

(assert (= (or b!1010647 b!1010649) bm!42417))

(declare-fun m!935009 () Bool)

(assert (=> b!1010646 m!935009))

(declare-fun m!935011 () Bool)

(assert (=> b!1010646 m!935011))

(declare-fun m!935013 () Bool)

(assert (=> b!1010646 m!935013))

(assert (=> b!1010646 m!935009))

(declare-fun m!935015 () Bool)

(assert (=> b!1010646 m!935015))

(declare-fun m!935017 () Bool)

(assert (=> bm!42417 m!935017))

(assert (=> b!1010648 m!935009))

(assert (=> b!1010648 m!935009))

(declare-fun m!935019 () Bool)

(assert (=> b!1010648 m!935019))

(assert (=> b!1010348 d!119999))

(declare-fun e!568608 () SeekEntryResult!9560)

(declare-fun b!1010659 () Bool)

(assert (=> b!1010659 (= e!568608 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30628 a!3219) j!170) a!3219 mask!3464))))

(declare-fun e!568612 () SeekEntryResult!9560)

(declare-fun b!1010660 () Bool)

(assert (=> b!1010660 (= e!568612 (Intermediate!9560 true (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010661 () Bool)

(declare-fun e!568609 () Bool)

(declare-fun e!568607 () Bool)

(assert (=> b!1010661 (= e!568609 e!568607)))

(declare-fun res!679020 () Bool)

(declare-fun lt!446691 () SeekEntryResult!9560)

(assert (=> b!1010661 (= res!679020 (and (is-Intermediate!9560 lt!446691) (not (undefined!10372 lt!446691)) (bvslt (x!88047 lt!446691) #b01111111111111111111111111111110) (bvsge (x!88047 lt!446691) #b00000000000000000000000000000000) (bvsge (x!88047 lt!446691) #b00000000000000000000000000000000)))))

(assert (=> b!1010661 (=> (not res!679020) (not e!568607))))

(declare-fun b!1010662 () Bool)

(assert (=> b!1010662 (= e!568612 e!568608)))

(declare-fun c!101983 () Bool)

(declare-fun lt!446690 () (_ BitVec 64))

(assert (=> b!1010662 (= c!101983 (or (= lt!446690 (select (arr!30628 a!3219) j!170)) (= (bvadd lt!446690 lt!446690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010664 () Bool)

(assert (=> b!1010664 (= e!568608 (Intermediate!9560 false (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!120011 () Bool)

(assert (=> d!120011 e!568609))

(declare-fun c!101982 () Bool)

(assert (=> d!120011 (= c!101982 (and (is-Intermediate!9560 lt!446691) (undefined!10372 lt!446691)))))

(assert (=> d!120011 (= lt!446691 e!568612)))

(declare-fun c!101984 () Bool)

(assert (=> d!120011 (= c!101984 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120011 (= lt!446690 (select (arr!30628 a!3219) (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464)))))

(assert (=> d!120011 (validMask!0 mask!3464)))

(assert (=> d!120011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) (select (arr!30628 a!3219) j!170) a!3219 mask!3464) lt!446691)))

(declare-fun b!1010665 () Bool)

(assert (=> b!1010665 (= e!568609 (bvsge (x!88047 lt!446691) #b01111111111111111111111111111110))))

(declare-fun b!1010667 () Bool)

(assert (=> b!1010667 (and (bvsge (index!40612 lt!446691) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446691) (size!31131 a!3219)))))

(declare-fun res!679023 () Bool)

(assert (=> b!1010667 (= res!679023 (= (select (arr!30628 a!3219) (index!40612 lt!446691)) (select (arr!30628 a!3219) j!170)))))

(declare-fun e!568613 () Bool)

(assert (=> b!1010667 (=> res!679023 e!568613)))

(assert (=> b!1010667 (= e!568607 e!568613)))

(declare-fun b!1010669 () Bool)

(assert (=> b!1010669 (and (bvsge (index!40612 lt!446691) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446691) (size!31131 a!3219)))))

(assert (=> b!1010669 (= e!568613 (= (select (arr!30628 a!3219) (index!40612 lt!446691)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010671 () Bool)

(assert (=> b!1010671 (and (bvsge (index!40612 lt!446691) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446691) (size!31131 a!3219)))))

(declare-fun res!679021 () Bool)

(assert (=> b!1010671 (= res!679021 (= (select (arr!30628 a!3219) (index!40612 lt!446691)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010671 (=> res!679021 e!568613)))

(assert (= (and d!120011 c!101984) b!1010660))

(assert (= (and d!120011 (not c!101984)) b!1010662))

(assert (= (and b!1010662 c!101983) b!1010664))

(assert (= (and b!1010662 (not c!101983)) b!1010659))

(assert (= (and d!120011 c!101982) b!1010665))

(assert (= (and d!120011 (not c!101982)) b!1010661))

(assert (= (and b!1010661 res!679020) b!1010667))

(assert (= (and b!1010667 (not res!679023)) b!1010671))

(assert (= (and b!1010671 (not res!679021)) b!1010669))

(assert (=> d!120011 m!934809))

(declare-fun m!935037 () Bool)

(assert (=> d!120011 m!935037))

(assert (=> d!120011 m!934825))

(declare-fun m!935039 () Bool)

(assert (=> b!1010669 m!935039))

(assert (=> b!1010667 m!935039))

(assert (=> b!1010659 m!934809))

(declare-fun m!935041 () Bool)

(assert (=> b!1010659 m!935041))

(assert (=> b!1010659 m!935041))

(assert (=> b!1010659 m!934791))

(declare-fun m!935043 () Bool)

(assert (=> b!1010659 m!935043))

(assert (=> b!1010671 m!935039))

(assert (=> b!1010349 d!120011))

(declare-fun d!120017 () Bool)

(declare-fun lt!446696 () (_ BitVec 32))

(declare-fun lt!446695 () (_ BitVec 32))

(assert (=> d!120017 (= lt!446696 (bvmul (bvxor lt!446695 (bvlshr lt!446695 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120017 (= lt!446695 ((_ extract 31 0) (bvand (bvxor (select (arr!30628 a!3219) j!170) (bvlshr (select (arr!30628 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120017 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678990 (let ((h!22622 ((_ extract 31 0) (bvand (bvxor (select (arr!30628 a!3219) j!170) (bvlshr (select (arr!30628 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88055 (bvmul (bvxor h!22622 (bvlshr h!22622 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88055 (bvlshr x!88055 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678990 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678990 #b00000000000000000000000000000000))))))

(assert (=> d!120017 (= (toIndex!0 (select (arr!30628 a!3219) j!170) mask!3464) (bvand (bvxor lt!446696 (bvlshr lt!446696 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010349 d!120017))

(declare-fun d!120019 () Bool)

(assert (=> d!120019 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87166 d!120019))

(declare-fun d!120027 () Bool)

(assert (=> d!120027 (= (array_inv!23618 a!3219) (bvsge (size!31131 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87166 d!120027))

(declare-fun e!568639 () SeekEntryResult!9560)

(declare-fun b!1010702 () Bool)

(assert (=> b!1010702 (= e!568639 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446559 lt!446557 mask!3464))))

(declare-fun b!1010703 () Bool)

(declare-fun e!568641 () SeekEntryResult!9560)

(assert (=> b!1010703 (= e!568641 (Intermediate!9560 true index!1507 x!1245))))

(declare-fun b!1010704 () Bool)

(declare-fun e!568640 () Bool)

(declare-fun e!568638 () Bool)

(assert (=> b!1010704 (= e!568640 e!568638)))

(declare-fun res!679043 () Bool)

(declare-fun lt!446705 () SeekEntryResult!9560)

(assert (=> b!1010704 (= res!679043 (and (is-Intermediate!9560 lt!446705) (not (undefined!10372 lt!446705)) (bvslt (x!88047 lt!446705) #b01111111111111111111111111111110) (bvsge (x!88047 lt!446705) #b00000000000000000000000000000000) (bvsge (x!88047 lt!446705) x!1245)))))

(assert (=> b!1010704 (=> (not res!679043) (not e!568638))))

(declare-fun b!1010705 () Bool)

(assert (=> b!1010705 (= e!568641 e!568639)))

(declare-fun c!101993 () Bool)

(declare-fun lt!446704 () (_ BitVec 64))

(assert (=> b!1010705 (= c!101993 (or (= lt!446704 lt!446559) (= (bvadd lt!446704 lt!446704) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010706 () Bool)

(assert (=> b!1010706 (= e!568639 (Intermediate!9560 false index!1507 x!1245))))

(declare-fun d!120029 () Bool)

(assert (=> d!120029 e!568640))

(declare-fun c!101992 () Bool)

(assert (=> d!120029 (= c!101992 (and (is-Intermediate!9560 lt!446705) (undefined!10372 lt!446705)))))

(assert (=> d!120029 (= lt!446705 e!568641)))

(declare-fun c!101994 () Bool)

(assert (=> d!120029 (= c!101994 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120029 (= lt!446704 (select (arr!30628 lt!446557) index!1507))))

(assert (=> d!120029 (validMask!0 mask!3464)))

(assert (=> d!120029 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446559 lt!446557 mask!3464) lt!446705)))

(declare-fun b!1010707 () Bool)

(assert (=> b!1010707 (= e!568640 (bvsge (x!88047 lt!446705) #b01111111111111111111111111111110))))

(declare-fun b!1010708 () Bool)

(assert (=> b!1010708 (and (bvsge (index!40612 lt!446705) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446705) (size!31131 lt!446557)))))

(declare-fun res!679045 () Bool)

(assert (=> b!1010708 (= res!679045 (= (select (arr!30628 lt!446557) (index!40612 lt!446705)) lt!446559))))

(declare-fun e!568642 () Bool)

(assert (=> b!1010708 (=> res!679045 e!568642)))

(assert (=> b!1010708 (= e!568638 e!568642)))

(declare-fun b!1010709 () Bool)

(assert (=> b!1010709 (and (bvsge (index!40612 lt!446705) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446705) (size!31131 lt!446557)))))

(assert (=> b!1010709 (= e!568642 (= (select (arr!30628 lt!446557) (index!40612 lt!446705)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010710 () Bool)

(assert (=> b!1010710 (and (bvsge (index!40612 lt!446705) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446705) (size!31131 lt!446557)))))

(declare-fun res!679044 () Bool)

(assert (=> b!1010710 (= res!679044 (= (select (arr!30628 lt!446557) (index!40612 lt!446705)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010710 (=> res!679044 e!568642)))

(assert (= (and d!120029 c!101994) b!1010703))

(assert (= (and d!120029 (not c!101994)) b!1010705))

(assert (= (and b!1010705 c!101993) b!1010706))

(assert (= (and b!1010705 (not c!101993)) b!1010702))

(assert (= (and d!120029 c!101992) b!1010707))

(assert (= (and d!120029 (not c!101992)) b!1010704))

(assert (= (and b!1010704 res!679043) b!1010708))

(assert (= (and b!1010708 (not res!679045)) b!1010710))

(assert (= (and b!1010710 (not res!679044)) b!1010709))

(declare-fun m!935061 () Bool)

(assert (=> d!120029 m!935061))

(assert (=> d!120029 m!934825))

(declare-fun m!935063 () Bool)

(assert (=> b!1010709 m!935063))

(assert (=> b!1010708 m!935063))

(assert (=> b!1010702 m!934797))

(assert (=> b!1010702 m!934797))

(declare-fun m!935067 () Bool)

(assert (=> b!1010702 m!935067))

(assert (=> b!1010710 m!935063))

(assert (=> b!1010347 d!120029))

(declare-fun d!120033 () Bool)

(declare-fun res!679053 () Bool)

(declare-fun e!568652 () Bool)

(assert (=> d!120033 (=> res!679053 e!568652)))

(assert (=> d!120033 (= res!679053 (= (select (arr!30628 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!120033 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568652)))

(declare-fun b!1010724 () Bool)

(declare-fun e!568653 () Bool)

(assert (=> b!1010724 (= e!568652 e!568653)))

(declare-fun res!679054 () Bool)

(assert (=> b!1010724 (=> (not res!679054) (not e!568653))))

(assert (=> b!1010724 (= res!679054 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31131 a!3219)))))

(declare-fun b!1010725 () Bool)

(assert (=> b!1010725 (= e!568653 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!120033 (not res!679053)) b!1010724))

(assert (= (and b!1010724 res!679054) b!1010725))

(assert (=> d!120033 m!935009))

(declare-fun m!935073 () Bool)

(assert (=> b!1010725 m!935073))

(assert (=> b!1010340 d!120033))

(declare-fun b!1010756 () Bool)

(declare-fun c!102015 () Bool)

(declare-fun lt!446723 () (_ BitVec 64))

(assert (=> b!1010756 (= c!102015 (= lt!446723 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568670 () SeekEntryResult!9560)

(declare-fun e!568669 () SeekEntryResult!9560)

(assert (=> b!1010756 (= e!568670 e!568669)))

(declare-fun b!1010757 () Bool)

(declare-fun lt!446725 () SeekEntryResult!9560)

(assert (=> b!1010757 (= e!568669 (MissingZero!9560 (index!40612 lt!446725)))))

(declare-fun b!1010758 () Bool)

(declare-fun e!568671 () SeekEntryResult!9560)

(assert (=> b!1010758 (= e!568671 Undefined!9560)))

(declare-fun d!120037 () Bool)

(declare-fun lt!446724 () SeekEntryResult!9560)

(assert (=> d!120037 (and (or (is-Undefined!9560 lt!446724) (not (is-Found!9560 lt!446724)) (and (bvsge (index!40611 lt!446724) #b00000000000000000000000000000000) (bvslt (index!40611 lt!446724) (size!31131 a!3219)))) (or (is-Undefined!9560 lt!446724) (is-Found!9560 lt!446724) (not (is-MissingZero!9560 lt!446724)) (and (bvsge (index!40610 lt!446724) #b00000000000000000000000000000000) (bvslt (index!40610 lt!446724) (size!31131 a!3219)))) (or (is-Undefined!9560 lt!446724) (is-Found!9560 lt!446724) (is-MissingZero!9560 lt!446724) (not (is-MissingVacant!9560 lt!446724)) (and (bvsge (index!40613 lt!446724) #b00000000000000000000000000000000) (bvslt (index!40613 lt!446724) (size!31131 a!3219)))) (or (is-Undefined!9560 lt!446724) (ite (is-Found!9560 lt!446724) (= (select (arr!30628 a!3219) (index!40611 lt!446724)) k!2224) (ite (is-MissingZero!9560 lt!446724) (= (select (arr!30628 a!3219) (index!40610 lt!446724)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9560 lt!446724) (= (select (arr!30628 a!3219) (index!40613 lt!446724)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!120037 (= lt!446724 e!568671)))

(declare-fun c!102014 () Bool)

(assert (=> d!120037 (= c!102014 (and (is-Intermediate!9560 lt!446725) (undefined!10372 lt!446725)))))

(assert (=> d!120037 (= lt!446725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!120037 (validMask!0 mask!3464)))

(assert (=> d!120037 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!446724)))

(declare-fun b!1010759 () Bool)

(assert (=> b!1010759 (= e!568671 e!568670)))

(assert (=> b!1010759 (= lt!446723 (select (arr!30628 a!3219) (index!40612 lt!446725)))))

(declare-fun c!102013 () Bool)

(assert (=> b!1010759 (= c!102013 (= lt!446723 k!2224))))

(declare-fun b!1010760 () Bool)

(assert (=> b!1010760 (= e!568670 (Found!9560 (index!40612 lt!446725)))))

(declare-fun b!1010761 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63628 (_ BitVec 32)) SeekEntryResult!9560)

(assert (=> b!1010761 (= e!568669 (seekKeyOrZeroReturnVacant!0 (x!88047 lt!446725) (index!40612 lt!446725) (index!40612 lt!446725) k!2224 a!3219 mask!3464))))

(assert (= (and d!120037 c!102014) b!1010758))

(assert (= (and d!120037 (not c!102014)) b!1010759))

(assert (= (and b!1010759 c!102013) b!1010760))

(assert (= (and b!1010759 (not c!102013)) b!1010756))

(assert (= (and b!1010756 c!102015) b!1010757))

(assert (= (and b!1010756 (not c!102015)) b!1010761))

(declare-fun m!935089 () Bool)

(assert (=> d!120037 m!935089))

(assert (=> d!120037 m!934825))

(declare-fun m!935091 () Bool)

(assert (=> d!120037 m!935091))

(declare-fun m!935093 () Bool)

(assert (=> d!120037 m!935093))

(declare-fun m!935095 () Bool)

(assert (=> d!120037 m!935095))

(assert (=> d!120037 m!935089))

(declare-fun m!935097 () Bool)

(assert (=> d!120037 m!935097))

(declare-fun m!935099 () Bool)

(assert (=> b!1010759 m!935099))

(declare-fun m!935101 () Bool)

(assert (=> b!1010761 m!935101))

(assert (=> b!1010341 d!120037))

(declare-fun e!568673 () SeekEntryResult!9560)

(declare-fun b!1010762 () Bool)

(assert (=> b!1010762 (= e!568673 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30628 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010763 () Bool)

(declare-fun e!568675 () SeekEntryResult!9560)

(assert (=> b!1010763 (= e!568675 (Intermediate!9560 true index!1507 x!1245))))

(declare-fun b!1010764 () Bool)

(declare-fun e!568674 () Bool)

(declare-fun e!568672 () Bool)

(assert (=> b!1010764 (= e!568674 e!568672)))

(declare-fun res!679055 () Bool)

(declare-fun lt!446730 () SeekEntryResult!9560)

(assert (=> b!1010764 (= res!679055 (and (is-Intermediate!9560 lt!446730) (not (undefined!10372 lt!446730)) (bvslt (x!88047 lt!446730) #b01111111111111111111111111111110) (bvsge (x!88047 lt!446730) #b00000000000000000000000000000000) (bvsge (x!88047 lt!446730) x!1245)))))

(assert (=> b!1010764 (=> (not res!679055) (not e!568672))))

(declare-fun b!1010765 () Bool)

(assert (=> b!1010765 (= e!568675 e!568673)))

(declare-fun lt!446729 () (_ BitVec 64))

(declare-fun c!102017 () Bool)

(assert (=> b!1010765 (= c!102017 (or (= lt!446729 (select (arr!30628 a!3219) j!170)) (= (bvadd lt!446729 lt!446729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010766 () Bool)

(assert (=> b!1010766 (= e!568673 (Intermediate!9560 false index!1507 x!1245))))

(declare-fun d!120041 () Bool)

(assert (=> d!120041 e!568674))

(declare-fun c!102016 () Bool)

(assert (=> d!120041 (= c!102016 (and (is-Intermediate!9560 lt!446730) (undefined!10372 lt!446730)))))

(assert (=> d!120041 (= lt!446730 e!568675)))

(declare-fun c!102018 () Bool)

(assert (=> d!120041 (= c!102018 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120041 (= lt!446729 (select (arr!30628 a!3219) index!1507))))

(assert (=> d!120041 (validMask!0 mask!3464)))

(assert (=> d!120041 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30628 a!3219) j!170) a!3219 mask!3464) lt!446730)))

(declare-fun b!1010767 () Bool)

(assert (=> b!1010767 (= e!568674 (bvsge (x!88047 lt!446730) #b01111111111111111111111111111110))))

(declare-fun b!1010768 () Bool)

(assert (=> b!1010768 (and (bvsge (index!40612 lt!446730) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446730) (size!31131 a!3219)))))

(declare-fun res!679057 () Bool)

(assert (=> b!1010768 (= res!679057 (= (select (arr!30628 a!3219) (index!40612 lt!446730)) (select (arr!30628 a!3219) j!170)))))

(declare-fun e!568676 () Bool)

(assert (=> b!1010768 (=> res!679057 e!568676)))

(assert (=> b!1010768 (= e!568672 e!568676)))

(declare-fun b!1010769 () Bool)

(assert (=> b!1010769 (and (bvsge (index!40612 lt!446730) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446730) (size!31131 a!3219)))))

(assert (=> b!1010769 (= e!568676 (= (select (arr!30628 a!3219) (index!40612 lt!446730)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010770 () Bool)

(assert (=> b!1010770 (and (bvsge (index!40612 lt!446730) #b00000000000000000000000000000000) (bvslt (index!40612 lt!446730) (size!31131 a!3219)))))

(declare-fun res!679056 () Bool)

(assert (=> b!1010770 (= res!679056 (= (select (arr!30628 a!3219) (index!40612 lt!446730)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010770 (=> res!679056 e!568676)))

(assert (= (and d!120041 c!102018) b!1010763))

(assert (= (and d!120041 (not c!102018)) b!1010765))

(assert (= (and b!1010765 c!102017) b!1010766))

(assert (= (and b!1010765 (not c!102017)) b!1010762))

(assert (= (and d!120041 c!102016) b!1010767))

(assert (= (and d!120041 (not c!102016)) b!1010764))

(assert (= (and b!1010764 res!679055) b!1010768))

(assert (= (and b!1010768 (not res!679057)) b!1010770))

(assert (= (and b!1010770 (not res!679056)) b!1010769))

(declare-fun m!935105 () Bool)

(assert (=> d!120041 m!935105))

(assert (=> d!120041 m!934825))

(declare-fun m!935107 () Bool)

(assert (=> b!1010769 m!935107))

(assert (=> b!1010768 m!935107))

(assert (=> b!1010762 m!934797))

(assert (=> b!1010762 m!934797))

(assert (=> b!1010762 m!934791))

(declare-fun m!935109 () Bool)

(assert (=> b!1010762 m!935109))

(assert (=> b!1010770 m!935107))

(assert (=> b!1010339 d!120041))

(declare-fun b!1010781 () Bool)

(declare-fun e!568687 () Bool)

(declare-fun e!568685 () Bool)

(assert (=> b!1010781 (= e!568687 e!568685)))

(declare-fun res!679066 () Bool)

(assert (=> b!1010781 (=> (not res!679066) (not e!568685))))

(declare-fun e!568688 () Bool)

(assert (=> b!1010781 (= res!679066 (not e!568688))))

(declare-fun res!679064 () Bool)

(assert (=> b!1010781 (=> (not res!679064) (not e!568688))))

(assert (=> b!1010781 (= res!679064 (validKeyInArray!0 (select (arr!30628 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010782 () Bool)

(declare-fun e!568686 () Bool)

(assert (=> b!1010782 (= e!568685 e!568686)))

(declare-fun c!102021 () Bool)

(assert (=> b!1010782 (= c!102021 (validKeyInArray!0 (select (arr!30628 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010783 () Bool)

(declare-fun call!42427 () Bool)

(assert (=> b!1010783 (= e!568686 call!42427)))

(declare-fun d!120047 () Bool)

(declare-fun res!679065 () Bool)

(assert (=> d!120047 (=> res!679065 e!568687)))

(assert (=> d!120047 (= res!679065 (bvsge #b00000000000000000000000000000000 (size!31131 a!3219)))))

(assert (=> d!120047 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21427) e!568687)))

(declare-fun b!1010784 () Bool)

(declare-fun contains!5905 (List!21430 (_ BitVec 64)) Bool)

(assert (=> b!1010784 (= e!568688 (contains!5905 Nil!21427 (select (arr!30628 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010785 () Bool)

(assert (=> b!1010785 (= e!568686 call!42427)))

(declare-fun bm!42424 () Bool)

(assert (=> bm!42424 (= call!42427 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!102021 (Cons!21426 (select (arr!30628 a!3219) #b00000000000000000000000000000000) Nil!21427) Nil!21427)))))

(assert (= (and d!120047 (not res!679065)) b!1010781))

(assert (= (and b!1010781 res!679064) b!1010784))

(assert (= (and b!1010781 res!679066) b!1010782))

(assert (= (and b!1010782 c!102021) b!1010783))

(assert (= (and b!1010782 (not c!102021)) b!1010785))

(assert (= (or b!1010783 b!1010785) bm!42424))

(assert (=> b!1010781 m!935009))

(assert (=> b!1010781 m!935009))

(assert (=> b!1010781 m!935019))

(assert (=> b!1010782 m!935009))

(assert (=> b!1010782 m!935009))

(assert (=> b!1010782 m!935019))

(assert (=> b!1010784 m!935009))

(assert (=> b!1010784 m!935009))

(declare-fun m!935111 () Bool)

(assert (=> b!1010784 m!935111))

(assert (=> bm!42424 m!935009))

(declare-fun m!935113 () Bool)

(assert (=> bm!42424 m!935113))

(assert (=> b!1010350 d!120047))

(declare-fun d!120051 () Bool)

(assert (=> d!120051 (= (validKeyInArray!0 (select (arr!30628 a!3219) j!170)) (and (not (= (select (arr!30628 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30628 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010343 d!120051))

(declare-fun d!120053 () Bool)

(assert (=> d!120053 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010342 d!120053))

(push 1)

