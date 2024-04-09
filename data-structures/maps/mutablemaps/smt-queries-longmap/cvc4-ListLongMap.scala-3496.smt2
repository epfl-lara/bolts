; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48512 () Bool)

(assert start!48512)

(declare-fun b!532544 () Bool)

(declare-fun res!328047 () Bool)

(declare-fun e!310004 () Bool)

(assert (=> b!532544 (=> (not res!328047) (not e!310004))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33731 0))(
  ( (array!33732 (arr!16202 (Array (_ BitVec 32) (_ BitVec 64))) (size!16566 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33731)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532544 (= res!328047 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16566 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16566 a!3154)) (= (select (arr!16202 a!3154) resIndex!32) (select (arr!16202 a!3154) j!147))))))

(declare-fun b!532545 () Bool)

(declare-fun res!328049 () Bool)

(assert (=> b!532545 (=> (not res!328049) (not e!310004))))

(declare-datatypes ((List!10374 0))(
  ( (Nil!10371) (Cons!10370 (h!11310 (_ BitVec 64)) (t!16610 List!10374)) )
))
(declare-fun arrayNoDuplicates!0 (array!33731 (_ BitVec 32) List!10374) Bool)

(assert (=> b!532545 (= res!328049 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10371))))

(declare-fun b!532546 () Bool)

(declare-fun res!328042 () Bool)

(declare-fun e!310005 () Bool)

