; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49466 () Bool)

(assert start!49466)

(declare-fun b!544362 () Bool)

(declare-fun e!314709 () Bool)

(declare-fun e!314707 () Bool)

(assert (=> b!544362 (= e!314709 e!314707)))

(declare-fun res!338776 () Bool)

(assert (=> b!544362 (=> (not res!338776) (not e!314707))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4967 0))(
  ( (MissingZero!4967 (index!22092 (_ BitVec 32))) (Found!4967 (index!22093 (_ BitVec 32))) (Intermediate!4967 (undefined!5779 Bool) (index!22094 (_ BitVec 32)) (x!51032 (_ BitVec 32))) (Undefined!4967) (MissingVacant!4967 (index!22095 (_ BitVec 32))) )
))
(declare-fun lt!248483 () SeekEntryResult!4967)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544362 (= res!338776 (= lt!248483 (Intermediate!4967 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34349 0))(
  ( (array!34350 (arr!16502 (Array (_ BitVec 32) (_ BitVec 64))) (size!16866 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34349)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34349 (_ BitVec 32)) SeekEntryResult!4967)

(assert (=> b!544362 (= lt!248483 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16502 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544363 () Bool)

(declare-fun res!338782 () Bool)

(assert (=> b!544363 (=> (not res!338782) (not e!314709))))

(assert (=> b!544363 (= res!338782 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16866 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16866 a!3154)) (= (select (arr!16502 a!3154) resIndex!32) (select (arr!16502 a!3154) j!147))))))

(declare-fun b!544364 () Bool)

(declare-fun res!338781 () Bool)

(declare-fun e!314708 () Bool)

(assert (=> b!544364 (=> (not res!338781) (not e!314708))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544364 (= res!338781 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544365 () Bool)

(declare-fun res!338775 () Bool)

(assert (=> b!544365 (=> (not res!338775) (not e!314707))))

(assert (=> b!544365 (= res!338775 (and (not (= (select (arr!16502 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16502 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16502 a!3154) index!1177) (select (arr!16502 a!3154) j!147)))))))

(declare-fun b!544366 () Bool)

(declare-fun res!338783 () Bool)

(assert (=> b!544366 (=> (not res!338783) (not e!314707))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544366 (= res!338783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) (select (arr!16502 a!3154) j!147) a!3154 mask!3216) lt!248483))))

(declare-fun b!544367 () Bool)

(declare-fun res!338785 () Bool)

