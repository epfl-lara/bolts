; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49840 () Bool)

(assert start!49840)

(declare-fun b!547051 () Bool)

(declare-fun e!316102 () Bool)

(declare-datatypes ((List!10703 0))(
  ( (Nil!10700) (Cons!10699 (h!11666 (_ BitVec 64)) (t!16939 List!10703)) )
))
(declare-fun noDuplicate!221 (List!10703) Bool)

(assert (=> b!547051 (= e!316102 (not (noDuplicate!221 Nil!10700)))))

(declare-fun b!547052 () Bool)

(declare-fun res!340844 () Bool)

(declare-fun e!316100 () Bool)

(assert (=> b!547052 (=> (not res!340844) (not e!316100))))

(declare-datatypes ((array!34499 0))(
  ( (array!34500 (arr!16570 (Array (_ BitVec 32) (_ BitVec 64))) (size!16934 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34499)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547052 (= res!340844 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547053 () Bool)

(declare-fun res!340850 () Bool)

(assert (=> b!547053 (=> (not res!340850) (not e!316102))))

(assert (=> b!547053 (= res!340850 (and (bvsle #b00000000000000000000000000000000 (size!16934 a!3118)) (bvslt (size!16934 a!3118) #b01111111111111111111111111111111)))))

(declare-fun b!547054 () Bool)

(declare-fun res!340847 () Bool)

(assert (=> b!547054 (=> (not res!340847) (not e!316100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547054 (= res!340847 (validKeyInArray!0 k0!1914))))

(declare-fun b!547055 () Bool)

(assert (=> b!547055 (= e!316100 e!316102)))

(declare-fun res!340846 () Bool)

(assert (=> b!547055 (=> (not res!340846) (not e!316102))))

(declare-datatypes ((SeekEntryResult!5026 0))(
  ( (MissingZero!5026 (index!22331 (_ BitVec 32))) (Found!5026 (index!22332 (_ BitVec 32))) (Intermediate!5026 (undefined!5838 Bool) (index!22333 (_ BitVec 32)) (x!51305 (_ BitVec 32))) (Undefined!5026) (MissingVacant!5026 (index!22334 (_ BitVec 32))) )
))
(declare-fun lt!249440 () SeekEntryResult!5026)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547055 (= res!340846 (or (= lt!249440 (MissingZero!5026 i!1132)) (= lt!249440 (MissingVacant!5026 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34499 (_ BitVec 32)) SeekEntryResult!5026)

(assert (=> b!547055 (= lt!249440 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!547056 () Bool)

(declare-fun res!340848 () Bool)

(assert (=> b!547056 (=> (not res!340848) (not e!316100))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547056 (= res!340848 (validKeyInArray!0 (select (arr!16570 a!3118) j!142)))))

(declare-fun b!547057 () Bool)

(declare-fun res!340849 () Bool)

(assert (=> b!547057 (=> (not res!340849) (not e!316100))))

(assert (=> b!547057 (= res!340849 (and (= (size!16934 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16934 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16934 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!340845 () Bool)

(assert (=> start!49840 (=> (not res!340845) (not e!316100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49840 (= res!340845 (validMask!0 mask!3119))))

(assert (=> start!49840 e!316100))

(assert (=> start!49840 true))

(declare-fun array_inv!12344 (array!34499) Bool)

(assert (=> start!49840 (array_inv!12344 a!3118)))

(declare-fun b!547058 () Bool)

(declare-fun res!340843 () Bool)

(assert (=> b!547058 (=> (not res!340843) (not e!316102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34499 (_ BitVec 32)) Bool)

(assert (=> b!547058 (= res!340843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!49840 res!340845) b!547057))

(assert (= (and b!547057 res!340849) b!547056))

(assert (= (and b!547056 res!340848) b!547054))

(assert (= (and b!547054 res!340847) b!547052))

(assert (= (and b!547052 res!340844) b!547055))

(assert (= (and b!547055 res!340846) b!547058))

(assert (= (and b!547058 res!340843) b!547053))

(assert (= (and b!547053 res!340850) b!547051))

(declare-fun m!524401 () Bool)

(assert (=> b!547051 m!524401))

(declare-fun m!524403 () Bool)

(assert (=> b!547052 m!524403))

(declare-fun m!524405 () Bool)

(assert (=> b!547054 m!524405))

(declare-fun m!524407 () Bool)

(assert (=> start!49840 m!524407))

(declare-fun m!524409 () Bool)

(assert (=> start!49840 m!524409))

(declare-fun m!524411 () Bool)

(assert (=> b!547055 m!524411))

(declare-fun m!524413 () Bool)

(assert (=> b!547058 m!524413))

(declare-fun m!524415 () Bool)

(assert (=> b!547056 m!524415))

(assert (=> b!547056 m!524415))

(declare-fun m!524417 () Bool)

(assert (=> b!547056 m!524417))

(check-sat (not b!547058) (not b!547054) (not b!547056) (not b!547055) (not b!547052) (not b!547051) (not start!49840))
(check-sat)
(get-model)

(declare-fun d!82329 () Bool)

(assert (=> d!82329 (= (validKeyInArray!0 (select (arr!16570 a!3118) j!142)) (and (not (= (select (arr!16570 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16570 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547056 d!82329))

(declare-fun d!82331 () Bool)

(declare-fun lt!249458 () SeekEntryResult!5026)

(get-info :version)

(assert (=> d!82331 (and (or ((_ is Undefined!5026) lt!249458) (not ((_ is Found!5026) lt!249458)) (and (bvsge (index!22332 lt!249458) #b00000000000000000000000000000000) (bvslt (index!22332 lt!249458) (size!16934 a!3118)))) (or ((_ is Undefined!5026) lt!249458) ((_ is Found!5026) lt!249458) (not ((_ is MissingZero!5026) lt!249458)) (and (bvsge (index!22331 lt!249458) #b00000000000000000000000000000000) (bvslt (index!22331 lt!249458) (size!16934 a!3118)))) (or ((_ is Undefined!5026) lt!249458) ((_ is Found!5026) lt!249458) ((_ is MissingZero!5026) lt!249458) (not ((_ is MissingVacant!5026) lt!249458)) (and (bvsge (index!22334 lt!249458) #b00000000000000000000000000000000) (bvslt (index!22334 lt!249458) (size!16934 a!3118)))) (or ((_ is Undefined!5026) lt!249458) (ite ((_ is Found!5026) lt!249458) (= (select (arr!16570 a!3118) (index!22332 lt!249458)) k0!1914) (ite ((_ is MissingZero!5026) lt!249458) (= (select (arr!16570 a!3118) (index!22331 lt!249458)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5026) lt!249458) (= (select (arr!16570 a!3118) (index!22334 lt!249458)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!316131 () SeekEntryResult!5026)

(assert (=> d!82331 (= lt!249458 e!316131)))

(declare-fun c!63441 () Bool)

(declare-fun lt!249456 () SeekEntryResult!5026)

(assert (=> d!82331 (= c!63441 (and ((_ is Intermediate!5026) lt!249456) (undefined!5838 lt!249456)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34499 (_ BitVec 32)) SeekEntryResult!5026)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82331 (= lt!249456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82331 (validMask!0 mask!3119)))

(assert (=> d!82331 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!249458)))

(declare-fun b!547109 () Bool)

(declare-fun e!316130 () SeekEntryResult!5026)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34499 (_ BitVec 32)) SeekEntryResult!5026)

(assert (=> b!547109 (= e!316130 (seekKeyOrZeroReturnVacant!0 (x!51305 lt!249456) (index!22333 lt!249456) (index!22333 lt!249456) k0!1914 a!3118 mask!3119))))

(declare-fun b!547110 () Bool)

(assert (=> b!547110 (= e!316131 Undefined!5026)))

(declare-fun b!547111 () Bool)

(declare-fun c!63440 () Bool)

(declare-fun lt!249457 () (_ BitVec 64))

(assert (=> b!547111 (= c!63440 (= lt!249457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316132 () SeekEntryResult!5026)

(assert (=> b!547111 (= e!316132 e!316130)))

(declare-fun b!547112 () Bool)

(assert (=> b!547112 (= e!316130 (MissingZero!5026 (index!22333 lt!249456)))))

(declare-fun b!547113 () Bool)

(assert (=> b!547113 (= e!316131 e!316132)))

(assert (=> b!547113 (= lt!249457 (select (arr!16570 a!3118) (index!22333 lt!249456)))))

(declare-fun c!63442 () Bool)

(assert (=> b!547113 (= c!63442 (= lt!249457 k0!1914))))

(declare-fun b!547114 () Bool)

(assert (=> b!547114 (= e!316132 (Found!5026 (index!22333 lt!249456)))))

(assert (= (and d!82331 c!63441) b!547110))

(assert (= (and d!82331 (not c!63441)) b!547113))

(assert (= (and b!547113 c!63442) b!547114))

(assert (= (and b!547113 (not c!63442)) b!547111))

(assert (= (and b!547111 c!63440) b!547112))

(assert (= (and b!547111 (not c!63440)) b!547109))

(declare-fun m!524441 () Bool)

(assert (=> d!82331 m!524441))

(declare-fun m!524443 () Bool)

(assert (=> d!82331 m!524443))

(assert (=> d!82331 m!524441))

(declare-fun m!524445 () Bool)

(assert (=> d!82331 m!524445))

(assert (=> d!82331 m!524407))

(declare-fun m!524447 () Bool)

(assert (=> d!82331 m!524447))

(declare-fun m!524449 () Bool)

(assert (=> d!82331 m!524449))

(declare-fun m!524451 () Bool)

(assert (=> b!547109 m!524451))

(declare-fun m!524453 () Bool)

(assert (=> b!547113 m!524453))

(assert (=> b!547055 d!82331))

(declare-fun d!82343 () Bool)

(assert (=> d!82343 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547054 d!82343))

(declare-fun b!547149 () Bool)

(declare-fun e!316157 () Bool)

(declare-fun call!32159 () Bool)

(assert (=> b!547149 (= e!316157 call!32159)))

(declare-fun b!547150 () Bool)

(declare-fun e!316156 () Bool)

(assert (=> b!547150 (= e!316156 e!316157)))

(declare-fun lt!249478 () (_ BitVec 64))

(assert (=> b!547150 (= lt!249478 (select (arr!16570 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16928 0))(
  ( (Unit!16929) )
))
(declare-fun lt!249477 () Unit!16928)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34499 (_ BitVec 64) (_ BitVec 32)) Unit!16928)

(assert (=> b!547150 (= lt!249477 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249478 #b00000000000000000000000000000000))))

(assert (=> b!547150 (arrayContainsKey!0 a!3118 lt!249478 #b00000000000000000000000000000000)))

(declare-fun lt!249479 () Unit!16928)

(assert (=> b!547150 (= lt!249479 lt!249477)))

(declare-fun res!340896 () Bool)

(assert (=> b!547150 (= res!340896 (= (seekEntryOrOpen!0 (select (arr!16570 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5026 #b00000000000000000000000000000000)))))

(assert (=> b!547150 (=> (not res!340896) (not e!316157))))

(declare-fun b!547151 () Bool)

(declare-fun e!316155 () Bool)

(assert (=> b!547151 (= e!316155 e!316156)))

(declare-fun c!63455 () Bool)

(assert (=> b!547151 (= c!63455 (validKeyInArray!0 (select (arr!16570 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547152 () Bool)

(assert (=> b!547152 (= e!316156 call!32159)))

(declare-fun d!82345 () Bool)

(declare-fun res!340895 () Bool)

(assert (=> d!82345 (=> res!340895 e!316155)))

(assert (=> d!82345 (= res!340895 (bvsge #b00000000000000000000000000000000 (size!16934 a!3118)))))

(assert (=> d!82345 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316155)))

(declare-fun bm!32156 () Bool)

(assert (=> bm!32156 (= call!32159 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82345 (not res!340895)) b!547151))

(assert (= (and b!547151 c!63455) b!547150))

(assert (= (and b!547151 (not c!63455)) b!547152))

(assert (= (and b!547150 res!340896) b!547149))

(assert (= (or b!547149 b!547152) bm!32156))

(declare-fun m!524479 () Bool)

(assert (=> b!547150 m!524479))

(declare-fun m!524481 () Bool)

(assert (=> b!547150 m!524481))

(declare-fun m!524483 () Bool)

(assert (=> b!547150 m!524483))

(assert (=> b!547150 m!524479))

(declare-fun m!524485 () Bool)

(assert (=> b!547150 m!524485))

(assert (=> b!547151 m!524479))

(assert (=> b!547151 m!524479))

(declare-fun m!524491 () Bool)

(assert (=> b!547151 m!524491))

(declare-fun m!524493 () Bool)

(assert (=> bm!32156 m!524493))

(assert (=> b!547058 d!82345))

(declare-fun d!82353 () Bool)

(declare-fun res!340903 () Bool)

(declare-fun e!316164 () Bool)

(assert (=> d!82353 (=> res!340903 e!316164)))

(assert (=> d!82353 (= res!340903 (= (select (arr!16570 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82353 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!316164)))

(declare-fun b!547159 () Bool)

(declare-fun e!316165 () Bool)

(assert (=> b!547159 (= e!316164 e!316165)))

(declare-fun res!340904 () Bool)

(assert (=> b!547159 (=> (not res!340904) (not e!316165))))

(assert (=> b!547159 (= res!340904 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16934 a!3118)))))

(declare-fun b!547160 () Bool)

(assert (=> b!547160 (= e!316165 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82353 (not res!340903)) b!547159))

(assert (= (and b!547159 res!340904) b!547160))

(assert (=> d!82353 m!524479))

(declare-fun m!524495 () Bool)

(assert (=> b!547160 m!524495))

(assert (=> b!547052 d!82353))

(declare-fun d!82359 () Bool)

(assert (=> d!82359 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49840 d!82359))

(declare-fun d!82369 () Bool)

(assert (=> d!82369 (= (array_inv!12344 a!3118) (bvsge (size!16934 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49840 d!82369))

(declare-fun d!82371 () Bool)

(declare-fun res!340909 () Bool)

(declare-fun e!316170 () Bool)

(assert (=> d!82371 (=> res!340909 e!316170)))

(assert (=> d!82371 (= res!340909 ((_ is Nil!10700) Nil!10700))))

(assert (=> d!82371 (= (noDuplicate!221 Nil!10700) e!316170)))

(declare-fun b!547165 () Bool)

(declare-fun e!316171 () Bool)

(assert (=> b!547165 (= e!316170 e!316171)))

(declare-fun res!340910 () Bool)

(assert (=> b!547165 (=> (not res!340910) (not e!316171))))

(declare-fun contains!2821 (List!10703 (_ BitVec 64)) Bool)

(assert (=> b!547165 (= res!340910 (not (contains!2821 (t!16939 Nil!10700) (h!11666 Nil!10700))))))

(declare-fun b!547166 () Bool)

(assert (=> b!547166 (= e!316171 (noDuplicate!221 (t!16939 Nil!10700)))))

(assert (= (and d!82371 (not res!340909)) b!547165))

(assert (= (and b!547165 res!340910) b!547166))

(declare-fun m!524497 () Bool)

(assert (=> b!547165 m!524497))

(declare-fun m!524499 () Bool)

(assert (=> b!547166 m!524499))

(assert (=> b!547051 d!82371))

(check-sat (not b!547166) (not d!82331) (not b!547150) (not bm!32156) (not b!547151) (not b!547109) (not b!547160) (not b!547165))
(check-sat)
