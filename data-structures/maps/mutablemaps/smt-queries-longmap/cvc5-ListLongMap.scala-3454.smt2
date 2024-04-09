; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47926 () Bool)

(assert start!47926)

(declare-fun lt!243003 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!527658 () Bool)

(declare-datatypes ((array!33454 0))(
  ( (array!33455 (arr!16074 (Array (_ BitVec 32) (_ BitVec 64))) (size!16438 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33454)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!307508 () Bool)

(declare-datatypes ((SeekEntryResult!4548 0))(
  ( (MissingZero!4548 (index!20410 (_ BitVec 32))) (Found!4548 (index!20411 (_ BitVec 32))) (Intermediate!4548 (undefined!5360 Bool) (index!20412 (_ BitVec 32)) (x!49408 (_ BitVec 32))) (Undefined!4548) (MissingVacant!4548 (index!20413 (_ BitVec 32))) )
))
(declare-fun lt!242999 () SeekEntryResult!4548)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33454 (_ BitVec 32)) SeekEntryResult!4548)

(assert (=> b!527658 (= e!307508 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243003 (index!20412 lt!242999) (select (arr!16074 a!3235) j!176) a!3235 mask!3524) (Found!4548 j!176)))))

(declare-fun b!527659 () Bool)

(declare-fun e!307513 () Bool)

(declare-fun e!307511 () Bool)

(assert (=> b!527659 (= e!307513 e!307511)))

(declare-fun res!324083 () Bool)

(assert (=> b!527659 (=> (not res!324083) (not e!307511))))

