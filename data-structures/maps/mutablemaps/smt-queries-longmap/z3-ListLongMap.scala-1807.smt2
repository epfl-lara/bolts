; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32606 () Bool)

(assert start!32606)

(declare-fun b!325631 () Bool)

(declare-fun res!178986 () Bool)

(declare-fun e!200658 () Bool)

(assert (=> b!325631 (=> (not res!178986) (not e!200658))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325631 (= res!178986 (validKeyInArray!0 k0!2497))))

(declare-fun b!325632 () Bool)

(declare-fun res!178988 () Bool)

(declare-fun e!200659 () Bool)

(assert (=> b!325632 (=> (not res!178988) (not e!200659))))

(declare-datatypes ((array!16690 0))(
  ( (array!16691 (arr!7898 (Array (_ BitVec 32) (_ BitVec 64))) (size!8250 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16690)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325632 (= res!178988 (and (= (select (arr!7898 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8250 a!3305))))))

(declare-fun lt!157103 () (_ BitVec 32))

(declare-fun e!200657 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun b!325633 () Bool)

(declare-datatypes ((SeekEntryResult!3040 0))(
  ( (MissingZero!3040 (index!14336 (_ BitVec 32))) (Found!3040 (index!14337 (_ BitVec 32))) (Intermediate!3040 (undefined!3852 Bool) (index!14338 (_ BitVec 32)) (x!32544 (_ BitVec 32))) (Undefined!3040) (MissingVacant!3040 (index!14339 (_ BitVec 32))) )
))
(declare-fun lt!157102 () SeekEntryResult!3040)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16690 (_ BitVec 32)) SeekEntryResult!3040)

(assert (=> b!325633 (= e!200657 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157103 k0!2497 a!3305 mask!3777) lt!157102)))))

(declare-fun b!325634 () Bool)

(assert (=> b!325634 (= e!200659 e!200657)))

(declare-fun res!178979 () Bool)

(assert (=> b!325634 (=> (not res!178979) (not e!200657))))

(assert (=> b!325634 (= res!178979 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (bvsge lt!157103 #b00000000000000000000000000000000) (bvslt lt!157103 (size!8250 a!3305))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325634 (= lt!157103 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325635 () Bool)

(declare-fun res!178985 () Bool)

(assert (=> b!325635 (=> (not res!178985) (not e!200658))))

(assert (=> b!325635 (= res!178985 (and (= (size!8250 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8250 a!3305))))))

(declare-fun b!325636 () Bool)

(declare-fun res!178987 () Bool)

(assert (=> b!325636 (=> (not res!178987) (not e!200659))))

(assert (=> b!325636 (= res!178987 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157102))))

(declare-fun b!325637 () Bool)

(assert (=> b!325637 (= e!200658 e!200659)))

(declare-fun res!178982 () Bool)

(assert (=> b!325637 (=> (not res!178982) (not e!200659))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325637 (= res!178982 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157102))))

(assert (=> b!325637 (= lt!157102 (Intermediate!3040 false resIndex!58 resX!58))))

(declare-fun b!325638 () Bool)

(declare-fun res!178989 () Bool)

(assert (=> b!325638 (=> (not res!178989) (not e!200658))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16690 (_ BitVec 32)) SeekEntryResult!3040)

(assert (=> b!325638 (= res!178989 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3040 i!1250)))))

(declare-fun b!325640 () Bool)

(declare-fun res!178983 () Bool)

(assert (=> b!325640 (=> (not res!178983) (not e!200658))))