(assert (=> b!544367 (=> (not res!338785) (not e!314708))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544367 (= res!338785 (and (= (size!16866 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16866 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16866 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544368 () Bool)

(declare-fun res!338780 () Bool)

(assert (=> b!544368 (=> (not res!338780) (not e!314708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544368 (= res!338780 (validKeyInArray!0 k!1998))))

(declare-fun b!544369 () Bool)

(declare-fun res!338779 () Bool)

(assert (=> b!544369 (=> (not res!338779) (not e!314709))))

(declare-datatypes ((List!10674 0))(
  ( (Nil!10671) (Cons!10670 (h!11628 (_ BitVec 64)) (t!16910 List!10674)) )
))
(declare-fun arrayNoDuplicates!0 (array!34349 (_ BitVec 32) List!10674) Bool)

(assert (=> b!544369 (= res!338779 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10671))))

(declare-fun res!338777 () Bool)

(assert (=> start!49466 (=> (not res!338777) (not e!314708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49466 (= res!338777 (validMask!0 mask!3216))))

(assert (=> start!49466 e!314708))

(assert (=> start!49466 true))

(declare-fun array_inv!12276 (array!34349) Bool)

(assert (=> start!49466 (array_inv!12276 a!3154)))

(declare-fun b!544370 () Bool)

(declare-fun res!338784 () Bool)

(assert (=> b!544370 (=> (not res!338784) (not e!314709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34349 (_ BitVec 32)) Bool)

(assert (=> b!544370 (= res!338784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544371 () Bool)

(declare-fun res!338786 () Bool)

(assert (=> b!544371 (=> (not res!338786) (not e!314708))))

(assert (=> b!544371 (= res!338786 (validKeyInArray!0 (select (arr!16502 a!3154) j!147)))))

(declare-fun b!544372 () Bool)

(declare-fun lt!248481 () (_ BitVec 32))

(assert (=> b!544372 (= e!314707 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (or (bvslt lt!248481 #b00000000000000000000000000000000) (bvsge lt!248481 (size!16866 a!3154)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544372 (= lt!248481 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544373 () Bool)

(assert (=> b!544373 (= e!314708 e!314709)))

(declare-fun res!338778 () Bool)

(assert (=> b!544373 (=> (not res!338778) (not e!314709))))

(declare-fun lt!248482 () SeekEntryResult!4967)

(assert (=> b!544373 (= res!338778 (or (= lt!248482 (MissingZero!4967 i!1153)) (= lt!248482 (MissingVacant!4967 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34349 (_ BitVec 32)) SeekEntryResult!4967)

(assert (=> b!544373 (= lt!248482 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!49466 res!338777) b!544367))

(assert (= (and b!544367 res!338785) b!544371))

(assert (= (and b!544371 res!338786) b!544368))

(assert (= (and b!544368 res!338780) b!544364))

(assert (= (and b!544364 res!338781) b!544373))

(assert (= (and b!544373 res!338778) b!544370))

(assert (= (and b!544370 res!338784) b!544369))

(assert (= (and b!544369 res!338779) b!544363))

(assert (= (and b!544363 res!338782) b!544362))

(assert (= (and b!544362 res!338776) b!544366))

(assert (= (and b!544366 res!338783) b!544365))

(assert (= (and b!544365 res!338775) b!544372))

(declare-fun m!522277 () Bool)

(assert (=> start!49466 m!522277))

(declare-fun m!522279 () Bool)

(assert (=> start!49466 m!522279))

(declare-fun m!522281 () Bool)

(assert (=> b!544363 m!522281))

(declare-fun m!522283 () Bool)

(assert (=> b!544363 m!522283))

(declare-fun m!522285 () Bool)

(assert (=> b!544369 m!522285))

(declare-fun m!522287 () Bool)

(assert (=> b!544373 m!522287))

(assert (=> b!544371 m!522283))

(assert (=> b!544371 m!522283))

(declare-fun m!522289 () Bool)

(assert (=> b!544371 m!522289))

(assert (=> b!544366 m!522283))

(assert (=> b!544366 m!522283))

(declare-fun m!522291 () Bool)

(assert (=> b!544366 m!522291))

(assert (=> b!544366 m!522291))

(assert (=> b!544366 m!522283))

(declare-fun m!522293 () Bool)

(assert (=> b!544366 m!522293))

(declare-fun m!522295 () Bool)

(assert (=> b!544368 m!522295))

(declare-fun m!522297 () Bool)

(assert (=> b!544364 m!522297))

(declare-fun m!522299 () Bool)

(assert (=> b!544365 m!522299))

(assert (=> b!544365 m!522283))

(assert (=> b!544362 m!522283))

(assert (=> b!544362 m!522283))

(declare-fun m!522301 () Bool)

(assert (=> b!544362 m!522301))

(declare-fun m!522303 () Bool)

(assert (=> b!544372 m!522303))

(declare-fun m!522305 () Bool)

(assert (=> b!544370 m!522305))

(push 1)

(assert (not b!544369))

(assert (not b!544368))

(assert (not b!544370))

(assert (not b!544364))

(assert (not start!49466))

(assert (not b!544366))

(assert (not b!544371))

(assert (not b!544362))

(assert (not b!544372))

(assert (not b!544373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81981 () Bool)

(assert (=> d!81981 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49466 d!81981))

(declare-fun d!81991 () Bool)

(assert (=> d!81991 (= (array_inv!12276 a!3154) (bvsge (size!16866 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49466 d!81991))

(declare-fun b!544480 () Bool)

(declare-fun e!314780 () SeekEntryResult!4967)

(assert (=> b!544480 (= e!314780 (Intermediate!4967 true (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544481 () Bool)

(declare-fun lt!248519 () SeekEntryResult!4967)

(assert (=> b!544481 (and (bvsge (index!22094 lt!248519) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248519) (size!16866 a!3154)))))

(declare-fun e!314779 () Bool)

(assert (=> b!544481 (= e!314779 (= (select (arr!16502 a!3154) (index!22094 lt!248519)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544482 () Bool)

(declare-fun e!314781 () SeekEntryResult!4967)

(assert (=> b!544482 (= e!314780 e!314781)))

(declare-fun c!63152 () Bool)

(declare-fun lt!248518 () (_ BitVec 64))

(assert (=> b!544482 (= c!63152 (or (= lt!248518 (select (arr!16502 a!3154) j!147)) (= (bvadd lt!248518 lt!248518) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544483 () Bool)

(assert (=> b!544483 (= e!314781 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16502 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544484 () Bool)

(assert (=> b!544484 (and (bvsge (index!22094 lt!248519) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248519) (size!16866 a!3154)))))

(declare-fun res!338829 () Bool)

(assert (=> b!544484 (= res!338829 (= (select (arr!16502 a!3154) (index!22094 lt!248519)) (select (arr!16502 a!3154) j!147)))))

(assert (=> b!544484 (=> res!338829 e!314779)))

(declare-fun e!314778 () Bool)

(assert (=> b!544484 (= e!314778 e!314779)))

(declare-fun b!544485 () Bool)

(assert (=> b!544485 (= e!314781 (Intermediate!4967 false (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544486 () Bool)

(declare-fun e!314782 () Bool)

(assert (=> b!544486 (= e!314782 e!314778)))

(declare-fun res!338828 () Bool)

(assert (=> b!544486 (= res!338828 (and (is-Intermediate!4967 lt!248519) (not (undefined!5779 lt!248519)) (bvslt (x!51032 lt!248519) #b01111111111111111111111111111110) (bvsge (x!51032 lt!248519) #b00000000000000000000000000000000) (bvsge (x!51032 lt!248519) #b00000000000000000000000000000000)))))

(assert (=> b!544486 (=> (not res!338828) (not e!314778))))

(declare-fun b!544487 () Bool)

(assert (=> b!544487 (= e!314782 (bvsge (x!51032 lt!248519) #b01111111111111111111111111111110))))

(declare-fun b!544479 () Bool)

(assert (=> b!544479 (and (bvsge (index!22094 lt!248519) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248519) (size!16866 a!3154)))))

(declare-fun res!338827 () Bool)

(assert (=> b!544479 (= res!338827 (= (select (arr!16502 a!3154) (index!22094 lt!248519)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544479 (=> res!338827 e!314779)))

(declare-fun d!81993 () Bool)

(assert (=> d!81993 e!314782))

(declare-fun c!63150 () Bool)

(assert (=> d!81993 (= c!63150 (and (is-Intermediate!4967 lt!248519) (undefined!5779 lt!248519)))))

(assert (=> d!81993 (= lt!248519 e!314780)))

(declare-fun c!63151 () Bool)

(assert (=> d!81993 (= c!63151 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81993 (= lt!248518 (select (arr!16502 a!3154) (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216)))))

(assert (=> d!81993 (validMask!0 mask!3216)))

(assert (=> d!81993 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) (select (arr!16502 a!3154) j!147) a!3154 mask!3216) lt!248519)))

(assert (= (and d!81993 c!63151) b!544480))

(assert (= (and d!81993 (not c!63151)) b!544482))

(assert (= (and b!544482 c!63152) b!544485))

(assert (= (and b!544482 (not c!63152)) b!544483))

(assert (= (and d!81993 c!63150) b!544487))

(assert (= (and d!81993 (not c!63150)) b!544486))

(assert (= (and b!544486 res!338828) b!544484))

(assert (= (and b!544484 (not res!338829)) b!544479))

(assert (= (and b!544479 (not res!338827)) b!544481))

(assert (=> b!544483 m!522291))

(declare-fun m!522357 () Bool)

(assert (=> b!544483 m!522357))

(assert (=> b!544483 m!522357))

(assert (=> b!544483 m!522283))

(declare-fun m!522359 () Bool)

(assert (=> b!544483 m!522359))

(declare-fun m!522361 () Bool)

(assert (=> b!544484 m!522361))

(assert (=> b!544479 m!522361))

(assert (=> d!81993 m!522291))

(declare-fun m!522363 () Bool)

(assert (=> d!81993 m!522363))

(assert (=> d!81993 m!522277))

(assert (=> b!544481 m!522361))

(assert (=> b!544366 d!81993))

(declare-fun d!82005 () Bool)

(declare-fun lt!248533 () (_ BitVec 32))

(declare-fun lt!248532 () (_ BitVec 32))

(assert (=> d!82005 (= lt!248533 (bvmul (bvxor lt!248532 (bvlshr lt!248532 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82005 (= lt!248532 ((_ extract 31 0) (bvand (bvxor (select (arr!16502 a!3154) j!147) (bvlshr (select (arr!16502 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82005 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338833 (let ((h!11630 ((_ extract 31 0) (bvand (bvxor (select (arr!16502 a!3154) j!147) (bvlshr (select (arr!16502 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51038 (bvmul (bvxor h!11630 (bvlshr h!11630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51038 (bvlshr x!51038 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338833 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338833 #b00000000000000000000000000000000))))))

(assert (=> d!82005 (= (toIndex!0 (select (arr!16502 a!3154) j!147) mask!3216) (bvand (bvxor lt!248533 (bvlshr lt!248533 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544366 d!82005))

(declare-fun d!82011 () Bool)

(assert (=> d!82011 (= (validKeyInArray!0 (select (arr!16502 a!3154) j!147)) (and (not (= (select (arr!16502 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16502 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544371 d!82011))

(declare-fun d!82013 () Bool)

(declare-fun res!338838 () Bool)

(declare-fun e!314792 () Bool)

(assert (=> d!82013 (=> res!338838 e!314792)))

(assert (=> d!82013 (= res!338838 (= (select (arr!16502 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!82013 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!314792)))

(declare-fun b!544501 () Bool)

(declare-fun e!314793 () Bool)

(assert (=> b!544501 (= e!314792 e!314793)))

(declare-fun res!338839 () Bool)

(assert (=> b!544501 (=> (not res!338839) (not e!314793))))

(assert (=> b!544501 (= res!338839 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16866 a!3154)))))

(declare-fun b!544502 () Bool)

(assert (=> b!544502 (= e!314793 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82013 (not res!338838)) b!544501))

(assert (= (and b!544501 res!338839) b!544502))

(declare-fun m!522369 () Bool)

(assert (=> d!82013 m!522369))

(declare-fun m!522371 () Bool)

(assert (=> b!544502 m!522371))

(assert (=> b!544364 d!82013))

(declare-fun b!544531 () Bool)

(declare-fun e!314814 () Bool)

(declare-fun call!32102 () Bool)

(assert (=> b!544531 (= e!314814 call!32102)))

(declare-fun b!544532 () Bool)

(declare-fun e!314811 () Bool)

(assert (=> b!544532 (= e!314811 e!314814)))

(declare-fun c!63167 () Bool)

(assert (=> b!544532 (= c!63167 (validKeyInArray!0 (select (arr!16502 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82015 () Bool)

(declare-fun res!338848 () Bool)

(declare-fun e!314813 () Bool)

(assert (=> d!82015 (=> res!338848 e!314813)))

(assert (=> d!82015 (= res!338848 (bvsge #b00000000000000000000000000000000 (size!16866 a!3154)))))

(assert (=> d!82015 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10671) e!314813)))

(declare-fun b!544533 () Bool)

(assert (=> b!544533 (= e!314813 e!314811)))

(declare-fun res!338846 () Bool)

(assert (=> b!544533 (=> (not res!338846) (not e!314811))))

(declare-fun e!314812 () Bool)

(assert (=> b!544533 (= res!338846 (not e!314812))))

(declare-fun res!338847 () Bool)

(assert (=> b!544533 (=> (not res!338847) (not e!314812))))

(assert (=> b!544533 (= res!338847 (validKeyInArray!0 (select (arr!16502 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544534 () Bool)

(assert (=> b!544534 (= e!314814 call!32102)))

(declare-fun b!544535 () Bool)

(declare-fun contains!2815 (List!10674 (_ BitVec 64)) Bool)

(assert (=> b!544535 (= e!314812 (contains!2815 Nil!10671 (select (arr!16502 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32099 () Bool)

(assert (=> bm!32099 (= call!32102 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63167 (Cons!10670 (select (arr!16502 a!3154) #b00000000000000000000000000000000) Nil!10671) Nil!10671)))))

(assert (= (and d!82015 (not res!338848)) b!544533))

(assert (= (and b!544533 res!338847) b!544535))

(assert (= (and b!544533 res!338846) b!544532))

(assert (= (and b!544532 c!63167) b!544534))

(assert (= (and b!544532 (not c!63167)) b!544531))

(assert (= (or b!544534 b!544531) bm!32099))

(assert (=> b!544532 m!522369))

(assert (=> b!544532 m!522369))

(declare-fun m!522387 () Bool)

(assert (=> b!544532 m!522387))

(assert (=> b!544533 m!522369))

(assert (=> b!544533 m!522369))

(assert (=> b!544533 m!522387))

(assert (=> b!544535 m!522369))

(assert (=> b!544535 m!522369))

(declare-fun m!522389 () Bool)

(assert (=> b!544535 m!522389))

(assert (=> bm!32099 m!522369))

(declare-fun m!522391 () Bool)

(assert (=> bm!32099 m!522391))

(assert (=> b!544369 d!82015))

(declare-fun b!544562 () Bool)

(declare-fun e!314838 () Bool)

(declare-fun call!32108 () Bool)

(assert (=> b!544562 (= e!314838 call!32108)))

(declare-fun b!544563 () Bool)

(declare-fun e!314836 () Bool)

(assert (=> b!544563 (= e!314838 e!314836)))

(declare-fun lt!248558 () (_ BitVec 64))

(assert (=> b!544563 (= lt!248558 (select (arr!16502 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16890 0))(
  ( (Unit!16891) )
))
(declare-fun lt!248560 () Unit!16890)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34349 (_ BitVec 64) (_ BitVec 32)) Unit!16890)

(assert (=> b!544563 (= lt!248560 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248558 #b00000000000000000000000000000000))))

(assert (=> b!544563 (arrayContainsKey!0 a!3154 lt!248558 #b00000000000000000000000000000000)))

(declare-fun lt!248559 () Unit!16890)

(assert (=> b!544563 (= lt!248559 lt!248560)))

(declare-fun res!338866 () Bool)

(assert (=> b!544563 (= res!338866 (= (seekEntryOrOpen!0 (select (arr!16502 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4967 #b00000000000000000000000000000000)))))

(assert (=> b!544563 (=> (not res!338866) (not e!314836))))

(declare-fun bm!32105 () Bool)

(assert (=> bm!32105 (= call!32108 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!544564 () Bool)

(assert (=> b!544564 (= e!314836 call!32108)))

(declare-fun b!544565 () Bool)

(declare-fun e!314837 () Bool)

(assert (=> b!544565 (= e!314837 e!314838)))

(declare-fun c!63173 () Bool)

(assert (=> b!544565 (= c!63173 (validKeyInArray!0 (select (arr!16502 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82023 () Bool)

(declare-fun res!338865 () Bool)

(assert (=> d!82023 (=> res!338865 e!314837)))

(assert (=> d!82023 (= res!338865 (bvsge #b00000000000000000000000000000000 (size!16866 a!3154)))))

(assert (=> d!82023 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314837)))

(assert (= (and d!82023 (not res!338865)) b!544565))

(assert (= (and b!544565 c!63173) b!544563))

(assert (= (and b!544565 (not c!63173)) b!544562))

(assert (= (and b!544563 res!338866) b!544564))

(assert (= (or b!544564 b!544562) bm!32105))

(assert (=> b!544563 m!522369))

(declare-fun m!522403 () Bool)

(assert (=> b!544563 m!522403))

(declare-fun m!522405 () Bool)

(assert (=> b!544563 m!522405))

(assert (=> b!544563 m!522369))

(declare-fun m!522407 () Bool)

(assert (=> b!544563 m!522407))

(declare-fun m!522409 () Bool)

(assert (=> bm!32105 m!522409))

(assert (=> b!544565 m!522369))

(assert (=> b!544565 m!522369))

(assert (=> b!544565 m!522387))

(assert (=> b!544370 d!82023))

(declare-fun d!82029 () Bool)

(assert (=> d!82029 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544368 d!82029))

(declare-fun b!544607 () Bool)

(declare-fun e!314862 () SeekEntryResult!4967)

(declare-fun lt!248580 () SeekEntryResult!4967)

(assert (=> b!544607 (= e!314862 (MissingZero!4967 (index!22094 lt!248580)))))

(declare-fun b!544608 () Bool)

(declare-fun e!314864 () SeekEntryResult!4967)

(assert (=> b!544608 (= e!314864 Undefined!4967)))

(declare-fun b!544609 () Bool)

(declare-fun c!63190 () Bool)

(declare-fun lt!248579 () (_ BitVec 64))

(assert (=> b!544609 (= c!63190 (= lt!248579 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314863 () SeekEntryResult!4967)

(assert (=> b!544609 (= e!314863 e!314862)))

(declare-fun b!544610 () Bool)

(assert (=> b!544610 (= e!314863 (Found!4967 (index!22094 lt!248580)))))

(declare-fun d!82031 () Bool)

(declare-fun lt!248581 () SeekEntryResult!4967)

(assert (=> d!82031 (and (or (is-Undefined!4967 lt!248581) (not (is-Found!4967 lt!248581)) (and (bvsge (index!22093 lt!248581) #b00000000000000000000000000000000) (bvslt (index!22093 lt!248581) (size!16866 a!3154)))) (or (is-Undefined!4967 lt!248581) (is-Found!4967 lt!248581) (not (is-MissingZero!4967 lt!248581)) (and (bvsge (index!22092 lt!248581) #b00000000000000000000000000000000) (bvslt (index!22092 lt!248581) (size!16866 a!3154)))) (or (is-Undefined!4967 lt!248581) (is-Found!4967 lt!248581) (is-MissingZero!4967 lt!248581) (not (is-MissingVacant!4967 lt!248581)) (and (bvsge (index!22095 lt!248581) #b00000000000000000000000000000000) (bvslt (index!22095 lt!248581) (size!16866 a!3154)))) (or (is-Undefined!4967 lt!248581) (ite (is-Found!4967 lt!248581) (= (select (arr!16502 a!3154) (index!22093 lt!248581)) k!1998) (ite (is-MissingZero!4967 lt!248581) (= (select (arr!16502 a!3154) (index!22092 lt!248581)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4967 lt!248581) (= (select (arr!16502 a!3154) (index!22095 lt!248581)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82031 (= lt!248581 e!314864)))

(declare-fun c!63189 () Bool)

(assert (=> d!82031 (= c!63189 (and (is-Intermediate!4967 lt!248580) (undefined!5779 lt!248580)))))

(assert (=> d!82031 (= lt!248580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82031 (validMask!0 mask!3216)))

(assert (=> d!82031 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248581)))

(declare-fun b!544611 () Bool)

(assert (=> b!544611 (= e!314864 e!314863)))

(assert (=> b!544611 (= lt!248579 (select (arr!16502 a!3154) (index!22094 lt!248580)))))

(declare-fun c!63191 () Bool)

(assert (=> b!544611 (= c!63191 (= lt!248579 k!1998))))

(declare-fun b!544612 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34349 (_ BitVec 32)) SeekEntryResult!4967)

(assert (=> b!544612 (= e!314862 (seekKeyOrZeroReturnVacant!0 (x!51032 lt!248580) (index!22094 lt!248580) (index!22094 lt!248580) k!1998 a!3154 mask!3216))))

(assert (= (and d!82031 c!63189) b!544608))

(assert (= (and d!82031 (not c!63189)) b!544611))

(assert (= (and b!544611 c!63191) b!544610))

(assert (= (and b!544611 (not c!63191)) b!544609))

(assert (= (and b!544609 c!63190) b!544607))

(assert (= (and b!544609 (not c!63190)) b!544612))

(declare-fun m!522419 () Bool)

(assert (=> d!82031 m!522419))

(declare-fun m!522421 () Bool)

(assert (=> d!82031 m!522421))

(declare-fun m!522423 () Bool)

(assert (=> d!82031 m!522423))

(declare-fun m!522425 () Bool)

(assert (=> d!82031 m!522425))

(assert (=> d!82031 m!522277))

(declare-fun m!522427 () Bool)

(assert (=> d!82031 m!522427))

(assert (=> d!82031 m!522419))

(declare-fun m!522429 () Bool)

(assert (=> b!544611 m!522429))

(declare-fun m!522431 () Bool)

(assert (=> b!544612 m!522431))

(assert (=> b!544373 d!82031))

(declare-fun d!82037 () Bool)

(declare-fun lt!248586 () (_ BitVec 32))

(assert (=> d!82037 (and (bvsge lt!248586 #b00000000000000000000000000000000) (bvslt lt!248586 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82037 (= lt!248586 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82037 (validMask!0 mask!3216)))

(assert (=> d!82037 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248586)))

(declare-fun bs!16988 () Bool)

(assert (= bs!16988 d!82037))

(declare-fun m!522439 () Bool)

(assert (=> bs!16988 m!522439))

(assert (=> bs!16988 m!522277))

(assert (=> b!544372 d!82037))

(declare-fun b!544627 () Bool)

(declare-fun e!314876 () SeekEntryResult!4967)

(assert (=> b!544627 (= e!314876 (Intermediate!4967 true index!1177 x!1030))))

(declare-fun b!544628 () Bool)

(declare-fun lt!248588 () SeekEntryResult!4967)

(assert (=> b!544628 (and (bvsge (index!22094 lt!248588) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248588) (size!16866 a!3154)))))

(declare-fun e!314875 () Bool)

(assert (=> b!544628 (= e!314875 (= (select (arr!16502 a!3154) (index!22094 lt!248588)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544629 () Bool)

(declare-fun e!314877 () SeekEntryResult!4967)

(assert (=> b!544629 (= e!314876 e!314877)))

(declare-fun c!63197 () Bool)

(declare-fun lt!248587 () (_ BitVec 64))

(assert (=> b!544629 (= c!63197 (or (= lt!248587 (select (arr!16502 a!3154) j!147)) (= (bvadd lt!248587 lt!248587) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544630 () Bool)

(assert (=> b!544630 (= e!314877 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16502 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544631 () Bool)

(assert (=> b!544631 (and (bvsge (index!22094 lt!248588) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248588) (size!16866 a!3154)))))

(declare-fun res!338888 () Bool)

(assert (=> b!544631 (= res!338888 (= (select (arr!16502 a!3154) (index!22094 lt!248588)) (select (arr!16502 a!3154) j!147)))))

(assert (=> b!544631 (=> res!338888 e!314875)))

(declare-fun e!314874 () Bool)

(assert (=> b!544631 (= e!314874 e!314875)))

(declare-fun b!544632 () Bool)

(assert (=> b!544632 (= e!314877 (Intermediate!4967 false index!1177 x!1030))))

(declare-fun b!544633 () Bool)

(declare-fun e!314878 () Bool)

(assert (=> b!544633 (= e!314878 e!314874)))

(declare-fun res!338887 () Bool)

(assert (=> b!544633 (= res!338887 (and (is-Intermediate!4967 lt!248588) (not (undefined!5779 lt!248588)) (bvslt (x!51032 lt!248588) #b01111111111111111111111111111110) (bvsge (x!51032 lt!248588) #b00000000000000000000000000000000) (bvsge (x!51032 lt!248588) x!1030)))))

(assert (=> b!544633 (=> (not res!338887) (not e!314874))))

(declare-fun b!544634 () Bool)

(assert (=> b!544634 (= e!314878 (bvsge (x!51032 lt!248588) #b01111111111111111111111111111110))))

(declare-fun b!544626 () Bool)

(assert (=> b!544626 (and (bvsge (index!22094 lt!248588) #b00000000000000000000000000000000) (bvslt (index!22094 lt!248588) (size!16866 a!3154)))))

(declare-fun res!338886 () Bool)

(assert (=> b!544626 (= res!338886 (= (select (arr!16502 a!3154) (index!22094 lt!248588)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544626 (=> res!338886 e!314875)))

(declare-fun d!82043 () Bool)

(assert (=> d!82043 e!314878))

(declare-fun c!63195 () Bool)

(assert (=> d!82043 (= c!63195 (and (is-Intermediate!4967 lt!248588) (undefined!5779 lt!248588)))))

(assert (=> d!82043 (= lt!248588 e!314876)))

(declare-fun c!63196 () Bool)

(assert (=> d!82043 (= c!63196 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!82043 (= lt!248587 (select (arr!16502 a!3154) index!1177))))

(assert (=> d!82043 (validMask!0 mask!3216)))

(assert (=> d!82043 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16502 a!3154) j!147) a!3154 mask!3216) lt!248588)))

(assert (= (and d!82043 c!63196) b!544627))