(declare-fun lt!243000 () SeekEntryResult!4548)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527659 (= res!324083 (or (= lt!243000 (MissingZero!4548 i!1204)) (= lt!243000 (MissingVacant!4548 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33454 (_ BitVec 32)) SeekEntryResult!4548)

(assert (=> b!527659 (= lt!243000 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!527660 () Bool)

(declare-fun res!324074 () Bool)

(assert (=> b!527660 (=> (not res!324074) (not e!307513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527660 (= res!324074 (validKeyInArray!0 k!2280))))

(declare-fun b!527661 () Bool)

(declare-fun e!307507 () Bool)

(assert (=> b!527661 (= e!307511 (not e!307507))))

(declare-fun res!324075 () Bool)

(assert (=> b!527661 (=> res!324075 e!307507)))

(declare-fun lt!243004 () (_ BitVec 32))

(declare-fun lt!243002 () (_ BitVec 64))

(declare-fun lt!243006 () array!33454)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33454 (_ BitVec 32)) SeekEntryResult!4548)

(assert (=> b!527661 (= res!324075 (= lt!242999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243004 lt!243002 lt!243006 mask!3524)))))

(assert (=> b!527661 (= lt!242999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243003 (select (arr!16074 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527661 (= lt!243004 (toIndex!0 lt!243002 mask!3524))))

(assert (=> b!527661 (= lt!243002 (select (store (arr!16074 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!527661 (= lt!243003 (toIndex!0 (select (arr!16074 a!3235) j!176) mask!3524))))

(assert (=> b!527661 (= lt!243006 (array!33455 (store (arr!16074 a!3235) i!1204 k!2280) (size!16438 a!3235)))))

(declare-fun e!307509 () Bool)

(assert (=> b!527661 e!307509))

(declare-fun res!324085 () Bool)

(assert (=> b!527661 (=> (not res!324085) (not e!307509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33454 (_ BitVec 32)) Bool)

(assert (=> b!527661 (= res!324085 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16658 0))(
  ( (Unit!16659) )
))
(declare-fun lt!243008 () Unit!16658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16658)

(assert (=> b!527661 (= lt!243008 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527662 () Bool)

(declare-fun res!324084 () Bool)

(assert (=> b!527662 (=> (not res!324084) (not e!307513))))

(assert (=> b!527662 (= res!324084 (and (= (size!16438 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16438 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16438 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527663 () Bool)

(declare-fun e!307512 () Unit!16658)

(declare-fun Unit!16660 () Unit!16658)

(assert (=> b!527663 (= e!307512 Unit!16660)))

(declare-fun lt!243007 () Unit!16658)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16658)

(assert (=> b!527663 (= lt!243007 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243003 #b00000000000000000000000000000000 (index!20412 lt!242999) (x!49408 lt!242999) mask!3524))))

(declare-fun res!324079 () Bool)

(assert (=> b!527663 (= res!324079 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243003 lt!243002 lt!243006 mask!3524) (Intermediate!4548 false (index!20412 lt!242999) (x!49408 lt!242999))))))

(declare-fun e!307510 () Bool)

(assert (=> b!527663 (=> (not res!324079) (not e!307510))))

(assert (=> b!527663 e!307510))

(declare-fun res!324077 () Bool)

(assert (=> start!47926 (=> (not res!324077) (not e!307513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47926 (= res!324077 (validMask!0 mask!3524))))

(assert (=> start!47926 e!307513))

(assert (=> start!47926 true))

(declare-fun array_inv!11848 (array!33454) Bool)

(assert (=> start!47926 (array_inv!11848 a!3235)))

(declare-fun b!527664 () Bool)

(declare-fun res!324080 () Bool)

(assert (=> b!527664 (=> (not res!324080) (not e!307511))))

(assert (=> b!527664 (= res!324080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527665 () Bool)

(declare-fun res!324081 () Bool)

(assert (=> b!527665 (=> res!324081 e!307507)))

(assert (=> b!527665 (= res!324081 (or (undefined!5360 lt!242999) (not (is-Intermediate!4548 lt!242999))))))

(declare-fun b!527666 () Bool)

(declare-fun Unit!16661 () Unit!16658)

(assert (=> b!527666 (= e!307512 Unit!16661)))

(declare-fun b!527667 () Bool)

(declare-fun res!324086 () Bool)

(assert (=> b!527667 (=> (not res!324086) (not e!307513))))

(assert (=> b!527667 (= res!324086 (validKeyInArray!0 (select (arr!16074 a!3235) j!176)))))

(declare-fun b!527668 () Bool)

(assert (=> b!527668 (= e!307509 (= (seekEntryOrOpen!0 (select (arr!16074 a!3235) j!176) a!3235 mask!3524) (Found!4548 j!176)))))

(declare-fun b!527669 () Bool)

(assert (=> b!527669 (= e!307507 e!307508)))

(declare-fun res!324082 () Bool)

(assert (=> b!527669 (=> res!324082 e!307508)))

(assert (=> b!527669 (= res!324082 (or (bvsgt (x!49408 lt!242999) #b01111111111111111111111111111110) (bvslt lt!243003 #b00000000000000000000000000000000) (bvsge lt!243003 (size!16438 a!3235)) (bvslt (index!20412 lt!242999) #b00000000000000000000000000000000) (bvsge (index!20412 lt!242999) (size!16438 a!3235)) (not (= lt!242999 (Intermediate!4548 false (index!20412 lt!242999) (x!49408 lt!242999)))) (bvsle #b00000000000000000000000000000000 (x!49408 lt!242999))))))

(assert (=> b!527669 (= (index!20412 lt!242999) i!1204)))

(declare-fun lt!243005 () Unit!16658)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16658)

(assert (=> b!527669 (= lt!243005 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243003 #b00000000000000000000000000000000 (index!20412 lt!242999) (x!49408 lt!242999) mask!3524))))

(assert (=> b!527669 (and (or (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243001 () Unit!16658)

(assert (=> b!527669 (= lt!243001 e!307512)))

(declare-fun c!62099 () Bool)

(assert (=> b!527669 (= c!62099 (= (select (arr!16074 a!3235) (index!20412 lt!242999)) (select (arr!16074 a!3235) j!176)))))

(assert (=> b!527669 (and (bvslt (x!49408 lt!242999) #b01111111111111111111111111111110) (or (= (select (arr!16074 a!3235) (index!20412 lt!242999)) (select (arr!16074 a!3235) j!176)) (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16074 a!3235) (index!20412 lt!242999)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527670 () Bool)

(declare-fun res!324076 () Bool)

(assert (=> b!527670 (=> (not res!324076) (not e!307511))))

(declare-datatypes ((List!10285 0))(
  ( (Nil!10282) (Cons!10281 (h!11215 (_ BitVec 64)) (t!16521 List!10285)) )
))
(declare-fun arrayNoDuplicates!0 (array!33454 (_ BitVec 32) List!10285) Bool)

(assert (=> b!527670 (= res!324076 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10282))))

(declare-fun b!527671 () Bool)

(assert (=> b!527671 (= e!307510 false)))

(declare-fun b!527672 () Bool)

(declare-fun res!324078 () Bool)

(assert (=> b!527672 (=> (not res!324078) (not e!307513))))

(declare-fun arrayContainsKey!0 (array!33454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527672 (= res!324078 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47926 res!324077) b!527662))

(assert (= (and b!527662 res!324084) b!527667))

(assert (= (and b!527667 res!324086) b!527660))

(assert (= (and b!527660 res!324074) b!527672))

(assert (= (and b!527672 res!324078) b!527659))

(assert (= (and b!527659 res!324083) b!527664))

(assert (= (and b!527664 res!324080) b!527670))

(assert (= (and b!527670 res!324076) b!527661))

(assert (= (and b!527661 res!324085) b!527668))

(assert (= (and b!527661 (not res!324075)) b!527665))

(assert (= (and b!527665 (not res!324081)) b!527669))

(assert (= (and b!527669 c!62099) b!527663))

(assert (= (and b!527669 (not c!62099)) b!527666))

(assert (= (and b!527663 res!324079) b!527671))

(assert (= (and b!527669 (not res!324082)) b!527658))

(declare-fun m!508363 () Bool)

(assert (=> b!527661 m!508363))

(declare-fun m!508365 () Bool)

(assert (=> b!527661 m!508365))

(declare-fun m!508367 () Bool)

(assert (=> b!527661 m!508367))

(declare-fun m!508369 () Bool)

(assert (=> b!527661 m!508369))

(declare-fun m!508371 () Bool)

(assert (=> b!527661 m!508371))

(assert (=> b!527661 m!508363))

(declare-fun m!508373 () Bool)

(assert (=> b!527661 m!508373))

(assert (=> b!527661 m!508363))

(declare-fun m!508375 () Bool)

(assert (=> b!527661 m!508375))

(declare-fun m!508377 () Bool)

(assert (=> b!527661 m!508377))

(declare-fun m!508379 () Bool)

(assert (=> b!527661 m!508379))

(declare-fun m!508381 () Bool)

(assert (=> b!527660 m!508381))

(assert (=> b!527658 m!508363))

(assert (=> b!527658 m!508363))

(declare-fun m!508383 () Bool)

(assert (=> b!527658 m!508383))

(declare-fun m!508385 () Bool)

(assert (=> b!527672 m!508385))

(declare-fun m!508387 () Bool)

(assert (=> b!527659 m!508387))

(assert (=> b!527667 m!508363))

(assert (=> b!527667 m!508363))

(declare-fun m!508389 () Bool)

(assert (=> b!527667 m!508389))

(declare-fun m!508391 () Bool)

(assert (=> b!527669 m!508391))

(declare-fun m!508393 () Bool)

(assert (=> b!527669 m!508393))

(assert (=> b!527669 m!508363))

(declare-fun m!508395 () Bool)

(assert (=> b!527664 m!508395))

(assert (=> b!527668 m!508363))

(assert (=> b!527668 m!508363))

(declare-fun m!508397 () Bool)

(assert (=> b!527668 m!508397))

(declare-fun m!508399 () Bool)

(assert (=> start!47926 m!508399))

(declare-fun m!508401 () Bool)

(assert (=> start!47926 m!508401))

(declare-fun m!508403 () Bool)

(assert (=> b!527670 m!508403))

(declare-fun m!508405 () Bool)

(assert (=> b!527663 m!508405))

(declare-fun m!508407 () Bool)

(assert (=> b!527663 m!508407))

(push 1)

(assert (not b!527661))

(assert (not start!47926))

(assert (not b!527672))

(assert (not b!527660))

(assert (not b!527669))

(assert (not b!527670))

(assert (not b!527664))

(assert (not b!527659))

(assert (not b!527668))

(assert (not b!527663))

(assert (not b!527658))

(assert (not b!527667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!527850 () Bool)

(declare-fun c!62144 () Bool)

(declare-fun lt!243106 () (_ BitVec 64))

(assert (=> b!527850 (= c!62144 (= lt!243106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307614 () SeekEntryResult!4548)

(declare-fun e!307615 () SeekEntryResult!4548)

(assert (=> b!527850 (= e!307614 e!307615)))

(declare-fun d!80775 () Bool)

(declare-fun lt!243105 () SeekEntryResult!4548)

(assert (=> d!80775 (and (or (is-Undefined!4548 lt!243105) (not (is-Found!4548 lt!243105)) (and (bvsge (index!20411 lt!243105) #b00000000000000000000000000000000) (bvslt (index!20411 lt!243105) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243105) (is-Found!4548 lt!243105) (not (is-MissingZero!4548 lt!243105)) (and (bvsge (index!20410 lt!243105) #b00000000000000000000000000000000) (bvslt (index!20410 lt!243105) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243105) (is-Found!4548 lt!243105) (is-MissingZero!4548 lt!243105) (not (is-MissingVacant!4548 lt!243105)) (and (bvsge (index!20413 lt!243105) #b00000000000000000000000000000000) (bvslt (index!20413 lt!243105) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243105) (ite (is-Found!4548 lt!243105) (= (select (arr!16074 a!3235) (index!20411 lt!243105)) (select (arr!16074 a!3235) j!176)) (ite (is-MissingZero!4548 lt!243105) (= (select (arr!16074 a!3235) (index!20410 lt!243105)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4548 lt!243105) (= (select (arr!16074 a!3235) (index!20413 lt!243105)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307613 () SeekEntryResult!4548)

(assert (=> d!80775 (= lt!243105 e!307613)))

(declare-fun c!62142 () Bool)

(declare-fun lt!243107 () SeekEntryResult!4548)

(assert (=> d!80775 (= c!62142 (and (is-Intermediate!4548 lt!243107) (undefined!5360 lt!243107)))))

(assert (=> d!80775 (= lt!243107 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16074 a!3235) j!176) mask!3524) (select (arr!16074 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80775 (validMask!0 mask!3524)))

(assert (=> d!80775 (= (seekEntryOrOpen!0 (select (arr!16074 a!3235) j!176) a!3235 mask!3524) lt!243105)))

(declare-fun b!527851 () Bool)

(assert (=> b!527851 (= e!307613 Undefined!4548)))

(declare-fun b!527852 () Bool)

(assert (=> b!527852 (= e!307613 e!307614)))

(assert (=> b!527852 (= lt!243106 (select (arr!16074 a!3235) (index!20412 lt!243107)))))

(declare-fun c!62143 () Bool)

(assert (=> b!527852 (= c!62143 (= lt!243106 (select (arr!16074 a!3235) j!176)))))

(declare-fun b!527853 () Bool)

(assert (=> b!527853 (= e!307615 (seekKeyOrZeroReturnVacant!0 (x!49408 lt!243107) (index!20412 lt!243107) (index!20412 lt!243107) (select (arr!16074 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527854 () Bool)

(assert (=> b!527854 (= e!307615 (MissingZero!4548 (index!20412 lt!243107)))))

(declare-fun b!527855 () Bool)

(assert (=> b!527855 (= e!307614 (Found!4548 (index!20412 lt!243107)))))

(assert (= (and d!80775 c!62142) b!527851))

(assert (= (and d!80775 (not c!62142)) b!527852))

(assert (= (and b!527852 c!62143) b!527855))

(assert (= (and b!527852 (not c!62143)) b!527850))

(assert (= (and b!527850 c!62144) b!527854))

(assert (= (and b!527850 (not c!62144)) b!527853))

(declare-fun m!508539 () Bool)

(assert (=> d!80775 m!508539))

(assert (=> d!80775 m!508363))

(assert (=> d!80775 m!508373))

(declare-fun m!508541 () Bool)

(assert (=> d!80775 m!508541))

(assert (=> d!80775 m!508399))

(declare-fun m!508543 () Bool)

(assert (=> d!80775 m!508543))

(assert (=> d!80775 m!508373))

(assert (=> d!80775 m!508363))

(declare-fun m!508545 () Bool)

(assert (=> d!80775 m!508545))

(declare-fun m!508547 () Bool)

(assert (=> b!527852 m!508547))

(assert (=> b!527853 m!508363))

(declare-fun m!508549 () Bool)

(assert (=> b!527853 m!508549))

(assert (=> b!527668 d!80775))

(declare-fun b!527866 () Bool)

(declare-fun c!62150 () Bool)

(declare-fun lt!243112 () (_ BitVec 64))

(assert (=> b!527866 (= c!62150 (= lt!243112 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307624 () SeekEntryResult!4548)

(declare-fun e!307625 () SeekEntryResult!4548)

(assert (=> b!527866 (= e!307624 e!307625)))

(declare-fun d!80789 () Bool)

(declare-fun lt!243111 () SeekEntryResult!4548)

(assert (=> d!80789 (and (or (is-Undefined!4548 lt!243111) (not (is-Found!4548 lt!243111)) (and (bvsge (index!20411 lt!243111) #b00000000000000000000000000000000) (bvslt (index!20411 lt!243111) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243111) (is-Found!4548 lt!243111) (not (is-MissingZero!4548 lt!243111)) (and (bvsge (index!20410 lt!243111) #b00000000000000000000000000000000) (bvslt (index!20410 lt!243111) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243111) (is-Found!4548 lt!243111) (is-MissingZero!4548 lt!243111) (not (is-MissingVacant!4548 lt!243111)) (and (bvsge (index!20413 lt!243111) #b00000000000000000000000000000000) (bvslt (index!20413 lt!243111) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243111) (ite (is-Found!4548 lt!243111) (= (select (arr!16074 a!3235) (index!20411 lt!243111)) k!2280) (ite (is-MissingZero!4548 lt!243111) (= (select (arr!16074 a!3235) (index!20410 lt!243111)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4548 lt!243111) (= (select (arr!16074 a!3235) (index!20413 lt!243111)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307623 () SeekEntryResult!4548)

(assert (=> d!80789 (= lt!243111 e!307623)))

(declare-fun c!62148 () Bool)

(declare-fun lt!243113 () SeekEntryResult!4548)

(assert (=> d!80789 (= c!62148 (and (is-Intermediate!4548 lt!243113) (undefined!5360 lt!243113)))))

(assert (=> d!80789 (= lt!243113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80789 (validMask!0 mask!3524)))

(assert (=> d!80789 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!243111)))

(declare-fun b!527867 () Bool)

(assert (=> b!527867 (= e!307623 Undefined!4548)))

(declare-fun b!527868 () Bool)

(assert (=> b!527868 (= e!307623 e!307624)))

(assert (=> b!527868 (= lt!243112 (select (arr!16074 a!3235) (index!20412 lt!243113)))))

(declare-fun c!62149 () Bool)

(assert (=> b!527868 (= c!62149 (= lt!243112 k!2280))))

(declare-fun b!527869 () Bool)

(assert (=> b!527869 (= e!307625 (seekKeyOrZeroReturnVacant!0 (x!49408 lt!243113) (index!20412 lt!243113) (index!20412 lt!243113) k!2280 a!3235 mask!3524))))

(declare-fun b!527870 () Bool)

(assert (=> b!527870 (= e!307625 (MissingZero!4548 (index!20412 lt!243113)))))

(declare-fun b!527871 () Bool)

(assert (=> b!527871 (= e!307624 (Found!4548 (index!20412 lt!243113)))))

(assert (= (and d!80789 c!62148) b!527867))

(assert (= (and d!80789 (not c!62148)) b!527868))

(assert (= (and b!527868 c!62149) b!527871))

(assert (= (and b!527868 (not c!62149)) b!527866))

(assert (= (and b!527866 c!62150) b!527870))

(assert (= (and b!527866 (not c!62150)) b!527869))

(declare-fun m!508565 () Bool)

(assert (=> d!80789 m!508565))

(declare-fun m!508567 () Bool)

(assert (=> d!80789 m!508567))

(declare-fun m!508569 () Bool)

(assert (=> d!80789 m!508569))

(assert (=> d!80789 m!508399))

(declare-fun m!508571 () Bool)

(assert (=> d!80789 m!508571))

(assert (=> d!80789 m!508567))

(declare-fun m!508573 () Bool)

(assert (=> d!80789 m!508573))

(declare-fun m!508575 () Bool)

(assert (=> b!527868 m!508575))

(declare-fun m!508579 () Bool)

(assert (=> b!527869 m!508579))

(assert (=> b!527659 d!80789))

(declare-fun d!80793 () Bool)

(assert (=> d!80793 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47926 d!80793))

(declare-fun d!80801 () Bool)

(assert (=> d!80801 (= (array_inv!11848 a!3235) (bvsge (size!16438 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47926 d!80801))

(declare-fun d!80803 () Bool)

(assert (=> d!80803 (= (index!20412 lt!242999) i!1204)))

(declare-fun lt!243122 () Unit!16658)

(declare-fun choose!104 (array!33454 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16658)

(assert (=> d!80803 (= lt!243122 (choose!104 a!3235 i!1204 k!2280 j!176 lt!243003 #b00000000000000000000000000000000 (index!20412 lt!242999) (x!49408 lt!242999) mask!3524))))

(assert (=> d!80803 (validMask!0 mask!3524)))

(assert (=> d!80803 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243003 #b00000000000000000000000000000000 (index!20412 lt!242999) (x!49408 lt!242999) mask!3524) lt!243122)))

(declare-fun bs!16543 () Bool)

(assert (= bs!16543 d!80803))

(declare-fun m!508593 () Bool)

(assert (=> bs!16543 m!508593))

(assert (=> bs!16543 m!508399))

(assert (=> b!527669 d!80803))

(declare-fun b!527959 () Bool)

(declare-fun c!62178 () Bool)

(declare-fun lt!243143 () (_ BitVec 64))

(assert (=> b!527959 (= c!62178 (= lt!243143 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!307679 () SeekEntryResult!4548)

(declare-fun e!307681 () SeekEntryResult!4548)

(assert (=> b!527959 (= e!307679 e!307681)))

(declare-fun b!527960 () Bool)

(declare-fun e!307680 () SeekEntryResult!4548)

(assert (=> b!527960 (= e!307680 Undefined!4548)))

(declare-fun b!527961 () Bool)

(assert (=> b!527961 (= e!307681 (MissingVacant!4548 (index!20412 lt!242999)))))

(declare-fun b!527962 () Bool)

(assert (=> b!527962 (= e!307679 (Found!4548 lt!243003))))

(declare-fun b!527963 () Bool)

(assert (=> b!527963 (= e!307680 e!307679)))

(declare-fun c!62179 () Bool)

(assert (=> b!527963 (= c!62179 (= lt!243143 (select (arr!16074 a!3235) j!176)))))

(declare-fun lt!243142 () SeekEntryResult!4548)

(declare-fun d!80807 () Bool)

(assert (=> d!80807 (and (or (is-Undefined!4548 lt!243142) (not (is-Found!4548 lt!243142)) (and (bvsge (index!20411 lt!243142) #b00000000000000000000000000000000) (bvslt (index!20411 lt!243142) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243142) (is-Found!4548 lt!243142) (not (is-MissingVacant!4548 lt!243142)) (not (= (index!20413 lt!243142) (index!20412 lt!242999))) (and (bvsge (index!20413 lt!243142) #b00000000000000000000000000000000) (bvslt (index!20413 lt!243142) (size!16438 a!3235)))) (or (is-Undefined!4548 lt!243142) (ite (is-Found!4548 lt!243142) (= (select (arr!16074 a!3235) (index!20411 lt!243142)) (select (arr!16074 a!3235) j!176)) (and (is-MissingVacant!4548 lt!243142) (= (index!20413 lt!243142) (index!20412 lt!242999)) (= (select (arr!16074 a!3235) (index!20413 lt!243142)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!80807 (= lt!243142 e!307680)))

(declare-fun c!62180 () Bool)

(assert (=> d!80807 (= c!62180 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80807 (= lt!243143 (select (arr!16074 a!3235) lt!243003))))

(assert (=> d!80807 (validMask!0 mask!3524)))

(assert (=> d!80807 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243003 (index!20412 lt!242999) (select (arr!16074 a!3235) j!176) a!3235 mask!3524) lt!243142)))

(declare-fun b!527958 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527958 (= e!307681 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243003 #b00000000000000000000000000000000 mask!3524) (index!20412 lt!242999) (select (arr!16074 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80807 c!62180) b!527960))

(assert (= (and d!80807 (not c!62180)) b!527963))

(assert (= (and b!527963 c!62179) b!527962))

(assert (= (and b!527963 (not c!62179)) b!527959))

(assert (= (and b!527959 c!62178) b!527961))

(assert (= (and b!527959 (not c!62178)) b!527958))

(declare-fun m!508619 () Bool)

(assert (=> d!80807 m!508619))

(declare-fun m!508621 () Bool)

(assert (=> d!80807 m!508621))

(declare-fun m!508623 () Bool)

(assert (=> d!80807 m!508623))

(assert (=> d!80807 m!508399))

(declare-fun m!508625 () Bool)

(assert (=> b!527958 m!508625))

(assert (=> b!527958 m!508625))

(assert (=> b!527958 m!508363))

(declare-fun m!508627 () Bool)

(assert (=> b!527958 m!508627))

(assert (=> b!527658 d!80807))

(declare-fun d!80815 () Bool)

(assert (=> d!80815 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!527660 d!80815))

(declare-fun b!527987 () Bool)

(declare-fun e!307698 () Bool)

(declare-fun call!31899 () Bool)

(assert (=> b!527987 (= e!307698 call!31899)))

(declare-fun b!527988 () Bool)

(assert (=> b!527988 (= e!307698 call!31899)))

(declare-fun b!527989 () Bool)

(declare-fun e!307700 () Bool)

(assert (=> b!527989 (= e!307700 e!307698)))

(declare-fun c!62187 () Bool)

(assert (=> b!527989 (= c!62187 (validKeyInArray!0 (select (arr!16074 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80817 () Bool)

(declare-fun res!324230 () Bool)

(declare-fun e!307699 () Bool)

(assert (=> d!80817 (=> res!324230 e!307699)))

(assert (=> d!80817 (= res!324230 (bvsge #b00000000000000000000000000000000 (size!16438 a!3235)))))

(assert (=> d!80817 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10282) e!307699)))

(declare-fun b!527990 () Bool)

(assert (=> b!527990 (= e!307699 e!307700)))

(declare-fun res!324229 () Bool)

(assert (=> b!527990 (=> (not res!324229) (not e!307700))))

(declare-fun e!307701 () Bool)

(assert (=> b!527990 (= res!324229 (not e!307701))))

(declare-fun res!324228 () Bool)

(assert (=> b!527990 (=> (not res!324228) (not e!307701))))

(assert (=> b!527990 (= res!324228 (validKeyInArray!0 (select (arr!16074 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527991 () Bool)

(declare-fun contains!2782 (List!10285 (_ BitVec 64)) Bool)

(assert (=> b!527991 (= e!307701 (contains!2782 Nil!10282 (select (arr!16074 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31896 () Bool)

(assert (=> bm!31896 (= call!31899 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62187 (Cons!10281 (select (arr!16074 a!3235) #b00000000000000000000000000000000) Nil!10282) Nil!10282)))))

(assert (= (and d!80817 (not res!324230)) b!527990))

(assert (= (and b!527990 res!324228) b!527991))

(assert (= (and b!527990 res!324229) b!527989))

(assert (= (and b!527989 c!62187) b!527987))

(assert (= (and b!527989 (not c!62187)) b!527988))

(assert (= (or b!527987 b!527988) bm!31896))

(declare-fun m!508641 () Bool)

(assert (=> b!527989 m!508641))

(assert (=> b!527989 m!508641))

(declare-fun m!508643 () Bool)

(assert (=> b!527989 m!508643))

(assert (=> b!527990 m!508641))

(assert (=> b!527990 m!508641))

(assert (=> b!527990 m!508643))

(assert (=> b!527991 m!508641))

(assert (=> b!527991 m!508641))

(declare-fun m!508645 () Bool)

(assert (=> b!527991 m!508645))

(assert (=> bm!31896 m!508641))

(declare-fun m!508647 () Bool)

(assert (=> bm!31896 m!508647))

(assert (=> b!527670 d!80817))

(declare-fun d!80829 () Bool)

(declare-fun res!324235 () Bool)

(declare-fun e!307712 () Bool)

(assert (=> d!80829 (=> res!324235 e!307712)))

(assert (=> d!80829 (= res!324235 (= (select (arr!16074 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80829 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!307712)))

(declare-fun b!528008 () Bool)

(declare-fun e!307713 () Bool)

(assert (=> b!528008 (= e!307712 e!307713)))

(declare-fun res!324236 () Bool)

(assert (=> b!528008 (=> (not res!324236) (not e!307713))))

(assert (=> b!528008 (= res!324236 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16438 a!3235)))))

(declare-fun b!528009 () Bool)

(assert (=> b!528009 (= e!307713 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80829 (not res!324235)) b!528008))

(assert (= (and b!528008 res!324236) b!528009))

(assert (=> d!80829 m!508641))

(declare-fun m!508651 () Bool)

(assert (=> b!528009 m!508651))

(assert (=> b!527672 d!80829))

(declare-fun d!80833 () Bool)

(declare-fun lt!243179 () (_ BitVec 32))

(declare-fun lt!243178 () (_ BitVec 32))

(assert (=> d!80833 (= lt!243179 (bvmul (bvxor lt!243178 (bvlshr lt!243178 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80833 (= lt!243178 ((_ extract 31 0) (bvand (bvxor (select (arr!16074 a!3235) j!176) (bvlshr (select (arr!16074 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80833 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!324240 (let ((h!11219 ((_ extract 31 0) (bvand (bvxor (select (arr!16074 a!3235) j!176) (bvlshr (select (arr!16074 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49422 (bvmul (bvxor h!11219 (bvlshr h!11219 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49422 (bvlshr x!49422 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!324240 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!324240 #b00000000000000000000000000000000))))))

(assert (=> d!80833 (= (toIndex!0 (select (arr!16074 a!3235) j!176) mask!3524) (bvand (bvxor lt!243179 (bvlshr lt!243179 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!527661 d!80833))

(declare-fun b!528061 () Bool)

(declare-fun e!307746 () SeekEntryResult!4548)

(declare-fun e!307747 () SeekEntryResult!4548)

(assert (=> b!528061 (= e!307746 e!307747)))

(declare-fun lt!243196 () (_ BitVec 64))

(declare-fun c!62212 () Bool)

(assert (=> b!528061 (= c!62212 (or (= lt!243196 (select (arr!16074 a!3235) j!176)) (= (bvadd lt!243196 lt!243196) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528062 () Bool)

(assert (=> b!528062 (= e!307747 (Intermediate!4548 false lt!243003 #b00000000000000000000000000000000))))

(declare-fun b!528063 () Bool)

(declare-fun e!307748 () Bool)

(declare-fun e!307744 () Bool)

(assert (=> b!528063 (= e!307748 e!307744)))

(declare-fun res!324255 () Bool)

(declare-fun lt!243197 () SeekEntryResult!4548)

(assert (=> b!528063 (= res!324255 (and (is-Intermediate!4548 lt!243197) (not (undefined!5360 lt!243197)) (bvslt (x!49408 lt!243197) #b01111111111111111111111111111110) (bvsge (x!49408 lt!243197) #b00000000000000000000000000000000) (bvsge (x!49408 lt!243197) #b00000000000000000000000000000000)))))

(assert (=> b!528063 (=> (not res!324255) (not e!307744))))

(declare-fun b!528065 () Bool)

(assert (=> b!528065 (= e!307746 (Intermediate!4548 true lt!243003 #b00000000000000000000000000000000))))

(declare-fun b!528066 () Bool)

(assert (=> b!528066 (and (bvsge (index!20412 lt!243197) #b00000000000000000000000000000000) (bvslt (index!20412 lt!243197) (size!16438 a!3235)))))

(declare-fun res!324254 () Bool)

(assert (=> b!528066 (= res!324254 (= (select (arr!16074 a!3235) (index!20412 lt!243197)) (select (arr!16074 a!3235) j!176)))))

(declare-fun e!307745 () Bool)

(assert (=> b!528066 (=> res!324254 e!307745)))

(assert (=> b!528066 (= e!307744 e!307745)))

(declare-fun b!528067 () Bool)

(assert (=> b!528067 (= e!307747 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243003 #b00000000000000000000000000000000 mask!3524) (select (arr!16074 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!80839 () Bool)

(assert (=> d!80839 e!307748))

(declare-fun c!62214 () Bool)

(assert (=> d!80839 (= c!62214 (and (is-Intermediate!4548 lt!243197) (undefined!5360 lt!243197)))))

(assert (=> d!80839 (= lt!243197 e!307746)))

(declare-fun c!62213 () Bool)

(assert (=> d!80839 (= c!62213 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80839 (= lt!243196 (select (arr!16074 a!3235) lt!243003))))

(assert (=> d!80839 (validMask!0 mask!3524)))

(assert (=> d!80839 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243003 (select (arr!16074 a!3235) j!176) a!3235 mask!3524) lt!243197)))

(declare-fun b!528064 () Bool)

(assert (=> b!528064 (and (bvsge (index!20412 lt!243197) #b00000000000000000000000000000000) (bvslt (index!20412 lt!243197) (size!16438 a!3235)))))

(declare-fun res!324253 () Bool)

(assert (=> b!528064 (= res!324253 (= (select (arr!16074 a!3235) (index!20412 lt!243197)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!528064 (=> res!324253 e!307745)))

(declare-fun b!528068 () Bool)

(assert (=> b!528068 (= e!307748 (bvsge (x!49408 lt!243197) #b01111111111111111111111111111110))))

(declare-fun b!528069 () Bool)

(assert (=> b!528069 (and (bvsge (index!20412 lt!243197) #b00000000000000000000000000000000) (bvslt (index!20412 lt!243197) (size!16438 a!3235)))))

(assert (=> b!528069 (= e!307745 (= (select (arr!16074 a!3235) (index!20412 lt!243197)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!80839 c!62213) b!528065))

(assert (= (and d!80839 (not c!62213)) b!528061))

(assert (= (and b!528061 c!62212) b!528062))

(assert (= (and b!528061 (not c!62212)) b!528067))

(assert (= (and d!80839 c!62214) b!528068))

(assert (= (and d!80839 (not c!62214)) b!528063))

(assert (= (and b!528063 res!324255) b!528066))

(assert (= (and b!528066 (not res!324254)) b!528064))

(assert (= (and b!528064 (not res!324253)) b!528069))

(assert (=> b!528067 m!508625))

(assert (=> b!528067 m!508625))

(assert (=> b!528067 m!508363))

(declare-fun m!508697 () Bool)

(assert (=> b!528067 m!508697))

(declare-fun m!508699 () Bool)

(assert (=> b!528064 m!508699))

(assert (=> d!80839 m!508623))

(assert (=> d!80839 m!508399))

(assert (=> b!528069 m!508699))

(assert (=> b!528066 m!508699))

(assert (=> b!527661 d!80839))

(declare-fun d!80845 () Bool)

(declare-fun lt!243199 () (_ BitVec 32))

(declare-fun lt!243198 () (_ BitVec 32))

(assert (=> d!80845 (= lt!243199 (bvmul (bvxor lt!243198 (bvlshr lt!243198 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80845 (= lt!243198 ((_ extract 31 0) (bvand (bvxor lt!243002 (bvlshr lt!243002 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80845 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!324240 (let ((h!11219 ((_ extract 31 0) (bvand (bvxor lt!243002 (bvlshr lt!243002 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49422 (bvmul (bvxor h!11219 (bvlshr h!11219 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49422 (bvlshr x!49422 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!324240 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!324240 #b00000000000000000000000000000000))))))

(assert (=> d!80845 (= (toIndex!0 lt!243002 mask!3524) (bvand (bvxor lt!243199 (bvlshr lt!243199 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!527661 d!80845))

(declare-fun b!528078 () Bool)

(declare-fun e!307757 () Bool)

(declare-fun call!31905 () Bool)

(assert (=> b!528078 (= e!307757 call!31905)))

(declare-fun b!528079 () Bool)

(declare-fun e!307756 () Bool)

(declare-fun e!307755 () Bool)

(assert (=> b!528079 (= e!307756 e!307755)))

(declare-fun c!62217 () Bool)

(assert (=> b!528079 (= c!62217 (validKeyInArray!0 (select (arr!16074 a!3235) j!176)))))

(declare-fun b!528080 () Bool)

(assert (=> b!528080 (= e!307755 e!307757)))

(declare-fun lt!243207 () (_ BitVec 64))

(assert (=> b!528080 (= lt!243207 (select (arr!16074 a!3235) j!176))))

(declare-fun lt!243206 () Unit!16658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33454 (_ BitVec 64) (_ BitVec 32)) Unit!16658)

(assert (=> b!528080 (= lt!243206 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!243207 j!176))))

(assert (=> b!528080 (arrayContainsKey!0 a!3235 lt!243207 #b00000000000000000000000000000000)))

(declare-fun lt!243208 () Unit!16658)

(assert (=> b!528080 (= lt!243208 lt!243206)))

(declare-fun res!324260 () Bool)

(assert (=> b!528080 (= res!324260 (= (seekEntryOrOpen!0 (select (arr!16074 a!3235) j!176) a!3235 mask!3524) (Found!4548 j!176)))))

(assert (=> b!528080 (=> (not res!324260) (not e!307757))))

(declare-fun b!528081 () Bool)

(assert (=> b!528081 (= e!307755 call!31905)))

(declare-fun d!80847 () Bool)

(declare-fun res!324261 () Bool)

(assert (=> d!80847 (=> res!324261 e!307756)))

(assert (=> d!80847 (= res!324261 (bvsge j!176 (size!16438 a!3235)))))

(assert (=> d!80847 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!307756)))

(declare-fun bm!31902 () Bool)

(assert (=> bm!31902 (= call!31905 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!80847 (not res!324261)) b!528079))

(assert (= (and b!528079 c!62217) b!528080))

(assert (= (and b!528079 (not c!62217)) b!528081))

(assert (= (and b!528080 res!324260) b!528078))

(assert (= (or b!528078 b!528081) bm!31902))

(assert (=> b!528079 m!508363))

(assert (=> b!528079 m!508363))

(assert (=> b!528079 m!508389))

(assert (=> b!528080 m!508363))

(declare-fun m!508701 () Bool)

(assert (=> b!528080 m!508701))

(declare-fun m!508703 () Bool)

(assert (=> b!528080 m!508703))

(assert (=> b!528080 m!508363))

(assert (=> b!528080 m!508397))

(declare-fun m!508705 () Bool)

(assert (=> bm!31902 m!508705))

(assert (=> b!527661 d!80847))

(declare-fun d!80851 () Bool)

(assert (=> d!80851 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!243211 () Unit!16658)

(declare-fun choose!38 (array!33454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16658)

(assert (=> d!80851 (= lt!243211 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80851 (validMask!0 mask!3524)))

(assert (=> d!80851 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!243211)))

(declare-fun bs!16546 () Bool)

(assert (= bs!16546 d!80851))

(assert (=> bs!16546 m!508375))

(declare-fun m!508707 () Bool)

(assert (=> bs!16546 m!508707))

(assert (=> bs!16546 m!508399))

(assert (=> b!527661 d!80851))

(declare-fun b!528082 () Bool)

(declare-fun e!307760 () SeekEntryResult!4548)

(declare-fun e!307761 () SeekEntryResult!4548)

(assert (=> b!528082 (= e!307760 e!307761)))

(declare-fun c!62218 () Bool)

(declare-fun lt!243212 () (_ BitVec 64))

(assert (=> b!528082 (= c!62218 (or (= lt!243212 lt!243002) (= (bvadd lt!243212 lt!243212) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528083 () Bool)

(assert (=> b!528083 (= e!307761 (Intermediate!4548 false lt!243004 #b00000000000000000000000000000000))))

(declare-fun b!528084 () Bool)

(declare-fun e!307762 () Bool)

(declare-fun e!307758 () Bool)

(assert (=> b!528084 (= e!307762 e!307758)))

(declare-fun res!324264 () Bool)

(declare-fun lt!243213 () SeekEntryResult!4548)