(assert (=> b!532546 (=> (not res!328042) (not e!310005))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532546 (= res!328042 (and (= (size!16566 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16566 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16566 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!328048 () Bool)

(assert (=> start!48512 (=> (not res!328048) (not e!310005))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48512 (= res!328048 (validMask!0 mask!3216))))

(assert (=> start!48512 e!310005))

(assert (=> start!48512 true))

(declare-fun array_inv!11976 (array!33731) Bool)

(assert (=> start!48512 (array_inv!11976 a!3154)))

(declare-fun b!532547 () Bool)

(declare-fun lt!245233 () (_ BitVec 32))

(assert (=> b!532547 (= e!310004 (and (bvsge mask!3216 #b00000000000000000000000000000000) (or (bvslt lt!245233 #b00000000000000000000000000000000) (bvsge lt!245233 (bvadd #b00000000000000000000000000000001 mask!3216)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532547 (= lt!245233 (toIndex!0 (select (arr!16202 a!3154) j!147) mask!3216))))

(declare-fun b!532548 () Bool)

(declare-fun res!328043 () Bool)

(assert (=> b!532548 (=> (not res!328043) (not e!310004))))

(declare-datatypes ((SeekEntryResult!4667 0))(
  ( (MissingZero!4667 (index!20892 (_ BitVec 32))) (Found!4667 (index!20893 (_ BitVec 32))) (Intermediate!4667 (undefined!5479 Bool) (index!20894 (_ BitVec 32)) (x!49887 (_ BitVec 32))) (Undefined!4667) (MissingVacant!4667 (index!20895 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33731 (_ BitVec 32)) SeekEntryResult!4667)

(assert (=> b!532548 (= res!328043 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16202 a!3154) j!147) a!3154 mask!3216) (Intermediate!4667 false resIndex!32 resX!32)))))

(declare-fun b!532549 () Bool)

(declare-fun res!328046 () Bool)

(assert (=> b!532549 (=> (not res!328046) (not e!310005))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532549 (= res!328046 (validKeyInArray!0 k!1998))))

(declare-fun b!532550 () Bool)

(declare-fun res!328040 () Bool)

(assert (=> b!532550 (=> (not res!328040) (not e!310005))))

(assert (=> b!532550 (= res!328040 (validKeyInArray!0 (select (arr!16202 a!3154) j!147)))))

(declare-fun b!532551 () Bool)

(declare-fun res!328044 () Bool)

(assert (=> b!532551 (=> (not res!328044) (not e!310004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33731 (_ BitVec 32)) Bool)

(assert (=> b!532551 (= res!328044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532552 () Bool)

(declare-fun res!328045 () Bool)

(assert (=> b!532552 (=> (not res!328045) (not e!310005))))

(declare-fun arrayContainsKey!0 (array!33731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532552 (= res!328045 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532553 () Bool)

(assert (=> b!532553 (= e!310005 e!310004)))

(declare-fun res!328041 () Bool)

(assert (=> b!532553 (=> (not res!328041) (not e!310004))))

(declare-fun lt!245234 () SeekEntryResult!4667)

(assert (=> b!532553 (= res!328041 (or (= lt!245234 (MissingZero!4667 i!1153)) (= lt!245234 (MissingVacant!4667 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33731 (_ BitVec 32)) SeekEntryResult!4667)

(assert (=> b!532553 (= lt!245234 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48512 res!328048) b!532546))

(assert (= (and b!532546 res!328042) b!532550))

(assert (= (and b!532550 res!328040) b!532549))

(assert (= (and b!532549 res!328046) b!532552))

(assert (= (and b!532552 res!328045) b!532553))

(assert (= (and b!532553 res!328041) b!532551))

(assert (= (and b!532551 res!328044) b!532545))

(assert (= (and b!532545 res!328049) b!532544))

(assert (= (and b!532544 res!328047) b!532548))

(assert (= (and b!532548 res!328043) b!532547))

(declare-fun m!512671 () Bool)

(assert (=> b!532545 m!512671))

(declare-fun m!512673 () Bool)

(assert (=> b!532547 m!512673))

(assert (=> b!532547 m!512673))

(declare-fun m!512675 () Bool)

(assert (=> b!532547 m!512675))

(assert (=> b!532548 m!512673))

(assert (=> b!532548 m!512673))

(declare-fun m!512677 () Bool)

(assert (=> b!532548 m!512677))

(declare-fun m!512679 () Bool)

(assert (=> b!532552 m!512679))

(declare-fun m!512681 () Bool)

(assert (=> start!48512 m!512681))

(declare-fun m!512683 () Bool)

(assert (=> start!48512 m!512683))

(declare-fun m!512685 () Bool)

(assert (=> b!532549 m!512685))

(assert (=> b!532550 m!512673))

(assert (=> b!532550 m!512673))

(declare-fun m!512687 () Bool)

(assert (=> b!532550 m!512687))

(declare-fun m!512689 () Bool)

(assert (=> b!532553 m!512689))

(declare-fun m!512691 () Bool)

(assert (=> b!532551 m!512691))

(declare-fun m!512693 () Bool)

(assert (=> b!532544 m!512693))

(assert (=> b!532544 m!512673))

(push 1)

(assert (not b!532548))

(assert (not start!48512))

(assert (not b!532547))

(assert (not b!532551))

(assert (not b!532550))

(assert (not b!532552))

(assert (not b!532545))

(assert (not b!532549))

(assert (not b!532553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!532621 () Bool)

(declare-fun e!310044 () SeekEntryResult!4667)

(declare-fun e!310048 () SeekEntryResult!4667)

(assert (=> b!532621 (= e!310044 e!310048)))

(declare-fun lt!245267 () (_ BitVec 64))

(declare-fun c!62591 () Bool)

(assert (=> b!532621 (= c!62591 (or (= lt!245267 (select (arr!16202 a!3154) j!147)) (= (bvadd lt!245267 lt!245267) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!532622 () Bool)

(declare-fun e!310046 () Bool)

(declare-fun e!310045 () Bool)

(assert (=> b!532622 (= e!310046 e!310045)))

(declare-fun res!328063 () Bool)

(declare-fun lt!245266 () SeekEntryResult!4667)

(assert (=> b!532622 (= res!328063 (and (is-Intermediate!4667 lt!245266) (not (undefined!5479 lt!245266)) (bvslt (x!49887 lt!245266) #b01111111111111111111111111111110) (bvsge (x!49887 lt!245266) #b00000000000000000000000000000000) (bvsge (x!49887 lt!245266) x!1030)))))

(assert (=> b!532622 (=> (not res!328063) (not e!310045))))

(declare-fun b!532623 () Bool)

(assert (=> b!532623 (= e!310044 (Intermediate!4667 true index!1177 x!1030))))

(declare-fun b!532624 () Bool)

(assert (=> b!532624 (and (bvsge (index!20894 lt!245266) #b00000000000000000000000000000000) (bvslt (index!20894 lt!245266) (size!16566 a!3154)))))

(declare-fun res!328062 () Bool)

(assert (=> b!532624 (= res!328062 (= (select (arr!16202 a!3154) (index!20894 lt!245266)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!310047 () Bool)

(assert (=> b!532624 (=> res!328062 e!310047)))

(declare-fun b!532625 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532625 (= e!310048 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16202 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!532626 () Bool)

(assert (=> b!532626 (= e!310046 (bvsge (x!49887 lt!245266) #b01111111111111111111111111111110))))

(declare-fun b!532620 () Bool)

(assert (=> b!532620 (= e!310048 (Intermediate!4667 false index!1177 x!1030))))

(declare-fun d!81287 () Bool)

(assert (=> d!81287 e!310046))

(declare-fun c!62589 () Bool)

(assert (=> d!81287 (= c!62589 (and (is-Intermediate!4667 lt!245266) (undefined!5479 lt!245266)))))

(assert (=> d!81287 (= lt!245266 e!310044)))

(declare-fun c!62590 () Bool)

(assert (=> d!81287 (= c!62590 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81287 (= lt!245267 (select (arr!16202 a!3154) index!1177))))

(assert (=> d!81287 (validMask!0 mask!3216)))

(assert (=> d!81287 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16202 a!3154) j!147) a!3154 mask!3216) lt!245266)))

(declare-fun b!532627 () Bool)

(assert (=> b!532627 (and (bvsge (index!20894 lt!245266) #b00000000000000000000000000000000) (bvslt (index!20894 lt!245266) (size!16566 a!3154)))))

(assert (=> b!532627 (= e!310047 (= (select (arr!16202 a!3154) (index!20894 lt!245266)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!532628 () Bool)

(assert (=> b!532628 (and (bvsge (index!20894 lt!245266) #b00000000000000000000000000000000) (bvslt (index!20894 lt!245266) (size!16566 a!3154)))))

(declare-fun res!328064 () Bool)

(assert (=> b!532628 (= res!328064 (= (select (arr!16202 a!3154) (index!20894 lt!245266)) (select (arr!16202 a!3154) j!147)))))

(assert (=> b!532628 (=> res!328064 e!310047)))

(assert (=> b!532628 (= e!310045 e!310047)))

(assert (= (and d!81287 c!62590) b!532623))

(assert (= (and d!81287 (not c!62590)) b!532621))

(assert (= (and b!532621 c!62591) b!532620))

(assert (= (and b!532621 (not c!62591)) b!532625))

(assert (= (and d!81287 c!62589) b!532626))

(assert (= (and d!81287 (not c!62589)) b!532622))

(assert (= (and b!532622 res!328063) b!532628))

(assert (= (and b!532628 (not res!328064)) b!532624))

(assert (= (and b!532624 (not res!328062)) b!532627))

(declare-fun m!512735 () Bool)

(assert (=> b!532628 m!512735))

(declare-fun m!512737 () Bool)

(assert (=> d!81287 m!512737))

(assert (=> d!81287 m!512681))

(assert (=> b!532627 m!512735))

(assert (=> b!532624 m!512735))

(declare-fun m!512739 () Bool)

(assert (=> b!532625 m!512739))

(assert (=> b!532625 m!512739))

(assert (=> b!532625 m!512673))

(declare-fun m!512741 () Bool)

(assert (=> b!532625 m!512741))

(assert (=> b!532548 d!81287))

(declare-fun lt!245292 () SeekEntryResult!4667)

(declare-fun b!532686 () Bool)

(declare-fun e!310087 () SeekEntryResult!4667)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33731 (_ BitVec 32)) SeekEntryResult!4667)

(assert (=> b!532686 (= e!310087 (seekKeyOrZeroReturnVacant!0 (x!49887 lt!245292) (index!20894 lt!245292) (index!20894 lt!245292) k!1998 a!3154 mask!3216))))

(declare-fun b!532687 () Bool)

(declare-fun e!310088 () SeekEntryResult!4667)

(declare-fun e!310086 () SeekEntryResult!4667)

(assert (=> b!532687 (= e!310088 e!310086)))

(declare-fun lt!245291 () (_ BitVec 64))

(assert (=> b!532687 (= lt!245291 (select (arr!16202 a!3154) (index!20894 lt!245292)))))

(declare-fun c!62610 () Bool)

(assert (=> b!532687 (= c!62610 (= lt!245291 k!1998))))

(declare-fun b!532688 () Bool)

(assert (=> b!532688 (= e!310086 (Found!4667 (index!20894 lt!245292)))))

(declare-fun b!532689 () Bool)

(declare-fun c!62611 () Bool)

(assert (=> b!532689 (= c!62611 (= lt!245291 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!532689 (= e!310086 e!310087)))

(declare-fun d!81297 () Bool)

(declare-fun lt!245293 () SeekEntryResult!4667)

(assert (=> d!81297 (and (or (is-Undefined!4667 lt!245293) (not (is-Found!4667 lt!245293)) (and (bvsge (index!20893 lt!245293) #b00000000000000000000000000000000) (bvslt (index!20893 lt!245293) (size!16566 a!3154)))) (or (is-Undefined!4667 lt!245293) (is-Found!4667 lt!245293) (not (is-MissingZero!4667 lt!245293)) (and (bvsge (index!20892 lt!245293) #b00000000000000000000000000000000) (bvslt (index!20892 lt!245293) (size!16566 a!3154)))) (or (is-Undefined!4667 lt!245293) (is-Found!4667 lt!245293) (is-MissingZero!4667 lt!245293) (not (is-MissingVacant!4667 lt!245293)) (and (bvsge (index!20895 lt!245293) #b00000000000000000000000000000000) (bvslt (index!20895 lt!245293) (size!16566 a!3154)))) (or (is-Undefined!4667 lt!245293) (ite (is-Found!4667 lt!245293) (= (select (arr!16202 a!3154) (index!20893 lt!245293)) k!1998) (ite (is-MissingZero!4667 lt!245293) (= (select (arr!16202 a!3154) (index!20892 lt!245293)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4667 lt!245293) (= (select (arr!16202 a!3154) (index!20895 lt!245293)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81297 (= lt!245293 e!310088)))

(declare-fun c!62612 () Bool)

(assert (=> d!81297 (= c!62612 (and (is-Intermediate!4667 lt!245292) (undefined!5479 lt!245292)))))

(assert (=> d!81297 (= lt!245292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81297 (validMask!0 mask!3216)))

(assert (=> d!81297 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!245293)))

(declare-fun b!532690 () Bool)

(assert (=> b!532690 (= e!310088 Undefined!4667)))

(declare-fun b!532691 () Bool)

(assert (=> b!532691 (= e!310087 (MissingZero!4667 (index!20894 lt!245292)))))

(assert (= (and d!81297 c!62612) b!532690))

(assert (= (and d!81297 (not c!62612)) b!532687))

(assert (= (and b!532687 c!62610) b!532688))

(assert (= (and b!532687 (not c!62610)) b!532689))

(assert (= (and b!532689 c!62611) b!532691))

(assert (= (and b!532689 (not c!62611)) b!532686))

(declare-fun m!512759 () Bool)

(assert (=> b!532686 m!512759))

(declare-fun m!512761 () Bool)

(assert (=> b!532687 m!512761))

(declare-fun m!512763 () Bool)

(assert (=> d!81297 m!512763))

(declare-fun m!512765 () Bool)

(assert (=> d!81297 m!512765))

(assert (=> d!81297 m!512763))

(declare-fun m!512767 () Bool)

(assert (=> d!81297 m!512767))

(declare-fun m!512769 () Bool)

(assert (=> d!81297 m!512769))

(assert (=> d!81297 m!512681))

(declare-fun m!512771 () Bool)

(assert (=> d!81297 m!512771))

(assert (=> b!532553 d!81297))

(declare-fun d!81305 () Bool)

(assert (=> d!81305 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532549 d!81305))

(declare-fun d!81307 () Bool)

(assert (=> d!81307 (= (validKeyInArray!0 (select (arr!16202 a!3154) j!147)) (and (not (= (select (arr!16202 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16202 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!532550 d!81307))

(declare-fun b!532711 () Bool)

(declare-fun e!310104 () Bool)

(declare-fun contains!2796 (List!10374 (_ BitVec 64)) Bool)

(assert (=> b!532711 (= e!310104 (contains!2796 Nil!10371 (select (arr!16202 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532712 () Bool)

(declare-fun e!310105 () Bool)

(declare-fun e!310103 () Bool)

(assert (=> b!532712 (= e!310105 e!310103)))

(declare-fun c!62618 () Bool)

(assert (=> b!532712 (= c!62618 (validKeyInArray!0 (select (arr!16202 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!532713 () Bool)

(declare-fun call!31988 () Bool)

(assert (=> b!532713 (= e!310103 call!31988)))

(declare-fun bm!31985 () Bool)

(assert (=> bm!31985 (= call!31988 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62618 (Cons!10370 (select (arr!16202 a!3154) #b00000000000000000000000000000000) Nil!10371) Nil!10371)))))

(declare-fun d!81309 () Bool)

(declare-fun res!328098 () Bool)

(declare-fun e!310102 () Bool)

(assert (=> d!81309 (=> res!328098 e!310102)))

(assert (=> d!81309 (= res!328098 (bvsge #b00000000000000000000000000000000 (size!16566 a!3154)))))

(assert (=> d!81309 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10371) e!310102)))

(declare-fun b!532714 () Bool)

(assert (=> b!532714 (= e!310103 call!31988)))

(declare-fun b!532715 () Bool)

(assert (=> b!532715 (= e!310102 e!310105)))

(declare-fun res!328096 () Bool)

(assert (=> b!532715 (=> (not res!328096) (not e!310105))))

(assert (=> b!532715 (= res!328096 (not e!310104))))

(declare-fun res!328097 () Bool)

(assert (=> b!532715 (=> (not res!328097) (not e!310104))))

(assert (=> b!532715 (= res!328097 (validKeyInArray!0 (select (arr!16202 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81309 (not res!328098)) b!532715))

(assert (= (and b!532715 res!328097) b!532711))

(assert (= (and b!532715 res!328096) b!532712))

(assert (= (and b!532712 c!62618) b!532713))

(assert (= (and b!532712 (not c!62618)) b!532714))

(assert (= (or b!532713 b!532714) bm!31985))

(declare-fun m!512781 () Bool)

(assert (=> b!532711 m!512781))

(assert (=> b!532711 m!512781))

(declare-fun m!512783 () Bool)

(assert (=> b!532711 m!512783))

(assert (=> b!532712 m!512781))

(assert (=> b!532712 m!512781))

(declare-fun m!512785 () Bool)

(assert (=> b!532712 m!512785))

(assert (=> bm!31985 m!512781))

(declare-fun m!512787 () Bool)

(assert (=> bm!31985 m!512787))

(assert (=> b!532715 m!512781))

(assert (=> b!532715 m!512781))

(assert (=> b!532715 m!512785))

(assert (=> b!532545 d!81309))

(declare-fun b!532738 () Bool)

(declare-fun e!310128 () Bool)

(declare-fun call!31991 () Bool)

(assert (=> b!532738 (= e!310128 call!31991)))

(declare-fun b!532739 () Bool)

(declare-fun e!310127 () Bool)

(assert (=> b!532739 (= e!310127 e!310128)))

(declare-fun lt!245305 () (_ BitVec 64))

(assert (=> b!532739 (= lt!245305 (select (arr!16202 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16818 0))(
  ( (Unit!16819) )
))
(declare-fun lt!245306 () Unit!16818)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33731 (_ BitVec 64) (_ BitVec 32)) Unit!16818)

(assert (=> b!532739 (= lt!245306 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!245305 #b00000000000000000000000000000000))))

(assert (=> b!532739 (arrayContainsKey!0 a!3154 lt!245305 #b00000000000000000000000000000000)))

(declare-fun lt!245304 () Unit!16818)

(assert (=> b!532739 (= lt!245304 lt!245306)))

(declare-fun res!328117 () Bool)

(assert (=> b!532739 (= res!328117 (= (seekEntryOrOpen!0 (select (arr!16202 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4667 #b00000000000000000000000000000000)))))

(assert (=> b!532739 (=> (not res!328117) (not e!310128))))

(declare-fun b!532740 () Bool)

(assert (=> b!532740 (= e!310127 call!31991)))

(declare-fun b!532741 () Bool)

(declare-fun e!310126 () Bool)

(assert (=> b!532741 (= e!310126 e!310127)))

(declare-fun c!62621 () Bool)

(assert (=> b!532741 (= c!62621 (validKeyInArray!0 (select (arr!16202 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!31988 () Bool)

(assert (=> bm!31988 (= call!31991 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!81315 () Bool)

(declare-fun res!328118 () Bool)

(assert (=> d!81315 (=> res!328118 e!310126)))

(assert (=> d!81315 (= res!328118 (bvsge #b00000000000000000000000000000000 (size!16566 a!3154)))))

(assert (=> d!81315 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!310126)))

(assert (= (and d!81315 (not res!328118)) b!532741))

(assert (= (and b!532741 c!62621) b!532739))

(assert (= (and b!532741 (not c!62621)) b!532740))

(assert (= (and b!532739 res!328117) b!532738))

(assert (= (or b!532738 b!532740) bm!31988))

(assert (=> b!532739 m!512781))

(declare-fun m!512793 () Bool)

(assert (=> b!532739 m!512793))

(declare-fun m!512795 () Bool)

(assert (=> b!532739 m!512795))

(assert (=> b!532739 m!512781))

(declare-fun m!512797 () Bool)

(assert (=> b!532739 m!512797))

(assert (=> b!532741 m!512781))

(assert (=> b!532741 m!512781))

(assert (=> b!532741 m!512785))

(declare-fun m!512799 () Bool)

(assert (=> bm!31988 m!512799))

(assert (=> b!532551 d!81315))

(declare-fun d!81327 () Bool)

(declare-fun res!328127 () Bool)

(declare-fun e!310139 () Bool)

(assert (=> d!81327 (=> res!328127 e!310139)))

(assert (=> d!81327 (= res!328127 (= (select (arr!16202 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81327 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!310139)))

(declare-fun b!532754 () Bool)

(declare-fun e!310140 () Bool)

(assert (=> b!532754 (= e!310139 e!310140)))

(declare-fun res!328128 () Bool)

(assert (=> b!532754 (=> (not res!328128) (not e!310140))))

(assert (=> b!532754 (= res!328128 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16566 a!3154)))))

(declare-fun b!532755 () Bool)

(assert (=> b!532755 (= e!310140 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81327 (not res!328127)) b!532754))

(assert (= (and b!532754 res!328128) b!532755))

(assert (=> d!81327 m!512781))

(declare-fun m!512801 () Bool)

(assert (=> b!532755 m!512801))

(assert (=> b!532552 d!81327))

(declare-fun d!81329 () Bool)

(assert (=> d!81329 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48512 d!81329))

(declare-fun d!81333 () Bool)

(assert (=> d!81333 (= (array_inv!11976 a!3154) (bvsge (size!16566 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48512 d!81333))

(declare-fun d!81335 () Bool)

(declare-fun lt!245324 () (_ BitVec 32))

(declare-fun lt!245323 () (_ BitVec 32))

(assert (=> d!81335 (= lt!245324 (bvmul (bvxor lt!245323 (bvlshr lt!245323 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81335 (= lt!245323 ((_ extract 31 0) (bvand (bvxor (select (arr!16202 a!3154) j!147) (bvlshr (select (arr!16202 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81335 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!328139 (let ((h!11313 ((_ extract 31 0) (bvand (bvxor (select (arr!16202 a!3154) j!147) (bvlshr (select (arr!16202 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49893 (bvmul (bvxor h!11313 (bvlshr h!11313 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49893 (bvlshr x!49893 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!328139 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!328139 #b00000000000000000000000000000000))))))

(assert (=> d!81335 (= (toIndex!0 (select (arr!16202 a!3154) j!147) mask!3216) (bvand (bvxor lt!245324 (bvlshr lt!245324 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!532547 d!81335))

(push 1)