(declare-fun arrayContainsKey!0 (array!16690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325640 (= res!178983 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325641 () Bool)

(declare-fun res!178980 () Bool)

(assert (=> b!325641 (=> (not res!178980) (not e!200658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16690 (_ BitVec 32)) Bool)

(assert (=> b!325641 (= res!178980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!178981 () Bool)

(assert (=> start!32606 (=> (not res!178981) (not e!200658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32606 (= res!178981 (validMask!0 mask!3777))))

(assert (=> start!32606 e!200658))

(declare-fun array_inv!5852 (array!16690) Bool)

(assert (=> start!32606 (array_inv!5852 a!3305)))

(assert (=> start!32606 true))

(declare-fun b!325639 () Bool)

(declare-fun res!178984 () Bool)

(assert (=> b!325639 (=> (not res!178984) (not e!200659))))

(assert (=> b!325639 (= res!178984 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7898 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(assert (= (and start!32606 res!178981) b!325635))

(assert (= (and b!325635 res!178985) b!325631))

(assert (= (and b!325631 res!178986) b!325640))

(assert (= (and b!325640 res!178983) b!325638))

(assert (= (and b!325638 res!178989) b!325641))

(assert (= (and b!325641 res!178980) b!325637))

(assert (= (and b!325637 res!178982) b!325632))

(assert (= (and b!325632 res!178988) b!325636))

(assert (= (and b!325636 res!178987) b!325639))

(assert (= (and b!325639 res!178984) b!325634))

(assert (= (and b!325634 res!178979) b!325633))

(declare-fun m!332379 () Bool)

(assert (=> b!325633 m!332379))

(declare-fun m!332381 () Bool)

(assert (=> b!325638 m!332381))

(declare-fun m!332383 () Bool)

(assert (=> b!325632 m!332383))

(declare-fun m!332385 () Bool)

(assert (=> start!32606 m!332385))

(declare-fun m!332387 () Bool)

(assert (=> start!32606 m!332387))

(declare-fun m!332389 () Bool)

(assert (=> b!325641 m!332389))

(declare-fun m!332391 () Bool)

(assert (=> b!325636 m!332391))

(declare-fun m!332393 () Bool)

(assert (=> b!325637 m!332393))

(assert (=> b!325637 m!332393))

(declare-fun m!332395 () Bool)

(assert (=> b!325637 m!332395))

(declare-fun m!332397 () Bool)

(assert (=> b!325639 m!332397))

(declare-fun m!332399 () Bool)

(assert (=> b!325631 m!332399))

(declare-fun m!332401 () Bool)

(assert (=> b!325640 m!332401))

(declare-fun m!332403 () Bool)

(assert (=> b!325634 m!332403))

(check-sat (not b!325636) (not b!325633) (not b!325634) (not b!325631) (not start!32606) (not b!325638) (not b!325641) (not b!325640) (not b!325637))
(check-sat)
(get-model)

(declare-fun d!69577 () Bool)

(declare-fun e!200686 () Bool)

(assert (=> d!69577 e!200686))

(declare-fun c!50961 () Bool)

(declare-fun lt!157115 () SeekEntryResult!3040)

(get-info :version)

(assert (=> d!69577 (= c!50961 (and ((_ is Intermediate!3040) lt!157115) (undefined!3852 lt!157115)))))

(declare-fun e!200683 () SeekEntryResult!3040)

(assert (=> d!69577 (= lt!157115 e!200683)))

(declare-fun c!50963 () Bool)

(assert (=> d!69577 (= c!50963 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157114 () (_ BitVec 64))

(assert (=> d!69577 (= lt!157114 (select (arr!7898 a!3305) index!1840))))

(assert (=> d!69577 (validMask!0 mask!3777)))

(assert (=> d!69577 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157115)))

(declare-fun b!325693 () Bool)

(assert (=> b!325693 (and (bvsge (index!14338 lt!157115) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157115) (size!8250 a!3305)))))

(declare-fun e!200685 () Bool)

(assert (=> b!325693 (= e!200685 (= (select (arr!7898 a!3305) (index!14338 lt!157115)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200682 () SeekEntryResult!3040)

(declare-fun b!325694 () Bool)

(assert (=> b!325694 (= e!200682 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!325695 () Bool)

(assert (=> b!325695 (and (bvsge (index!14338 lt!157115) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157115) (size!8250 a!3305)))))

(declare-fun res!179029 () Bool)

(assert (=> b!325695 (= res!179029 (= (select (arr!7898 a!3305) (index!14338 lt!157115)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325695 (=> res!179029 e!200685)))

(declare-fun b!325696 () Bool)

(assert (=> b!325696 (and (bvsge (index!14338 lt!157115) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157115) (size!8250 a!3305)))))

(declare-fun res!179030 () Bool)

(assert (=> b!325696 (= res!179030 (= (select (arr!7898 a!3305) (index!14338 lt!157115)) k0!2497))))

(assert (=> b!325696 (=> res!179030 e!200685)))

(declare-fun e!200684 () Bool)

(assert (=> b!325696 (= e!200684 e!200685)))

(declare-fun b!325697 () Bool)

(assert (=> b!325697 (= e!200686 e!200684)))

(declare-fun res!179031 () Bool)

(assert (=> b!325697 (= res!179031 (and ((_ is Intermediate!3040) lt!157115) (not (undefined!3852 lt!157115)) (bvslt (x!32544 lt!157115) #b01111111111111111111111111111110) (bvsge (x!32544 lt!157115) #b00000000000000000000000000000000) (bvsge (x!32544 lt!157115) x!1490)))))

(assert (=> b!325697 (=> (not res!179031) (not e!200684))))

(declare-fun b!325698 () Bool)

(assert (=> b!325698 (= e!200683 (Intermediate!3040 true index!1840 x!1490))))

(declare-fun b!325699 () Bool)

(assert (=> b!325699 (= e!200683 e!200682)))

(declare-fun c!50962 () Bool)

(assert (=> b!325699 (= c!50962 (or (= lt!157114 k0!2497) (= (bvadd lt!157114 lt!157114) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325700 () Bool)

(assert (=> b!325700 (= e!200686 (bvsge (x!32544 lt!157115) #b01111111111111111111111111111110))))

(declare-fun b!325701 () Bool)

(assert (=> b!325701 (= e!200682 (Intermediate!3040 false index!1840 x!1490))))

(assert (= (and d!69577 c!50963) b!325698))

(assert (= (and d!69577 (not c!50963)) b!325699))

(assert (= (and b!325699 c!50962) b!325701))

(assert (= (and b!325699 (not c!50962)) b!325694))

(assert (= (and d!69577 c!50961) b!325700))

(assert (= (and d!69577 (not c!50961)) b!325697))

(assert (= (and b!325697 res!179031) b!325696))

(assert (= (and b!325696 (not res!179030)) b!325695))

(assert (= (and b!325695 (not res!179029)) b!325693))

(declare-fun m!332431 () Bool)

(assert (=> b!325696 m!332431))

(assert (=> b!325694 m!332403))

(assert (=> b!325694 m!332403))

(declare-fun m!332433 () Bool)

(assert (=> b!325694 m!332433))

(assert (=> b!325693 m!332431))

(assert (=> d!69577 m!332397))

(assert (=> d!69577 m!332385))

(assert (=> b!325695 m!332431))

(assert (=> b!325636 d!69577))

(declare-fun b!325710 () Bool)

(declare-fun e!200694 () Bool)

(declare-fun e!200695 () Bool)

(assert (=> b!325710 (= e!200694 e!200695)))

(declare-fun c!50966 () Bool)

(assert (=> b!325710 (= c!50966 (validKeyInArray!0 (select (arr!7898 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!325711 () Bool)

(declare-fun e!200693 () Bool)

(declare-fun call!26078 () Bool)

(assert (=> b!325711 (= e!200693 call!26078)))

(declare-fun b!325712 () Bool)

(assert (=> b!325712 (= e!200695 e!200693)))

(declare-fun lt!157123 () (_ BitVec 64))

(assert (=> b!325712 (= lt!157123 (select (arr!7898 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10087 0))(
  ( (Unit!10088) )
))
(declare-fun lt!157124 () Unit!10087)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16690 (_ BitVec 64) (_ BitVec 32)) Unit!10087)

(assert (=> b!325712 (= lt!157124 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157123 #b00000000000000000000000000000000))))

(assert (=> b!325712 (arrayContainsKey!0 a!3305 lt!157123 #b00000000000000000000000000000000)))

(declare-fun lt!157122 () Unit!10087)

(assert (=> b!325712 (= lt!157122 lt!157124)))

(declare-fun res!179036 () Bool)

(assert (=> b!325712 (= res!179036 (= (seekEntryOrOpen!0 (select (arr!7898 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3040 #b00000000000000000000000000000000)))))

(assert (=> b!325712 (=> (not res!179036) (not e!200693))))

(declare-fun d!69581 () Bool)

(declare-fun res!179037 () Bool)

(assert (=> d!69581 (=> res!179037 e!200694)))

(assert (=> d!69581 (= res!179037 (bvsge #b00000000000000000000000000000000 (size!8250 a!3305)))))

(assert (=> d!69581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200694)))

(declare-fun b!325713 () Bool)

(assert (=> b!325713 (= e!200695 call!26078)))

(declare-fun bm!26075 () Bool)

(assert (=> bm!26075 (= call!26078 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69581 (not res!179037)) b!325710))

(assert (= (and b!325710 c!50966) b!325712))

(assert (= (and b!325710 (not c!50966)) b!325713))

(assert (= (and b!325712 res!179036) b!325711))

(assert (= (or b!325711 b!325713) bm!26075))

(declare-fun m!332435 () Bool)

(assert (=> b!325710 m!332435))

(assert (=> b!325710 m!332435))

(declare-fun m!332437 () Bool)

(assert (=> b!325710 m!332437))

(assert (=> b!325712 m!332435))

(declare-fun m!332439 () Bool)

(assert (=> b!325712 m!332439))

(declare-fun m!332441 () Bool)

(assert (=> b!325712 m!332441))

(assert (=> b!325712 m!332435))

(declare-fun m!332443 () Bool)

(assert (=> b!325712 m!332443))

(declare-fun m!332445 () Bool)

(assert (=> bm!26075 m!332445))

(assert (=> b!325641 d!69581))

(declare-fun d!69589 () Bool)

(assert (=> d!69589 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!325631 d!69589))

(declare-fun d!69591 () Bool)

(declare-fun res!179042 () Bool)

(declare-fun e!200700 () Bool)

(assert (=> d!69591 (=> res!179042 e!200700)))

(assert (=> d!69591 (= res!179042 (= (select (arr!7898 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69591 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!200700)))

(declare-fun b!325718 () Bool)

(declare-fun e!200701 () Bool)

(assert (=> b!325718 (= e!200700 e!200701)))

(declare-fun res!179043 () Bool)

(assert (=> b!325718 (=> (not res!179043) (not e!200701))))

(assert (=> b!325718 (= res!179043 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8250 a!3305)))))

(declare-fun b!325719 () Bool)

(assert (=> b!325719 (= e!200701 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69591 (not res!179042)) b!325718))

(assert (= (and b!325718 res!179043) b!325719))

(assert (=> d!69591 m!332435))

(declare-fun m!332447 () Bool)

(assert (=> b!325719 m!332447))

(assert (=> b!325640 d!69591))

(declare-fun d!69593 () Bool)

(declare-fun e!200706 () Bool)

(assert (=> d!69593 e!200706))

(declare-fun c!50967 () Bool)

(declare-fun lt!157126 () SeekEntryResult!3040)

(assert (=> d!69593 (= c!50967 (and ((_ is Intermediate!3040) lt!157126) (undefined!3852 lt!157126)))))

(declare-fun e!200703 () SeekEntryResult!3040)

(assert (=> d!69593 (= lt!157126 e!200703)))

(declare-fun c!50969 () Bool)

(assert (=> d!69593 (= c!50969 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(declare-fun lt!157125 () (_ BitVec 64))

(assert (=> d!69593 (= lt!157125 (select (arr!7898 a!3305) lt!157103))))

(assert (=> d!69593 (validMask!0 mask!3777)))

(assert (=> d!69593 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) lt!157103 k0!2497 a!3305 mask!3777) lt!157126)))

(declare-fun b!325720 () Bool)

(assert (=> b!325720 (and (bvsge (index!14338 lt!157126) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157126) (size!8250 a!3305)))))

(declare-fun e!200705 () Bool)

(assert (=> b!325720 (= e!200705 (= (select (arr!7898 a!3305) (index!14338 lt!157126)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325721 () Bool)

(declare-fun e!200702 () SeekEntryResult!3040)

(assert (=> b!325721 (= e!200702 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 lt!157103 (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!325722 () Bool)

(assert (=> b!325722 (and (bvsge (index!14338 lt!157126) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157126) (size!8250 a!3305)))))

(declare-fun res!179044 () Bool)

(assert (=> b!325722 (= res!179044 (= (select (arr!7898 a!3305) (index!14338 lt!157126)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325722 (=> res!179044 e!200705)))

(declare-fun b!325723 () Bool)

(assert (=> b!325723 (and (bvsge (index!14338 lt!157126) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157126) (size!8250 a!3305)))))

(declare-fun res!179045 () Bool)

(assert (=> b!325723 (= res!179045 (= (select (arr!7898 a!3305) (index!14338 lt!157126)) k0!2497))))

(assert (=> b!325723 (=> res!179045 e!200705)))

(declare-fun e!200704 () Bool)

(assert (=> b!325723 (= e!200704 e!200705)))

(declare-fun b!325724 () Bool)

(assert (=> b!325724 (= e!200706 e!200704)))

(declare-fun res!179046 () Bool)

(assert (=> b!325724 (= res!179046 (and ((_ is Intermediate!3040) lt!157126) (not (undefined!3852 lt!157126)) (bvslt (x!32544 lt!157126) #b01111111111111111111111111111110) (bvsge (x!32544 lt!157126) #b00000000000000000000000000000000) (bvsge (x!32544 lt!157126) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!325724 (=> (not res!179046) (not e!200704))))

(declare-fun b!325725 () Bool)

(assert (=> b!325725 (= e!200703 (Intermediate!3040 true lt!157103 (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!325726 () Bool)

(assert (=> b!325726 (= e!200703 e!200702)))

(declare-fun c!50968 () Bool)

(assert (=> b!325726 (= c!50968 (or (= lt!157125 k0!2497) (= (bvadd lt!157125 lt!157125) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325727 () Bool)

(assert (=> b!325727 (= e!200706 (bvsge (x!32544 lt!157126) #b01111111111111111111111111111110))))

(declare-fun b!325728 () Bool)

(assert (=> b!325728 (= e!200702 (Intermediate!3040 false lt!157103 (bvadd #b00000000000000000000000000000001 x!1490)))))

(assert (= (and d!69593 c!50969) b!325725))

(assert (= (and d!69593 (not c!50969)) b!325726))

(assert (= (and b!325726 c!50968) b!325728))

(assert (= (and b!325726 (not c!50968)) b!325721))

(assert (= (and d!69593 c!50967) b!325727))

(assert (= (and d!69593 (not c!50967)) b!325724))

(assert (= (and b!325724 res!179046) b!325723))

(assert (= (and b!325723 (not res!179045)) b!325722))

(assert (= (and b!325722 (not res!179044)) b!325720))

(declare-fun m!332449 () Bool)

(assert (=> b!325723 m!332449))

(declare-fun m!332451 () Bool)

(assert (=> b!325721 m!332451))

(assert (=> b!325721 m!332451))

(declare-fun m!332453 () Bool)

(assert (=> b!325721 m!332453))

(assert (=> b!325720 m!332449))

(declare-fun m!332455 () Bool)

(assert (=> d!69593 m!332455))

(assert (=> d!69593 m!332385))

(assert (=> b!325722 m!332449))

(assert (=> b!325633 d!69593))

(declare-fun d!69595 () Bool)

(declare-fun lt!157133 () (_ BitVec 32))

(assert (=> d!69595 (and (bvsge lt!157133 #b00000000000000000000000000000000) (bvslt lt!157133 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69595 (= lt!157133 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69595 (validMask!0 mask!3777)))

(assert (=> d!69595 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157133)))

(declare-fun bs!11329 () Bool)

(assert (= bs!11329 d!69595))

(declare-fun m!332457 () Bool)

(assert (=> bs!11329 m!332457))

(assert (=> bs!11329 m!332385))

(assert (=> b!325634 d!69595))

(declare-fun d!69597 () Bool)

(declare-fun e!200713 () Bool)

(assert (=> d!69597 e!200713))

(declare-fun c!50972 () Bool)

(declare-fun lt!157137 () SeekEntryResult!3040)

(assert (=> d!69597 (= c!50972 (and ((_ is Intermediate!3040) lt!157137) (undefined!3852 lt!157137)))))

(declare-fun e!200710 () SeekEntryResult!3040)

(assert (=> d!69597 (= lt!157137 e!200710)))

(declare-fun c!50974 () Bool)

(assert (=> d!69597 (= c!50974 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157136 () (_ BitVec 64))

(assert (=> d!69597 (= lt!157136 (select (arr!7898 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69597 (validMask!0 mask!3777)))

(assert (=> d!69597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157137)))

(declare-fun b!325733 () Bool)

(assert (=> b!325733 (and (bvsge (index!14338 lt!157137) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157137) (size!8250 a!3305)))))

(declare-fun e!200712 () Bool)

(assert (=> b!325733 (= e!200712 (= (select (arr!7898 a!3305) (index!14338 lt!157137)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!200709 () SeekEntryResult!3040)

(declare-fun b!325734 () Bool)

(assert (=> b!325734 (= e!200709 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!325735 () Bool)

(assert (=> b!325735 (and (bvsge (index!14338 lt!157137) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157137) (size!8250 a!3305)))))

(declare-fun res!179047 () Bool)

(assert (=> b!325735 (= res!179047 (= (select (arr!7898 a!3305) (index!14338 lt!157137)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325735 (=> res!179047 e!200712)))

(declare-fun b!325736 () Bool)

(assert (=> b!325736 (and (bvsge (index!14338 lt!157137) #b00000000000000000000000000000000) (bvslt (index!14338 lt!157137) (size!8250 a!3305)))))

(declare-fun res!179048 () Bool)

(assert (=> b!325736 (= res!179048 (= (select (arr!7898 a!3305) (index!14338 lt!157137)) k0!2497))))

(assert (=> b!325736 (=> res!179048 e!200712)))

(declare-fun e!200711 () Bool)

(assert (=> b!325736 (= e!200711 e!200712)))

(declare-fun b!325737 () Bool)

(assert (=> b!325737 (= e!200713 e!200711)))

(declare-fun res!179049 () Bool)

(assert (=> b!325737 (= res!179049 (and ((_ is Intermediate!3040) lt!157137) (not (undefined!3852 lt!157137)) (bvslt (x!32544 lt!157137) #b01111111111111111111111111111110) (bvsge (x!32544 lt!157137) #b00000000000000000000000000000000) (bvsge (x!32544 lt!157137) #b00000000000000000000000000000000)))))

(assert (=> b!325737 (=> (not res!179049) (not e!200711))))

(declare-fun b!325738 () Bool)

(assert (=> b!325738 (= e!200710 (Intermediate!3040 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325739 () Bool)

(assert (=> b!325739 (= e!200710 e!200709)))

(declare-fun c!50973 () Bool)

(assert (=> b!325739 (= c!50973 (or (= lt!157136 k0!2497) (= (bvadd lt!157136 lt!157136) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325740 () Bool)

(assert (=> b!325740 (= e!200713 (bvsge (x!32544 lt!157137) #b01111111111111111111111111111110))))

(declare-fun b!325741 () Bool)

(assert (=> b!325741 (= e!200709 (Intermediate!3040 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!69597 c!50974) b!325738))

(assert (= (and d!69597 (not c!50974)) b!325739))

(assert (= (and b!325739 c!50973) b!325741))

(assert (= (and b!325739 (not c!50973)) b!325734))

(assert (= (and d!69597 c!50972) b!325740))

(assert (= (and d!69597 (not c!50972)) b!325737))

(assert (= (and b!325737 res!179049) b!325736))

(assert (= (and b!325736 (not res!179048)) b!325735))

(assert (= (and b!325735 (not res!179047)) b!325733))

(declare-fun m!332459 () Bool)

(assert (=> b!325736 m!332459))

(assert (=> b!325734 m!332393))

(declare-fun m!332461 () Bool)

(assert (=> b!325734 m!332461))

(assert (=> b!325734 m!332461))

(declare-fun m!332463 () Bool)

(assert (=> b!325734 m!332463))

(assert (=> b!325733 m!332459))

(assert (=> d!69597 m!332393))

(declare-fun m!332465 () Bool)

(assert (=> d!69597 m!332465))

(assert (=> d!69597 m!332385))

(assert (=> b!325735 m!332459))

(assert (=> b!325637 d!69597))

(declare-fun d!69599 () Bool)

(declare-fun lt!157150 () (_ BitVec 32))

(declare-fun lt!157149 () (_ BitVec 32))

(assert (=> d!69599 (= lt!157150 (bvmul (bvxor lt!157149 (bvlshr lt!157149 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69599 (= lt!157149 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69599 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!179050 (let ((h!5414 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32549 (bvmul (bvxor h!5414 (bvlshr h!5414 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32549 (bvlshr x!32549 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!179050 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!179050 #b00000000000000000000000000000000))))))

(assert (=> d!69599 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157150 (bvlshr lt!157150 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!325637 d!69599))

(declare-fun d!69603 () Bool)

(assert (=> d!69603 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32606 d!69603))

(declare-fun d!69607 () Bool)

(assert (=> d!69607 (= (array_inv!5852 a!3305) (bvsge (size!8250 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32606 d!69607))

(declare-fun b!325852 () Bool)

(declare-fun e!200778 () SeekEntryResult!3040)

(declare-fun lt!157183 () SeekEntryResult!3040)

(assert (=> b!325852 (= e!200778 (Found!3040 (index!14338 lt!157183)))))

(declare-fun b!325853 () Bool)

(declare-fun e!200780 () SeekEntryResult!3040)

(assert (=> b!325853 (= e!200780 (MissingZero!3040 (index!14338 lt!157183)))))

(declare-fun b!325854 () Bool)

(declare-fun e!200779 () SeekEntryResult!3040)

(assert (=> b!325854 (= e!200779 e!200778)))

(declare-fun lt!157185 () (_ BitVec 64))

(assert (=> b!325854 (= lt!157185 (select (arr!7898 a!3305) (index!14338 lt!157183)))))

(declare-fun c!51017 () Bool)

(assert (=> b!325854 (= c!51017 (= lt!157185 k0!2497))))

(declare-fun b!325855 () Bool)

(declare-fun c!51016 () Bool)

(assert (=> b!325855 (= c!51016 (= lt!157185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325855 (= e!200778 e!200780)))

(declare-fun d!69609 () Bool)

(declare-fun lt!157184 () SeekEntryResult!3040)

(assert (=> d!69609 (and (or ((_ is Undefined!3040) lt!157184) (not ((_ is Found!3040) lt!157184)) (and (bvsge (index!14337 lt!157184) #b00000000000000000000000000000000) (bvslt (index!14337 lt!157184) (size!8250 a!3305)))) (or ((_ is Undefined!3040) lt!157184) ((_ is Found!3040) lt!157184) (not ((_ is MissingZero!3040) lt!157184)) (and (bvsge (index!14336 lt!157184) #b00000000000000000000000000000000) (bvslt (index!14336 lt!157184) (size!8250 a!3305)))) (or ((_ is Undefined!3040) lt!157184) ((_ is Found!3040) lt!157184) ((_ is MissingZero!3040) lt!157184) (not ((_ is MissingVacant!3040) lt!157184)) (and (bvsge (index!14339 lt!157184) #b00000000000000000000000000000000) (bvslt (index!14339 lt!157184) (size!8250 a!3305)))) (or ((_ is Undefined!3040) lt!157184) (ite ((_ is Found!3040) lt!157184) (= (select (arr!7898 a!3305) (index!14337 lt!157184)) k0!2497) (ite ((_ is MissingZero!3040) lt!157184) (= (select (arr!7898 a!3305) (index!14336 lt!157184)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3040) lt!157184) (= (select (arr!7898 a!3305) (index!14339 lt!157184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69609 (= lt!157184 e!200779)))

(declare-fun c!51015 () Bool)

(assert (=> d!69609 (= c!51015 (and ((_ is Intermediate!3040) lt!157183) (undefined!3852 lt!157183)))))

(assert (=> d!69609 (= lt!157183 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69609 (validMask!0 mask!3777)))

(assert (=> d!69609 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157184)))

(declare-fun b!325856 () Bool)

(assert (=> b!325856 (= e!200779 Undefined!3040)))

(declare-fun b!325857 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16690 (_ BitVec 32)) SeekEntryResult!3040)

(assert (=> b!325857 (= e!200780 (seekKeyOrZeroReturnVacant!0 (x!32544 lt!157183) (index!14338 lt!157183) (index!14338 lt!157183) k0!2497 a!3305 mask!3777))))

(assert (= (and d!69609 c!51015) b!325856))

(assert (= (and d!69609 (not c!51015)) b!325854))

(assert (= (and b!325854 c!51017) b!325852))

(assert (= (and b!325854 (not c!51017)) b!325855))

(assert (= (and b!325855 c!51016) b!325853))

(assert (= (and b!325855 (not c!51016)) b!325857))

(declare-fun m!332503 () Bool)

(assert (=> b!325854 m!332503))

(assert (=> d!69609 m!332385))

(assert (=> d!69609 m!332393))

(declare-fun m!332505 () Bool)

(assert (=> d!69609 m!332505))

(declare-fun m!332507 () Bool)

(assert (=> d!69609 m!332507))

(assert (=> d!69609 m!332393))

(assert (=> d!69609 m!332395))

(declare-fun m!332509 () Bool)

(assert (=> d!69609 m!332509))

(declare-fun m!332511 () Bool)

(assert (=> b!325857 m!332511))

(assert (=> b!325638 d!69609))

(check-sat (not b!325710) (not bm!26075) (not b!325721) (not b!325719) (not d!69593) (not b!325694) (not d!69577) (not b!325857) (not d!69597) (not b!325712) (not d!69595) (not d!69609) (not b!325734))
(check-sat)
