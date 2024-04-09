; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46358 () Bool)

(assert start!46358)

(declare-fun b!512905 () Bool)

(declare-fun e!299508 () Bool)

(declare-fun e!299510 () Bool)

(assert (=> b!512905 (= e!299508 e!299510)))

(declare-fun res!313539 () Bool)

(assert (=> b!512905 (=> (not res!313539) (not e!299510))))

(declare-datatypes ((SeekEntryResult!4304 0))(
  ( (MissingZero!4304 (index!19404 (_ BitVec 32))) (Found!4304 (index!19405 (_ BitVec 32))) (Intermediate!4304 (undefined!5116 Bool) (index!19406 (_ BitVec 32)) (x!48376 (_ BitVec 32))) (Undefined!4304) (MissingVacant!4304 (index!19407 (_ BitVec 32))) )
))
(declare-fun lt!234879 () SeekEntryResult!4304)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512905 (= res!313539 (or (= lt!234879 (MissingZero!4304 i!1204)) (= lt!234879 (MissingVacant!4304 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32915 0))(
  ( (array!32916 (arr!15830 (Array (_ BitVec 32) (_ BitVec 64))) (size!16194 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32915)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32915 (_ BitVec 32)) SeekEntryResult!4304)

(assert (=> b!512905 (= lt!234879 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512906 () Bool)

(declare-fun res!313544 () Bool)

(assert (=> b!512906 (=> (not res!313544) (not e!299510))))

(declare-datatypes ((List!10041 0))(
  ( (Nil!10038) (Cons!10037 (h!10920 (_ BitVec 64)) (t!16277 List!10041)) )
))
(declare-fun arrayNoDuplicates!0 (array!32915 (_ BitVec 32) List!10041) Bool)

(assert (=> b!512906 (= res!313544 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10038))))

(declare-fun b!512907 () Bool)

(declare-fun res!313536 () Bool)

(assert (=> b!512907 (=> (not res!313536) (not e!299510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32915 (_ BitVec 32)) Bool)

(assert (=> b!512907 (= res!313536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512908 () Bool)

(declare-fun e!299511 () Bool)

(declare-fun lt!234881 () SeekEntryResult!4304)

(assert (=> b!512908 (= e!299511 (and (bvsge (index!19406 lt!234881) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234881) (size!16194 a!3235))))))

(assert (=> b!512908 (bvslt (x!48376 lt!234881) #b01111111111111111111111111111110)))

(declare-fun b!512909 () Bool)

(declare-fun res!313535 () Bool)

(assert (=> b!512909 (=> (not res!313535) (not e!299508))))

(declare-fun arrayContainsKey!0 (array!32915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512909 (= res!313535 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512910 () Bool)

(declare-fun res!313537 () Bool)

(assert (=> b!512910 (=> (not res!313537) (not e!299508))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512910 (= res!313537 (validKeyInArray!0 (select (arr!15830 a!3235) j!176)))))

(declare-fun b!512911 () Bool)

(declare-fun res!313542 () Bool)

(assert (=> b!512911 (=> (not res!313542) (not e!299508))))

(assert (=> b!512911 (= res!313542 (and (= (size!16194 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16194 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16194 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512913 () Bool)

(declare-fun res!313543 () Bool)

(assert (=> b!512913 (=> res!313543 e!299511)))

(assert (=> b!512913 (= res!313543 (or (undefined!5116 lt!234881) (not (is-Intermediate!4304 lt!234881))))))

(declare-fun b!512914 () Bool)

(declare-fun res!313541 () Bool)

(assert (=> b!512914 (=> (not res!313541) (not e!299508))))

(assert (=> b!512914 (= res!313541 (validKeyInArray!0 k!2280))))

(declare-fun e!299509 () Bool)

(declare-fun b!512915 () Bool)

(assert (=> b!512915 (= e!299509 (= (seekEntryOrOpen!0 (select (arr!15830 a!3235) j!176) a!3235 mask!3524) (Found!4304 j!176)))))

(declare-fun res!313538 () Bool)

(assert (=> start!46358 (=> (not res!313538) (not e!299508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46358 (= res!313538 (validMask!0 mask!3524))))

(assert (=> start!46358 e!299508))

(assert (=> start!46358 true))

(declare-fun array_inv!11604 (array!32915) Bool)

(assert (=> start!46358 (array_inv!11604 a!3235)))

(declare-fun b!512912 () Bool)

(assert (=> b!512912 (= e!299510 (not e!299511))))

(declare-fun res!313540 () Bool)

(assert (=> b!512912 (=> res!313540 e!299511)))

(declare-fun lt!234878 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32915 (_ BitVec 32)) SeekEntryResult!4304)

(assert (=> b!512912 (= res!313540 (= lt!234881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234878 (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)) mask!3524)))))

(declare-fun lt!234880 () (_ BitVec 32))

(assert (=> b!512912 (= lt!234881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234880 (select (arr!15830 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512912 (= lt!234878 (toIndex!0 (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512912 (= lt!234880 (toIndex!0 (select (arr!15830 a!3235) j!176) mask!3524))))

(assert (=> b!512912 e!299509))

(declare-fun res!313534 () Bool)

(assert (=> b!512912 (=> (not res!313534) (not e!299509))))

(assert (=> b!512912 (= res!313534 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15858 0))(
  ( (Unit!15859) )
))
(declare-fun lt!234877 () Unit!15858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15858)

(assert (=> b!512912 (= lt!234877 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46358 res!313538) b!512911))

(assert (= (and b!512911 res!313542) b!512910))

(assert (= (and b!512910 res!313537) b!512914))

(assert (= (and b!512914 res!313541) b!512909))

(assert (= (and b!512909 res!313535) b!512905))

(assert (= (and b!512905 res!313539) b!512907))

(assert (= (and b!512907 res!313536) b!512906))

(assert (= (and b!512906 res!313544) b!512912))

(assert (= (and b!512912 res!313534) b!512915))

(assert (= (and b!512912 (not res!313540)) b!512913))

(assert (= (and b!512913 (not res!313543)) b!512908))

(declare-fun m!494587 () Bool)

(assert (=> b!512910 m!494587))

(assert (=> b!512910 m!494587))

(declare-fun m!494589 () Bool)

(assert (=> b!512910 m!494589))

(declare-fun m!494591 () Bool)

(assert (=> b!512909 m!494591))

(declare-fun m!494593 () Bool)

(assert (=> start!46358 m!494593))

(declare-fun m!494595 () Bool)

(assert (=> start!46358 m!494595))

(declare-fun m!494597 () Bool)

(assert (=> b!512905 m!494597))

(declare-fun m!494599 () Bool)

(assert (=> b!512907 m!494599))

(declare-fun m!494601 () Bool)

(assert (=> b!512912 m!494601))

(declare-fun m!494603 () Bool)

(assert (=> b!512912 m!494603))

(declare-fun m!494605 () Bool)

(assert (=> b!512912 m!494605))

(declare-fun m!494607 () Bool)

(assert (=> b!512912 m!494607))

(assert (=> b!512912 m!494603))

(assert (=> b!512912 m!494587))

(declare-fun m!494609 () Bool)

(assert (=> b!512912 m!494609))

(assert (=> b!512912 m!494587))

(declare-fun m!494611 () Bool)

(assert (=> b!512912 m!494611))

(assert (=> b!512912 m!494587))

(declare-fun m!494613 () Bool)

(assert (=> b!512912 m!494613))

(assert (=> b!512912 m!494603))

(declare-fun m!494615 () Bool)

(assert (=> b!512912 m!494615))

(assert (=> b!512915 m!494587))

(assert (=> b!512915 m!494587))

(declare-fun m!494617 () Bool)

(assert (=> b!512915 m!494617))

(declare-fun m!494619 () Bool)

(assert (=> b!512906 m!494619))

(declare-fun m!494621 () Bool)

(assert (=> b!512914 m!494621))

(push 1)

(assert (not b!512910))

(assert (not b!512909))

(assert (not b!512907))

(assert (not b!512906))

(assert (not b!512912))

(assert (not start!46358))

(assert (not b!512915))

(assert (not b!512914))

(assert (not b!512905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!512939 () Bool)

(declare-fun e!299529 () Bool)

(declare-fun e!299527 () Bool)

(assert (=> b!512939 (= e!299529 e!299527)))

(declare-fun res!313552 () Bool)

(assert (=> b!512939 (=> (not res!313552) (not e!299527))))

(declare-fun e!299528 () Bool)

(assert (=> b!512939 (= res!313552 (not e!299528))))

(declare-fun res!313551 () Bool)

(assert (=> b!512939 (=> (not res!313551) (not e!299528))))

(assert (=> b!512939 (= res!313551 (validKeyInArray!0 (select (arr!15830 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!512940 () Bool)

(declare-fun e!299530 () Bool)

(assert (=> b!512940 (= e!299527 e!299530)))

(declare-fun c!59975 () Bool)

(assert (=> b!512940 (= c!59975 (validKeyInArray!0 (select (arr!15830 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31532 () Bool)

(declare-fun call!31535 () Bool)

(assert (=> bm!31532 (= call!31535 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59975 (Cons!10037 (select (arr!15830 a!3235) #b00000000000000000000000000000000) Nil!10038) Nil!10038)))))

(declare-fun b!512938 () Bool)

(declare-fun contains!2733 (List!10041 (_ BitVec 64)) Bool)

(assert (=> b!512938 (= e!299528 (contains!2733 Nil!10038 (select (arr!15830 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78959 () Bool)

(declare-fun res!313553 () Bool)

(assert (=> d!78959 (=> res!313553 e!299529)))

(assert (=> d!78959 (= res!313553 (bvsge #b00000000000000000000000000000000 (size!16194 a!3235)))))

(assert (=> d!78959 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10038) e!299529)))

(declare-fun b!512941 () Bool)

(assert (=> b!512941 (= e!299530 call!31535)))

(declare-fun b!512942 () Bool)

(assert (=> b!512942 (= e!299530 call!31535)))

(assert (= (and d!78959 (not res!313553)) b!512939))

(assert (= (and b!512939 res!313551) b!512938))

(assert (= (and b!512939 res!313552) b!512940))

(assert (= (and b!512940 c!59975) b!512942))

(assert (= (and b!512940 (not c!59975)) b!512941))

(assert (= (or b!512942 b!512941) bm!31532))

(declare-fun m!494623 () Bool)

(assert (=> b!512939 m!494623))

(assert (=> b!512939 m!494623))

(declare-fun m!494625 () Bool)

(assert (=> b!512939 m!494625))

(assert (=> b!512940 m!494623))

(assert (=> b!512940 m!494623))

(assert (=> b!512940 m!494625))

(assert (=> bm!31532 m!494623))

(declare-fun m!494627 () Bool)

(assert (=> bm!31532 m!494627))

(assert (=> b!512938 m!494623))

(assert (=> b!512938 m!494623))

(declare-fun m!494629 () Bool)

(assert (=> b!512938 m!494629))

(assert (=> b!512906 d!78959))

(declare-fun b!512989 () Bool)

(declare-fun c!59993 () Bool)

(declare-fun lt!234900 () (_ BitVec 64))

(assert (=> b!512989 (= c!59993 (= lt!234900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299563 () SeekEntryResult!4304)

(declare-fun e!299561 () SeekEntryResult!4304)

(assert (=> b!512989 (= e!299563 e!299561)))

(declare-fun b!512990 () Bool)

(declare-fun lt!234901 () SeekEntryResult!4304)

(assert (=> b!512990 (= e!299563 (Found!4304 (index!19406 lt!234901)))))

(declare-fun b!512991 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32915 (_ BitVec 32)) SeekEntryResult!4304)

(assert (=> b!512991 (= e!299561 (seekKeyOrZeroReturnVacant!0 (x!48376 lt!234901) (index!19406 lt!234901) (index!19406 lt!234901) k!2280 a!3235 mask!3524))))

(declare-fun b!512992 () Bool)

(declare-fun e!299562 () SeekEntryResult!4304)

(assert (=> b!512992 (= e!299562 Undefined!4304)))

(declare-fun b!512993 () Bool)

(assert (=> b!512993 (= e!299562 e!299563)))

(assert (=> b!512993 (= lt!234900 (select (arr!15830 a!3235) (index!19406 lt!234901)))))

(declare-fun c!59991 () Bool)

(assert (=> b!512993 (= c!59991 (= lt!234900 k!2280))))

(declare-fun d!78961 () Bool)

(declare-fun lt!234902 () SeekEntryResult!4304)

(assert (=> d!78961 (and (or (is-Undefined!4304 lt!234902) (not (is-Found!4304 lt!234902)) (and (bvsge (index!19405 lt!234902) #b00000000000000000000000000000000) (bvslt (index!19405 lt!234902) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234902) (is-Found!4304 lt!234902) (not (is-MissingZero!4304 lt!234902)) (and (bvsge (index!19404 lt!234902) #b00000000000000000000000000000000) (bvslt (index!19404 lt!234902) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234902) (is-Found!4304 lt!234902) (is-MissingZero!4304 lt!234902) (not (is-MissingVacant!4304 lt!234902)) (and (bvsge (index!19407 lt!234902) #b00000000000000000000000000000000) (bvslt (index!19407 lt!234902) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234902) (ite (is-Found!4304 lt!234902) (= (select (arr!15830 a!3235) (index!19405 lt!234902)) k!2280) (ite (is-MissingZero!4304 lt!234902) (= (select (arr!15830 a!3235) (index!19404 lt!234902)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4304 lt!234902) (= (select (arr!15830 a!3235) (index!19407 lt!234902)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78961 (= lt!234902 e!299562)))

(declare-fun c!59992 () Bool)

(assert (=> d!78961 (= c!59992 (and (is-Intermediate!4304 lt!234901) (undefined!5116 lt!234901)))))

(assert (=> d!78961 (= lt!234901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78961 (validMask!0 mask!3524)))

(assert (=> d!78961 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!234902)))

(declare-fun b!512988 () Bool)

(assert (=> b!512988 (= e!299561 (MissingZero!4304 (index!19406 lt!234901)))))

(assert (= (and d!78961 c!59992) b!512992))

(assert (= (and d!78961 (not c!59992)) b!512993))

(assert (= (and b!512993 c!59991) b!512990))

(assert (= (and b!512993 (not c!59991)) b!512989))

(assert (= (and b!512989 c!59993) b!512988))

(assert (= (and b!512989 (not c!59993)) b!512991))

(declare-fun m!494667 () Bool)

(assert (=> b!512991 m!494667))

(declare-fun m!494669 () Bool)

(assert (=> b!512993 m!494669))

(declare-fun m!494671 () Bool)

(assert (=> d!78961 m!494671))

(assert (=> d!78961 m!494593))

(declare-fun m!494673 () Bool)

(assert (=> d!78961 m!494673))

(declare-fun m!494675 () Bool)

(assert (=> d!78961 m!494675))

(declare-fun m!494677 () Bool)

(assert (=> d!78961 m!494677))

(assert (=> d!78961 m!494673))

(declare-fun m!494679 () Bool)

(assert (=> d!78961 m!494679))

(assert (=> b!512905 d!78961))

(declare-fun d!78979 () Bool)

(assert (=> d!78979 (= (validKeyInArray!0 (select (arr!15830 a!3235) j!176)) (and (not (= (select (arr!15830 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15830 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512910 d!78979))

(declare-fun b!512995 () Bool)

(declare-fun c!59996 () Bool)

(declare-fun lt!234903 () (_ BitVec 64))

(assert (=> b!512995 (= c!59996 (= lt!234903 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299566 () SeekEntryResult!4304)

(declare-fun e!299564 () SeekEntryResult!4304)

(assert (=> b!512995 (= e!299566 e!299564)))

(declare-fun b!512996 () Bool)

(declare-fun lt!234904 () SeekEntryResult!4304)

(assert (=> b!512996 (= e!299566 (Found!4304 (index!19406 lt!234904)))))

(declare-fun b!512997 () Bool)

(assert (=> b!512997 (= e!299564 (seekKeyOrZeroReturnVacant!0 (x!48376 lt!234904) (index!19406 lt!234904) (index!19406 lt!234904) (select (arr!15830 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512998 () Bool)

(declare-fun e!299565 () SeekEntryResult!4304)

(assert (=> b!512998 (= e!299565 Undefined!4304)))

(declare-fun b!512999 () Bool)

(assert (=> b!512999 (= e!299565 e!299566)))

(assert (=> b!512999 (= lt!234903 (select (arr!15830 a!3235) (index!19406 lt!234904)))))

(declare-fun c!59994 () Bool)

(assert (=> b!512999 (= c!59994 (= lt!234903 (select (arr!15830 a!3235) j!176)))))

(declare-fun d!78981 () Bool)

(declare-fun lt!234905 () SeekEntryResult!4304)

(assert (=> d!78981 (and (or (is-Undefined!4304 lt!234905) (not (is-Found!4304 lt!234905)) (and (bvsge (index!19405 lt!234905) #b00000000000000000000000000000000) (bvslt (index!19405 lt!234905) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234905) (is-Found!4304 lt!234905) (not (is-MissingZero!4304 lt!234905)) (and (bvsge (index!19404 lt!234905) #b00000000000000000000000000000000) (bvslt (index!19404 lt!234905) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234905) (is-Found!4304 lt!234905) (is-MissingZero!4304 lt!234905) (not (is-MissingVacant!4304 lt!234905)) (and (bvsge (index!19407 lt!234905) #b00000000000000000000000000000000) (bvslt (index!19407 lt!234905) (size!16194 a!3235)))) (or (is-Undefined!4304 lt!234905) (ite (is-Found!4304 lt!234905) (= (select (arr!15830 a!3235) (index!19405 lt!234905)) (select (arr!15830 a!3235) j!176)) (ite (is-MissingZero!4304 lt!234905) (= (select (arr!15830 a!3235) (index!19404 lt!234905)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4304 lt!234905) (= (select (arr!15830 a!3235) (index!19407 lt!234905)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78981 (= lt!234905 e!299565)))

(declare-fun c!59995 () Bool)

(assert (=> d!78981 (= c!59995 (and (is-Intermediate!4304 lt!234904) (undefined!5116 lt!234904)))))

(assert (=> d!78981 (= lt!234904 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15830 a!3235) j!176) mask!3524) (select (arr!15830 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78981 (validMask!0 mask!3524)))

(assert (=> d!78981 (= (seekEntryOrOpen!0 (select (arr!15830 a!3235) j!176) a!3235 mask!3524) lt!234905)))

(declare-fun b!512994 () Bool)

(assert (=> b!512994 (= e!299564 (MissingZero!4304 (index!19406 lt!234904)))))

(assert (= (and d!78981 c!59995) b!512998))

(assert (= (and d!78981 (not c!59995)) b!512999))

(assert (= (and b!512999 c!59994) b!512996))

(assert (= (and b!512999 (not c!59994)) b!512995))

(assert (= (and b!512995 c!59996) b!512994))

(assert (= (and b!512995 (not c!59996)) b!512997))

(assert (=> b!512997 m!494587))

(declare-fun m!494681 () Bool)

(assert (=> b!512997 m!494681))

(declare-fun m!494683 () Bool)

(assert (=> b!512999 m!494683))

(declare-fun m!494685 () Bool)

(assert (=> d!78981 m!494685))

(assert (=> d!78981 m!494593))

(assert (=> d!78981 m!494609))

(assert (=> d!78981 m!494587))

(declare-fun m!494687 () Bool)

(assert (=> d!78981 m!494687))

(declare-fun m!494689 () Bool)

(assert (=> d!78981 m!494689))

(assert (=> d!78981 m!494587))

(assert (=> d!78981 m!494609))

(declare-fun m!494691 () Bool)

(assert (=> d!78981 m!494691))

(assert (=> b!512915 d!78981))

(declare-fun d!78983 () Bool)

(declare-fun res!313573 () Bool)

(declare-fun e!299571 () Bool)

(assert (=> d!78983 (=> res!313573 e!299571)))

(assert (=> d!78983 (= res!313573 (= (select (arr!15830 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78983 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!299571)))

(declare-fun b!513004 () Bool)

(declare-fun e!299572 () Bool)

(assert (=> b!513004 (= e!299571 e!299572)))

(declare-fun res!313574 () Bool)

(assert (=> b!513004 (=> (not res!313574) (not e!299572))))

(assert (=> b!513004 (= res!313574 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16194 a!3235)))))

(declare-fun b!513005 () Bool)

(assert (=> b!513005 (= e!299572 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78983 (not res!313573)) b!513004))

(assert (= (and b!513004 res!313574) b!513005))

(assert (=> d!78983 m!494623))

(declare-fun m!494693 () Bool)

(assert (=> b!513005 m!494693))

(assert (=> b!512909 d!78983))

(declare-fun d!78985 () Bool)

(assert (=> d!78985 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46358 d!78985))

(declare-fun d!78987 () Bool)

(assert (=> d!78987 (= (array_inv!11604 a!3235) (bvsge (size!16194 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46358 d!78987))

(declare-fun d!78989 () Bool)

(assert (=> d!78989 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512914 d!78989))

(declare-fun b!513059 () Bool)

(declare-fun e!299605 () Bool)

(declare-fun e!299604 () Bool)

(assert (=> b!513059 (= e!299605 e!299604)))

(declare-fun lt!234935 () (_ BitVec 64))

(assert (=> b!513059 (= lt!234935 (select (arr!15830 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234934 () Unit!15858)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32915 (_ BitVec 64) (_ BitVec 32)) Unit!15858)

(assert (=> b!513059 (= lt!234934 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234935 #b00000000000000000000000000000000))))

(assert (=> b!513059 (arrayContainsKey!0 a!3235 lt!234935 #b00000000000000000000000000000000)))

(declare-fun lt!234933 () Unit!15858)

(assert (=> b!513059 (= lt!234933 lt!234934)))

(declare-fun res!313589 () Bool)

(assert (=> b!513059 (= res!313589 (= (seekEntryOrOpen!0 (select (arr!15830 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4304 #b00000000000000000000000000000000)))))

(assert (=> b!513059 (=> (not res!313589) (not e!299604))))

(declare-fun bm!31538 () Bool)

(declare-fun call!31541 () Bool)

(assert (=> bm!31538 (= call!31541 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513060 () Bool)

(assert (=> b!513060 (= e!299604 call!31541)))

(declare-fun b!513061 () Bool)

(declare-fun e!299603 () Bool)

(assert (=> b!513061 (= e!299603 e!299605)))

(declare-fun c!60017 () Bool)

(assert (=> b!513061 (= c!60017 (validKeyInArray!0 (select (arr!15830 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78991 () Bool)

(declare-fun res!313590 () Bool)

(assert (=> d!78991 (=> res!313590 e!299603)))

(assert (=> d!78991 (= res!313590 (bvsge #b00000000000000000000000000000000 (size!16194 a!3235)))))

(assert (=> d!78991 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299603)))

(declare-fun b!513062 () Bool)

(assert (=> b!513062 (= e!299605 call!31541)))

(assert (= (and d!78991 (not res!313590)) b!513061))

(assert (= (and b!513061 c!60017) b!513059))

(assert (= (and b!513061 (not c!60017)) b!513062))

(assert (= (and b!513059 res!313589) b!513060))

(assert (= (or b!513060 b!513062) bm!31538))

(assert (=> b!513059 m!494623))

(declare-fun m!494715 () Bool)

(assert (=> b!513059 m!494715))

(declare-fun m!494717 () Bool)

(assert (=> b!513059 m!494717))

(assert (=> b!513059 m!494623))

(declare-fun m!494719 () Bool)

(assert (=> b!513059 m!494719))

(declare-fun m!494721 () Bool)

(assert (=> bm!31538 m!494721))

(assert (=> b!513061 m!494623))

(assert (=> b!513061 m!494623))

(assert (=> b!513061 m!494625))

(assert (=> b!512907 d!78991))

(declare-fun d!79001 () Bool)

(declare-fun lt!234947 () (_ BitVec 32))

(declare-fun lt!234946 () (_ BitVec 32))

(assert (=> d!79001 (= lt!234947 (bvmul (bvxor lt!234946 (bvlshr lt!234946 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79001 (= lt!234946 ((_ extract 31 0) (bvand (bvxor (select (arr!15830 a!3235) j!176) (bvlshr (select (arr!15830 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79001 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313591 (let ((h!10922 ((_ extract 31 0) (bvand (bvxor (select (arr!15830 a!3235) j!176) (bvlshr (select (arr!15830 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48379 (bvmul (bvxor h!10922 (bvlshr h!10922 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48379 (bvlshr x!48379 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313591 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313591 #b00000000000000000000000000000000))))))

(assert (=> d!79001 (= (toIndex!0 (select (arr!15830 a!3235) j!176) mask!3524) (bvand (bvxor lt!234947 (bvlshr lt!234947 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512912 d!79001))

(declare-fun b!513077 () Bool)

(declare-fun e!299620 () Bool)

(declare-fun e!299619 () Bool)

(assert (=> b!513077 (= e!299620 e!299619)))

(declare-fun lt!234950 () (_ BitVec 64))

(assert (=> b!513077 (= lt!234950 (select (arr!15830 a!3235) j!176))))

(declare-fun lt!234949 () Unit!15858)

(assert (=> b!513077 (= lt!234949 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234950 j!176))))

(assert (=> b!513077 (arrayContainsKey!0 a!3235 lt!234950 #b00000000000000000000000000000000)))

(declare-fun lt!234948 () Unit!15858)

(assert (=> b!513077 (= lt!234948 lt!234949)))

(declare-fun res!313602 () Bool)

(assert (=> b!513077 (= res!313602 (= (seekEntryOrOpen!0 (select (arr!15830 a!3235) j!176) a!3235 mask!3524) (Found!4304 j!176)))))

(assert (=> b!513077 (=> (not res!313602) (not e!299619))))

(declare-fun bm!31541 () Bool)

(declare-fun call!31544 () Bool)

(assert (=> bm!31541 (= call!31544 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513078 () Bool)

(assert (=> b!513078 (= e!299619 call!31544)))

(declare-fun b!513079 () Bool)

(declare-fun e!299618 () Bool)

(assert (=> b!513079 (= e!299618 e!299620)))

(declare-fun c!60020 () Bool)

(assert (=> b!513079 (= c!60020 (validKeyInArray!0 (select (arr!15830 a!3235) j!176)))))

(declare-fun d!79009 () Bool)

(declare-fun res!313603 () Bool)

(assert (=> d!79009 (=> res!313603 e!299618)))

(assert (=> d!79009 (= res!313603 (bvsge j!176 (size!16194 a!3235)))))

(assert (=> d!79009 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299618)))

(declare-fun b!513080 () Bool)

(assert (=> b!513080 (= e!299620 call!31544)))

(assert (= (and d!79009 (not res!313603)) b!513079))

(assert (= (and b!513079 c!60020) b!513077))

(assert (= (and b!513079 (not c!60020)) b!513080))

(assert (= (and b!513077 res!313602) b!513078))

(assert (= (or b!513078 b!513080) bm!31541))

(assert (=> b!513077 m!494587))

(declare-fun m!494727 () Bool)

(assert (=> b!513077 m!494727))

(declare-fun m!494729 () Bool)

(assert (=> b!513077 m!494729))

(assert (=> b!513077 m!494587))

(assert (=> b!513077 m!494617))

(declare-fun m!494731 () Bool)

(assert (=> bm!31541 m!494731))

(assert (=> b!513079 m!494587))

(assert (=> b!513079 m!494587))

(assert (=> b!513079 m!494589))

(assert (=> b!512912 d!79009))

(declare-fun lt!234981 () SeekEntryResult!4304)

(declare-fun b!513149 () Bool)

(assert (=> b!513149 (and (bvsge (index!19406 lt!234981) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234981) (size!16194 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)))))))

(declare-fun e!299666 () Bool)

(assert (=> b!513149 (= e!299666 (= (select (arr!15830 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235))) (index!19406 lt!234981)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513150 () Bool)

(declare-fun e!299668 () SeekEntryResult!4304)

(assert (=> b!513150 (= e!299668 (Intermediate!4304 false lt!234878 #b00000000000000000000000000000000))))

(declare-fun b!513151 () Bool)

(assert (=> b!513151 (and (bvsge (index!19406 lt!234981) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234981) (size!16194 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)))))))

(declare-fun res!313632 () Bool)

(assert (=> b!513151 (= res!313632 (= (select (arr!15830 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235))) (index!19406 lt!234981)) (select (store (arr!15830 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!513151 (=> res!313632 e!299666)))

(declare-fun e!299669 () Bool)

(assert (=> b!513151 (= e!299669 e!299666)))

(declare-fun d!79011 () Bool)

(declare-fun e!299667 () Bool)

(assert (=> d!79011 e!299667))

(declare-fun c!60041 () Bool)

(assert (=> d!79011 (= c!60041 (and (is-Intermediate!4304 lt!234981) (undefined!5116 lt!234981)))))

(declare-fun e!299670 () SeekEntryResult!4304)

(assert (=> d!79011 (= lt!234981 e!299670)))

(declare-fun c!60042 () Bool)

(assert (=> d!79011 (= c!60042 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234980 () (_ BitVec 64))

(assert (=> d!79011 (= lt!234980 (select (arr!15830 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235))) lt!234878))))

(assert (=> d!79011 (validMask!0 mask!3524)))

(assert (=> d!79011 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234878 (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)) mask!3524) lt!234981)))

(declare-fun b!513152 () Bool)

(assert (=> b!513152 (= e!299667 (bvsge (x!48376 lt!234981) #b01111111111111111111111111111110))))

(declare-fun b!513153 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513153 (= e!299668 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234878 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)) mask!3524))))

(declare-fun b!513154 () Bool)

(assert (=> b!513154 (= e!299670 (Intermediate!4304 true lt!234878 #b00000000000000000000000000000000))))

(declare-fun b!513155 () Bool)

(assert (=> b!513155 (= e!299670 e!299668)))

(declare-fun c!60043 () Bool)

(assert (=> b!513155 (= c!60043 (or (= lt!234980 (select (store (arr!15830 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!234980 lt!234980) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513156 () Bool)

(assert (=> b!513156 (and (bvsge (index!19406 lt!234981) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234981) (size!16194 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235)))))))

(declare-fun res!313634 () Bool)

(assert (=> b!513156 (= res!313634 (= (select (arr!15830 (array!32916 (store (arr!15830 a!3235) i!1204 k!2280) (size!16194 a!3235))) (index!19406 lt!234981)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513156 (=> res!313634 e!299666)))

(declare-fun b!513157 () Bool)

(assert (=> b!513157 (= e!299667 e!299669)))

(declare-fun res!313633 () Bool)

(assert (=> b!513157 (= res!313633 (and (is-Intermediate!4304 lt!234981) (not (undefined!5116 lt!234981)) (bvslt (x!48376 lt!234981) #b01111111111111111111111111111110) (bvsge (x!48376 lt!234981) #b00000000000000000000000000000000) (bvsge (x!48376 lt!234981) #b00000000000000000000000000000000)))))

(assert (=> b!513157 (=> (not res!313633) (not e!299669))))

(assert (= (and d!79011 c!60042) b!513154))

(assert (= (and d!79011 (not c!60042)) b!513155))

(assert (= (and b!513155 c!60043) b!513150))

(assert (= (and b!513155 (not c!60043)) b!513153))

(assert (= (and d!79011 c!60041) b!513152))

(assert (= (and d!79011 (not c!60041)) b!513157))

(assert (= (and b!513157 res!313633) b!513151))

(assert (= (and b!513151 (not res!313632)) b!513156))

(assert (= (and b!513156 (not res!313634)) b!513149))

(declare-fun m!494785 () Bool)

(assert (=> b!513149 m!494785))

(declare-fun m!494787 () Bool)

(assert (=> d!79011 m!494787))

(assert (=> d!79011 m!494593))

(assert (=> b!513156 m!494785))

(declare-fun m!494789 () Bool)

(assert (=> b!513153 m!494789))

(assert (=> b!513153 m!494789))

(assert (=> b!513153 m!494603))

(declare-fun m!494791 () Bool)

(assert (=> b!513153 m!494791))

(assert (=> b!513151 m!494785))

(assert (=> b!512912 d!79011))

(declare-fun d!79031 () Bool)

(assert (=> d!79031 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!234984 () Unit!15858)

(declare-fun choose!38 (array!32915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15858)

(assert (=> d!79031 (= lt!234984 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79031 (validMask!0 mask!3524)))

(assert (=> d!79031 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!234984)))

(declare-fun bs!16243 () Bool)

(assert (= bs!16243 d!79031))

(assert (=> bs!16243 m!494613))

(declare-fun m!494793 () Bool)

(assert (=> bs!16243 m!494793))

(assert (=> bs!16243 m!494593))

(assert (=> b!512912 d!79031))

(declare-fun d!79033 () Bool)

(declare-fun lt!234986 () (_ BitVec 32))

(declare-fun lt!234985 () (_ BitVec 32))

(assert (=> d!79033 (= lt!234986 (bvmul (bvxor lt!234985 (bvlshr lt!234985 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79033 (= lt!234985 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79033 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313591 (let ((h!10922 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48379 (bvmul (bvxor h!10922 (bvlshr h!10922 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48379 (bvlshr x!48379 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313591 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313591 #b00000000000000000000000000000000))))))

(assert (=> d!79033 (= (toIndex!0 (select (store (arr!15830 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!234986 (bvlshr lt!234986 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512912 d!79033))

(declare-fun b!513158 () Bool)

(declare-fun lt!234988 () SeekEntryResult!4304)

(assert (=> b!513158 (and (bvsge (index!19406 lt!234988) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234988) (size!16194 a!3235)))))

(declare-fun e!299671 () Bool)

(assert (=> b!513158 (= e!299671 (= (select (arr!15830 a!3235) (index!19406 lt!234988)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513159 () Bool)

(declare-fun e!299673 () SeekEntryResult!4304)

(assert (=> b!513159 (= e!299673 (Intermediate!4304 false lt!234880 #b00000000000000000000000000000000))))

(declare-fun b!513160 () Bool)

(assert (=> b!513160 (and (bvsge (index!19406 lt!234988) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234988) (size!16194 a!3235)))))

(declare-fun res!313635 () Bool)

(assert (=> b!513160 (= res!313635 (= (select (arr!15830 a!3235) (index!19406 lt!234988)) (select (arr!15830 a!3235) j!176)))))

(assert (=> b!513160 (=> res!313635 e!299671)))

(declare-fun e!299674 () Bool)

(assert (=> b!513160 (= e!299674 e!299671)))

(declare-fun d!79035 () Bool)

(declare-fun e!299672 () Bool)

(assert (=> d!79035 e!299672))

(declare-fun c!60044 () Bool)

(assert (=> d!79035 (= c!60044 (and (is-Intermediate!4304 lt!234988) (undefined!5116 lt!234988)))))

(declare-fun e!299675 () SeekEntryResult!4304)

(assert (=> d!79035 (= lt!234988 e!299675)))

(declare-fun c!60045 () Bool)

(assert (=> d!79035 (= c!60045 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234987 () (_ BitVec 64))

(assert (=> d!79035 (= lt!234987 (select (arr!15830 a!3235) lt!234880))))

(assert (=> d!79035 (validMask!0 mask!3524)))

(assert (=> d!79035 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234880 (select (arr!15830 a!3235) j!176) a!3235 mask!3524) lt!234988)))

(declare-fun b!513161 () Bool)

(assert (=> b!513161 (= e!299672 (bvsge (x!48376 lt!234988) #b01111111111111111111111111111110))))

(declare-fun b!513162 () Bool)

(assert (=> b!513162 (= e!299673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234880 #b00000000000000000000000000000000 mask!3524) (select (arr!15830 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513163 () Bool)

(assert (=> b!513163 (= e!299675 (Intermediate!4304 true lt!234880 #b00000000000000000000000000000000))))

(declare-fun b!513164 () Bool)

(assert (=> b!513164 (= e!299675 e!299673)))

(declare-fun c!60046 () Bool)

(assert (=> b!513164 (= c!60046 (or (= lt!234987 (select (arr!15830 a!3235) j!176)) (= (bvadd lt!234987 lt!234987) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513165 () Bool)

(assert (=> b!513165 (and (bvsge (index!19406 lt!234988) #b00000000000000000000000000000000) (bvslt (index!19406 lt!234988) (size!16194 a!3235)))))

(declare-fun res!313637 () Bool)

(assert (=> b!513165 (= res!313637 (= (select (arr!15830 a!3235) (index!19406 lt!234988)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!513165 (=> res!313637 e!299671)))

(declare-fun b!513166 () Bool)

(assert (=> b!513166 (= e!299672 e!299674)))

(declare-fun res!313636 () Bool)

(assert (=> b!513166 (= res!313636 (and (is-Intermediate!4304 lt!234988) (not (undefined!5116 lt!234988)) (bvslt (x!48376 lt!234988) #b01111111111111111111111111111110) (bvsge (x!48376 lt!234988) #b00000000000000000000000000000000) (bvsge (x!48376 lt!234988) #b00000000000000000000000000000000)))))

(assert (=> b!513166 (=> (not res!313636) (not e!299674))))

(assert (= (and d!79035 c!60045) b!513163))

(assert (= (and d!79035 (not c!60045)) b!513164))

(assert (= (and b!513164 c!60046) b!513159))

(assert (= (and b!513164 (not c!60046)) b!513162))

(assert (= (and d!79035 c!60044) b!513161))

(assert (= (and d!79035 (not c!60044)) b!513166))

(assert (= (and b!513166 res!313636) b!513160))

(assert (= (and b!513160 (not res!313635)) b!513165))

(assert (= (and b!513165 (not res!313637)) b!513158))

(declare-fun m!494795 () Bool)

(assert (=> b!513158 m!494795))

(declare-fun m!494797 () Bool)

(assert (=> d!79035 m!494797))

(assert (=> d!79035 m!494593))

(assert (=> b!513165 m!494795))

(declare-fun m!494799 () Bool)

(assert (=> b!513162 m!494799))

(assert (=> b!513162 m!494799))

(assert (=> b!513162 m!494587))

(declare-fun m!494801 () Bool)

(assert (=> b!513162 m!494801))

(assert (=> b!513160 m!494795))

(assert (=> b!512912 d!79035))

(push 1)

