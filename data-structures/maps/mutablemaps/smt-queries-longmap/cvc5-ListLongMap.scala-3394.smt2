; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46786 () Bool)

(assert start!46786)

(declare-fun b!516472 () Bool)

(declare-fun res!316187 () Bool)

(declare-fun e!301400 () Bool)

(assert (=> b!516472 (=> res!316187 e!301400)))

(declare-datatypes ((SeekEntryResult!4368 0))(
  ( (MissingZero!4368 (index!19660 (_ BitVec 32))) (Found!4368 (index!19661 (_ BitVec 32))) (Intermediate!4368 (undefined!5180 Bool) (index!19662 (_ BitVec 32)) (x!48646 (_ BitVec 32))) (Undefined!4368) (MissingVacant!4368 (index!19663 (_ BitVec 32))) )
))
(declare-fun lt!236484 () SeekEntryResult!4368)

(assert (=> b!516472 (= res!316187 (or (undefined!5180 lt!236484) (not (is-Intermediate!4368 lt!236484))))))

(declare-fun b!516473 () Bool)

(declare-fun e!301401 () Bool)

(assert (=> b!516473 (= e!301401 (not e!301400))))

(declare-fun res!316193 () Bool)

(assert (=> b!516473 (=> res!316193 e!301400)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33058 0))(
  ( (array!33059 (arr!15894 (Array (_ BitVec 32) (_ BitVec 64))) (size!16258 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33058)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236483 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33058 (_ BitVec 32)) SeekEntryResult!4368)

(assert (=> b!516473 (= res!316193 (= lt!236484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236483 (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)) mask!3524)))))

(declare-fun lt!236482 () (_ BitVec 32))

(assert (=> b!516473 (= lt!236484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236482 (select (arr!15894 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516473 (= lt!236483 (toIndex!0 (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516473 (= lt!236482 (toIndex!0 (select (arr!15894 a!3235) j!176) mask!3524))))

(declare-fun e!301398 () Bool)

(assert (=> b!516473 e!301398))

(declare-fun res!316191 () Bool)

(assert (=> b!516473 (=> (not res!316191) (not e!301398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33058 (_ BitVec 32)) Bool)

(assert (=> b!516473 (= res!316191 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15986 0))(
  ( (Unit!15987) )
))
(declare-fun lt!236485 () Unit!15986)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15986)

(assert (=> b!516473 (= lt!236485 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516474 () Bool)

(declare-fun res!316195 () Bool)

(declare-fun e!301402 () Bool)

(assert (=> b!516474 (=> (not res!316195) (not e!301402))))

(assert (=> b!516474 (= res!316195 (and (= (size!16258 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16258 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16258 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516475 () Bool)

(declare-fun res!316196 () Bool)

(assert (=> b!516475 (=> (not res!316196) (not e!301402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516475 (= res!316196 (validKeyInArray!0 k!2280))))

(declare-fun b!516476 () Bool)

(declare-fun res!316194 () Bool)

(assert (=> b!516476 (=> (not res!316194) (not e!301402))))

(assert (=> b!516476 (= res!316194 (validKeyInArray!0 (select (arr!15894 a!3235) j!176)))))

(declare-fun b!516477 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33058 (_ BitVec 32)) SeekEntryResult!4368)

(assert (=> b!516477 (= e!301398 (= (seekEntryOrOpen!0 (select (arr!15894 a!3235) j!176) a!3235 mask!3524) (Found!4368 j!176)))))

(declare-fun b!516478 () Bool)

(declare-fun res!316186 () Bool)

(assert (=> b!516478 (=> (not res!316186) (not e!301401))))

(assert (=> b!516478 (= res!316186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!316190 () Bool)

(assert (=> start!46786 (=> (not res!316190) (not e!301402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46786 (= res!316190 (validMask!0 mask!3524))))

(assert (=> start!46786 e!301402))

(assert (=> start!46786 true))

(declare-fun array_inv!11668 (array!33058) Bool)

(assert (=> start!46786 (array_inv!11668 a!3235)))

(declare-fun b!516479 () Bool)

(assert (=> b!516479 (= e!301400 (or (not (= (select (arr!15894 a!3235) (index!19662 lt!236484)) (select (arr!15894 a!3235) j!176))) (bvsgt (x!48646 lt!236484) #b01111111111111111111111111111110) (bvsle #b00000000000000000000000000000000 (x!48646 lt!236484))))))

(assert (=> b!516479 (and (bvslt (x!48646 lt!236484) #b01111111111111111111111111111110) (or (= (select (arr!15894 a!3235) (index!19662 lt!236484)) (select (arr!15894 a!3235) j!176)) (= (select (arr!15894 a!3235) (index!19662 lt!236484)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15894 a!3235) (index!19662 lt!236484)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516480 () Bool)

(declare-fun res!316188 () Bool)

(assert (=> b!516480 (=> (not res!316188) (not e!301402))))

(declare-fun arrayContainsKey!0 (array!33058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516480 (= res!316188 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516481 () Bool)

(declare-fun res!316189 () Bool)

(assert (=> b!516481 (=> (not res!316189) (not e!301401))))

(declare-datatypes ((List!10105 0))(
  ( (Nil!10102) (Cons!10101 (h!10999 (_ BitVec 64)) (t!16341 List!10105)) )
))
(declare-fun arrayNoDuplicates!0 (array!33058 (_ BitVec 32) List!10105) Bool)

(assert (=> b!516481 (= res!316189 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10102))))

(declare-fun b!516482 () Bool)

(assert (=> b!516482 (= e!301402 e!301401)))

(declare-fun res!316192 () Bool)

(assert (=> b!516482 (=> (not res!316192) (not e!301401))))

(declare-fun lt!236486 () SeekEntryResult!4368)

(assert (=> b!516482 (= res!316192 (or (= lt!236486 (MissingZero!4368 i!1204)) (= lt!236486 (MissingVacant!4368 i!1204))))))

(assert (=> b!516482 (= lt!236486 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!46786 res!316190) b!516474))

(assert (= (and b!516474 res!316195) b!516476))

(assert (= (and b!516476 res!316194) b!516475))

(assert (= (and b!516475 res!316196) b!516480))

(assert (= (and b!516480 res!316188) b!516482))

(assert (= (and b!516482 res!316192) b!516478))

(assert (= (and b!516478 res!316186) b!516481))

(assert (= (and b!516481 res!316189) b!516473))

(assert (= (and b!516473 res!316191) b!516477))

(assert (= (and b!516473 (not res!316193)) b!516472))

(assert (= (and b!516472 (not res!316187)) b!516479))

(declare-fun m!498031 () Bool)

(assert (=> b!516473 m!498031))

(declare-fun m!498033 () Bool)

(assert (=> b!516473 m!498033))

(declare-fun m!498035 () Bool)

(assert (=> b!516473 m!498035))

(assert (=> b!516473 m!498035))

(declare-fun m!498037 () Bool)

(assert (=> b!516473 m!498037))

(declare-fun m!498039 () Bool)

(assert (=> b!516473 m!498039))

(declare-fun m!498041 () Bool)

(assert (=> b!516473 m!498041))

(assert (=> b!516473 m!498039))

(declare-fun m!498043 () Bool)

(assert (=> b!516473 m!498043))

(assert (=> b!516473 m!498039))

(declare-fun m!498045 () Bool)

(assert (=> b!516473 m!498045))

(assert (=> b!516473 m!498035))

(declare-fun m!498047 () Bool)

(assert (=> b!516473 m!498047))

(declare-fun m!498049 () Bool)

(assert (=> b!516482 m!498049))

(assert (=> b!516476 m!498039))

(assert (=> b!516476 m!498039))

(declare-fun m!498051 () Bool)

(assert (=> b!516476 m!498051))

(declare-fun m!498053 () Bool)

(assert (=> b!516479 m!498053))

(assert (=> b!516479 m!498039))

(declare-fun m!498055 () Bool)

(assert (=> b!516480 m!498055))

(declare-fun m!498057 () Bool)

(assert (=> b!516478 m!498057))

(declare-fun m!498059 () Bool)

(assert (=> start!46786 m!498059))

(declare-fun m!498061 () Bool)

(assert (=> start!46786 m!498061))

(declare-fun m!498063 () Bool)

(assert (=> b!516475 m!498063))

(assert (=> b!516477 m!498039))

(assert (=> b!516477 m!498039))

(declare-fun m!498065 () Bool)

(assert (=> b!516477 m!498065))

(declare-fun m!498067 () Bool)

(assert (=> b!516481 m!498067))

(push 1)

(assert (not b!516475))

(assert (not b!516482))

(assert (not b!516473))

(assert (not b!516477))

(assert (not b!516481))

(assert (not start!46786))

(assert (not b!516480))

(assert (not b!516476))

(assert (not b!516478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79453 () Bool)

(assert (=> d!79453 (= (validKeyInArray!0 (select (arr!15894 a!3235) j!176)) (and (not (= (select (arr!15894 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15894 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516476 d!79453))

(declare-fun d!79455 () Bool)

(declare-fun lt!236546 () SeekEntryResult!4368)

(assert (=> d!79455 (and (or (is-Undefined!4368 lt!236546) (not (is-Found!4368 lt!236546)) (and (bvsge (index!19661 lt!236546) #b00000000000000000000000000000000) (bvslt (index!19661 lt!236546) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236546) (is-Found!4368 lt!236546) (not (is-MissingZero!4368 lt!236546)) (and (bvsge (index!19660 lt!236546) #b00000000000000000000000000000000) (bvslt (index!19660 lt!236546) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236546) (is-Found!4368 lt!236546) (is-MissingZero!4368 lt!236546) (not (is-MissingVacant!4368 lt!236546)) (and (bvsge (index!19663 lt!236546) #b00000000000000000000000000000000) (bvslt (index!19663 lt!236546) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236546) (ite (is-Found!4368 lt!236546) (= (select (arr!15894 a!3235) (index!19661 lt!236546)) (select (arr!15894 a!3235) j!176)) (ite (is-MissingZero!4368 lt!236546) (= (select (arr!15894 a!3235) (index!19660 lt!236546)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4368 lt!236546) (= (select (arr!15894 a!3235) (index!19663 lt!236546)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!301454 () SeekEntryResult!4368)

(assert (=> d!79455 (= lt!236546 e!301454)))

(declare-fun c!60449 () Bool)

(declare-fun lt!236544 () SeekEntryResult!4368)

(assert (=> d!79455 (= c!60449 (and (is-Intermediate!4368 lt!236544) (undefined!5180 lt!236544)))))

(assert (=> d!79455 (= lt!236544 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15894 a!3235) j!176) mask!3524) (select (arr!15894 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79455 (validMask!0 mask!3524)))

(assert (=> d!79455 (= (seekEntryOrOpen!0 (select (arr!15894 a!3235) j!176) a!3235 mask!3524) lt!236546)))

(declare-fun b!516587 () Bool)

(declare-fun e!301456 () SeekEntryResult!4368)

(assert (=> b!516587 (= e!301454 e!301456)))

(declare-fun lt!236545 () (_ BitVec 64))

(assert (=> b!516587 (= lt!236545 (select (arr!15894 a!3235) (index!19662 lt!236544)))))

(declare-fun c!60451 () Bool)

(assert (=> b!516587 (= c!60451 (= lt!236545 (select (arr!15894 a!3235) j!176)))))

(declare-fun b!516588 () Bool)

(assert (=> b!516588 (= e!301456 (Found!4368 (index!19662 lt!236544)))))

(declare-fun e!301455 () SeekEntryResult!4368)

(declare-fun b!516589 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33058 (_ BitVec 32)) SeekEntryResult!4368)

(assert (=> b!516589 (= e!301455 (seekKeyOrZeroReturnVacant!0 (x!48646 lt!236544) (index!19662 lt!236544) (index!19662 lt!236544) (select (arr!15894 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!516590 () Bool)

(declare-fun c!60450 () Bool)

(assert (=> b!516590 (= c!60450 (= lt!236545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!516590 (= e!301456 e!301455)))

(declare-fun b!516591 () Bool)

(assert (=> b!516591 (= e!301455 (MissingZero!4368 (index!19662 lt!236544)))))

(declare-fun b!516592 () Bool)

(assert (=> b!516592 (= e!301454 Undefined!4368)))

(assert (= (and d!79455 c!60449) b!516592))

(assert (= (and d!79455 (not c!60449)) b!516587))

(assert (= (and b!516587 c!60451) b!516588))

(assert (= (and b!516587 (not c!60451)) b!516590))

(assert (= (and b!516590 c!60450) b!516591))

(assert (= (and b!516590 (not c!60450)) b!516589))

(declare-fun m!498159 () Bool)

(assert (=> d!79455 m!498159))

(assert (=> d!79455 m!498041))

(assert (=> d!79455 m!498039))

(declare-fun m!498161 () Bool)

(assert (=> d!79455 m!498161))

(assert (=> d!79455 m!498059))

(declare-fun m!498163 () Bool)

(assert (=> d!79455 m!498163))

(declare-fun m!498165 () Bool)

(assert (=> d!79455 m!498165))

(assert (=> d!79455 m!498039))

(assert (=> d!79455 m!498041))

(declare-fun m!498167 () Bool)

(assert (=> b!516587 m!498167))

(assert (=> b!516589 m!498039))

(declare-fun m!498169 () Bool)

(assert (=> b!516589 m!498169))

(assert (=> b!516477 d!79455))

(declare-fun d!79463 () Bool)

(declare-fun lt!236549 () SeekEntryResult!4368)

(assert (=> d!79463 (and (or (is-Undefined!4368 lt!236549) (not (is-Found!4368 lt!236549)) (and (bvsge (index!19661 lt!236549) #b00000000000000000000000000000000) (bvslt (index!19661 lt!236549) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236549) (is-Found!4368 lt!236549) (not (is-MissingZero!4368 lt!236549)) (and (bvsge (index!19660 lt!236549) #b00000000000000000000000000000000) (bvslt (index!19660 lt!236549) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236549) (is-Found!4368 lt!236549) (is-MissingZero!4368 lt!236549) (not (is-MissingVacant!4368 lt!236549)) (and (bvsge (index!19663 lt!236549) #b00000000000000000000000000000000) (bvslt (index!19663 lt!236549) (size!16258 a!3235)))) (or (is-Undefined!4368 lt!236549) (ite (is-Found!4368 lt!236549) (= (select (arr!15894 a!3235) (index!19661 lt!236549)) k!2280) (ite (is-MissingZero!4368 lt!236549) (= (select (arr!15894 a!3235) (index!19660 lt!236549)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4368 lt!236549) (= (select (arr!15894 a!3235) (index!19663 lt!236549)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!301457 () SeekEntryResult!4368)

(assert (=> d!79463 (= lt!236549 e!301457)))

(declare-fun c!60452 () Bool)

(declare-fun lt!236547 () SeekEntryResult!4368)

(assert (=> d!79463 (= c!60452 (and (is-Intermediate!4368 lt!236547) (undefined!5180 lt!236547)))))

(assert (=> d!79463 (= lt!236547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79463 (validMask!0 mask!3524)))

(assert (=> d!79463 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!236549)))

(declare-fun b!516593 () Bool)

(declare-fun e!301459 () SeekEntryResult!4368)

(assert (=> b!516593 (= e!301457 e!301459)))

(declare-fun lt!236548 () (_ BitVec 64))

(assert (=> b!516593 (= lt!236548 (select (arr!15894 a!3235) (index!19662 lt!236547)))))

(declare-fun c!60454 () Bool)

(assert (=> b!516593 (= c!60454 (= lt!236548 k!2280))))

(declare-fun b!516594 () Bool)

(assert (=> b!516594 (= e!301459 (Found!4368 (index!19662 lt!236547)))))

(declare-fun e!301458 () SeekEntryResult!4368)

(declare-fun b!516595 () Bool)

(assert (=> b!516595 (= e!301458 (seekKeyOrZeroReturnVacant!0 (x!48646 lt!236547) (index!19662 lt!236547) (index!19662 lt!236547) k!2280 a!3235 mask!3524))))

(declare-fun b!516596 () Bool)

(declare-fun c!60453 () Bool)

(assert (=> b!516596 (= c!60453 (= lt!236548 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!516596 (= e!301459 e!301458)))

(declare-fun b!516597 () Bool)

(assert (=> b!516597 (= e!301458 (MissingZero!4368 (index!19662 lt!236547)))))

(declare-fun b!516598 () Bool)

(assert (=> b!516598 (= e!301457 Undefined!4368)))

(assert (= (and d!79463 c!60452) b!516598))

(assert (= (and d!79463 (not c!60452)) b!516593))

(assert (= (and b!516593 c!60454) b!516594))

(assert (= (and b!516593 (not c!60454)) b!516596))

(assert (= (and b!516596 c!60453) b!516597))

(assert (= (and b!516596 (not c!60453)) b!516595))

(declare-fun m!498171 () Bool)

(assert (=> d!79463 m!498171))

(declare-fun m!498173 () Bool)

(assert (=> d!79463 m!498173))

(declare-fun m!498175 () Bool)

(assert (=> d!79463 m!498175))

(assert (=> d!79463 m!498059))

(declare-fun m!498177 () Bool)

(assert (=> d!79463 m!498177))

(declare-fun m!498179 () Bool)

(assert (=> d!79463 m!498179))

(assert (=> d!79463 m!498173))

(declare-fun m!498181 () Bool)

(assert (=> b!516593 m!498181))

(declare-fun m!498183 () Bool)

(assert (=> b!516595 m!498183))

(assert (=> b!516482 d!79463))

(declare-fun d!79465 () Bool)

(assert (=> d!79465 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46786 d!79465))

(declare-fun d!79473 () Bool)

(assert (=> d!79473 (= (array_inv!11668 a!3235) (bvsge (size!16258 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46786 d!79473))

(declare-fun d!79475 () Bool)

(assert (=> d!79475 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!516475 d!79475))

(declare-fun d!79477 () Bool)

(declare-fun res!316280 () Bool)

(declare-fun e!301476 () Bool)

(assert (=> d!79477 (=> res!316280 e!301476)))

(assert (=> d!79477 (= res!316280 (= (select (arr!15894 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79477 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!301476)))

(declare-fun b!516619 () Bool)

(declare-fun e!301477 () Bool)

(assert (=> b!516619 (= e!301476 e!301477)))

(declare-fun res!316281 () Bool)

(assert (=> b!516619 (=> (not res!316281) (not e!301477))))

(assert (=> b!516619 (= res!316281 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16258 a!3235)))))

(declare-fun b!516620 () Bool)

(assert (=> b!516620 (= e!301477 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79477 (not res!316280)) b!516619))

(assert (= (and b!516619 res!316281) b!516620))

(declare-fun m!498201 () Bool)

(assert (=> d!79477 m!498201))

(declare-fun m!498203 () Bool)

(assert (=> b!516620 m!498203))

(assert (=> b!516480 d!79477))

(declare-fun b!516631 () Bool)

(declare-fun e!301489 () Bool)

(declare-fun call!31646 () Bool)

(assert (=> b!516631 (= e!301489 call!31646)))

(declare-fun b!516632 () Bool)

(assert (=> b!516632 (= e!301489 call!31646)))

(declare-fun b!516633 () Bool)

(declare-fun e!301488 () Bool)

(assert (=> b!516633 (= e!301488 e!301489)))

(declare-fun c!60461 () Bool)

(assert (=> b!516633 (= c!60461 (validKeyInArray!0 (select (arr!15894 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31643 () Bool)

(assert (=> bm!31643 (= call!31646 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60461 (Cons!10101 (select (arr!15894 a!3235) #b00000000000000000000000000000000) Nil!10102) Nil!10102)))))

(declare-fun d!79481 () Bool)

(declare-fun res!316291 () Bool)

(declare-fun e!301486 () Bool)

(assert (=> d!79481 (=> res!316291 e!301486)))

(assert (=> d!79481 (= res!316291 (bvsge #b00000000000000000000000000000000 (size!16258 a!3235)))))

(assert (=> d!79481 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10102) e!301486)))

(declare-fun b!516634 () Bool)

(declare-fun e!301487 () Bool)

(declare-fun contains!2747 (List!10105 (_ BitVec 64)) Bool)

(assert (=> b!516634 (= e!301487 (contains!2747 Nil!10102 (select (arr!15894 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!516635 () Bool)

(assert (=> b!516635 (= e!301486 e!301488)))

(declare-fun res!316290 () Bool)

(assert (=> b!516635 (=> (not res!316290) (not e!301488))))

(assert (=> b!516635 (= res!316290 (not e!301487))))

(declare-fun res!316289 () Bool)

(assert (=> b!516635 (=> (not res!316289) (not e!301487))))

(assert (=> b!516635 (= res!316289 (validKeyInArray!0 (select (arr!15894 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79481 (not res!316291)) b!516635))

(assert (= (and b!516635 res!316289) b!516634))

(assert (= (and b!516635 res!316290) b!516633))

(assert (= (and b!516633 c!60461) b!516632))

(assert (= (and b!516633 (not c!60461)) b!516631))

(assert (= (or b!516632 b!516631) bm!31643))

(assert (=> b!516633 m!498201))

(assert (=> b!516633 m!498201))

(declare-fun m!498205 () Bool)

(assert (=> b!516633 m!498205))

(assert (=> bm!31643 m!498201))

(declare-fun m!498207 () Bool)

(assert (=> bm!31643 m!498207))

(assert (=> b!516634 m!498201))

(assert (=> b!516634 m!498201))

(declare-fun m!498209 () Bool)

(assert (=> b!516634 m!498209))

(assert (=> b!516635 m!498201))

(assert (=> b!516635 m!498201))

(assert (=> b!516635 m!498205))

(assert (=> b!516481 d!79481))

(declare-fun d!79485 () Bool)

(declare-fun lt!236583 () (_ BitVec 32))

(declare-fun lt!236582 () (_ BitVec 32))

(assert (=> d!79485 (= lt!236583 (bvmul (bvxor lt!236582 (bvlshr lt!236582 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79485 (= lt!236582 ((_ extract 31 0) (bvand (bvxor (select (arr!15894 a!3235) j!176) (bvlshr (select (arr!15894 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79485 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316292 (let ((h!11004 ((_ extract 31 0) (bvand (bvxor (select (arr!15894 a!3235) j!176) (bvlshr (select (arr!15894 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48652 (bvmul (bvxor h!11004 (bvlshr h!11004 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48652 (bvlshr x!48652 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316292 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316292 #b00000000000000000000000000000000))))))

(assert (=> d!79485 (= (toIndex!0 (select (arr!15894 a!3235) j!176) mask!3524) (bvand (bvxor lt!236583 (bvlshr lt!236583 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516473 d!79485))

(declare-fun b!516744 () Bool)

(declare-fun e!301559 () Bool)

(declare-fun e!301558 () Bool)

(assert (=> b!516744 (= e!301559 e!301558)))

(declare-fun res!316337 () Bool)

(declare-fun lt!236607 () SeekEntryResult!4368)

(assert (=> b!516744 (= res!316337 (and (is-Intermediate!4368 lt!236607) (not (undefined!5180 lt!236607)) (bvslt (x!48646 lt!236607) #b01111111111111111111111111111110) (bvsge (x!48646 lt!236607) #b00000000000000000000000000000000) (bvsge (x!48646 lt!236607) #b00000000000000000000000000000000)))))

(assert (=> b!516744 (=> (not res!316337) (not e!301558))))

(declare-fun e!301555 () SeekEntryResult!4368)

(declare-fun b!516745 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516745 (= e!301555 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236483 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)) mask!3524))))

(declare-fun d!79487 () Bool)

(assert (=> d!79487 e!301559))

(declare-fun c!60495 () Bool)

(assert (=> d!79487 (= c!60495 (and (is-Intermediate!4368 lt!236607) (undefined!5180 lt!236607)))))

(declare-fun e!301557 () SeekEntryResult!4368)

(assert (=> d!79487 (= lt!236607 e!301557)))

(declare-fun c!60493 () Bool)

(assert (=> d!79487 (= c!60493 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236608 () (_ BitVec 64))

(assert (=> d!79487 (= lt!236608 (select (arr!15894 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235))) lt!236483))))

(assert (=> d!79487 (validMask!0 mask!3524)))

(assert (=> d!79487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236483 (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)) mask!3524) lt!236607)))

(declare-fun b!516746 () Bool)

(assert (=> b!516746 (and (bvsge (index!19662 lt!236607) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236607) (size!16258 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)))))))

(declare-fun res!316339 () Bool)

(assert (=> b!516746 (= res!316339 (= (select (arr!15894 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235))) (index!19662 lt!236607)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301556 () Bool)

(assert (=> b!516746 (=> res!316339 e!301556)))

(declare-fun b!516747 () Bool)

(assert (=> b!516747 (= e!301557 (Intermediate!4368 true lt!236483 #b00000000000000000000000000000000))))

(declare-fun b!516748 () Bool)

(assert (=> b!516748 (and (bvsge (index!19662 lt!236607) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236607) (size!16258 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)))))))

(assert (=> b!516748 (= e!301556 (= (select (arr!15894 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235))) (index!19662 lt!236607)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!516749 () Bool)

(assert (=> b!516749 (and (bvsge (index!19662 lt!236607) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236607) (size!16258 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235)))))))

(declare-fun res!316338 () Bool)

(assert (=> b!516749 (= res!316338 (= (select (arr!15894 (array!33059 (store (arr!15894 a!3235) i!1204 k!2280) (size!16258 a!3235))) (index!19662 lt!236607)) (select (store (arr!15894 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!516749 (=> res!316338 e!301556)))

(assert (=> b!516749 (= e!301558 e!301556)))

(declare-fun b!516750 () Bool)

(assert (=> b!516750 (= e!301557 e!301555)))

(declare-fun c!60494 () Bool)

(assert (=> b!516750 (= c!60494 (or (= lt!236608 (select (store (arr!15894 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!236608 lt!236608) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516751 () Bool)

(assert (=> b!516751 (= e!301555 (Intermediate!4368 false lt!236483 #b00000000000000000000000000000000))))

(declare-fun b!516752 () Bool)

(assert (=> b!516752 (= e!301559 (bvsge (x!48646 lt!236607) #b01111111111111111111111111111110))))

(assert (= (and d!79487 c!60493) b!516747))

(assert (= (and d!79487 (not c!60493)) b!516750))

(assert (= (and b!516750 c!60494) b!516751))

(assert (= (and b!516750 (not c!60494)) b!516745))

(assert (= (and d!79487 c!60495) b!516752))

(assert (= (and d!79487 (not c!60495)) b!516744))

(assert (= (and b!516744 res!316337) b!516749))

(assert (= (and b!516749 (not res!316338)) b!516746))

(assert (= (and b!516746 (not res!316339)) b!516748))

(declare-fun m!498259 () Bool)

(assert (=> b!516745 m!498259))

(assert (=> b!516745 m!498259))

(assert (=> b!516745 m!498035))

(declare-fun m!498261 () Bool)

(assert (=> b!516745 m!498261))

(declare-fun m!498263 () Bool)

(assert (=> d!79487 m!498263))

(assert (=> d!79487 m!498059))

(declare-fun m!498265 () Bool)

(assert (=> b!516746 m!498265))

(assert (=> b!516748 m!498265))

(assert (=> b!516749 m!498265))

(assert (=> b!516473 d!79487))

(declare-fun d!79511 () Bool)

(assert (=> d!79511 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236617 () Unit!15986)

(declare-fun choose!38 (array!33058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15986)

(assert (=> d!79511 (= lt!236617 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79511 (validMask!0 mask!3524)))

(assert (=> d!79511 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236617)))

(declare-fun bs!16325 () Bool)

(assert (= bs!16325 d!79511))

(assert (=> bs!16325 m!498043))

(declare-fun m!498285 () Bool)

(assert (=> bs!16325 m!498285))

(assert (=> bs!16325 m!498059))

(assert (=> b!516473 d!79511))

(declare-fun d!79519 () Bool)

(declare-fun lt!236619 () (_ BitVec 32))

(declare-fun lt!236618 () (_ BitVec 32))

(assert (=> d!79519 (= lt!236619 (bvmul (bvxor lt!236618 (bvlshr lt!236618 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79519 (= lt!236618 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79519 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316292 (let ((h!11004 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48652 (bvmul (bvxor h!11004 (bvlshr h!11004 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48652 (bvlshr x!48652 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316292 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316292 #b00000000000000000000000000000000))))))

(assert (=> d!79519 (= (toIndex!0 (select (store (arr!15894 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!236619 (bvlshr lt!236619 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516473 d!79519))

(declare-fun b!516778 () Bool)

(declare-fun e!301578 () Bool)

(declare-fun call!31654 () Bool)

(assert (=> b!516778 (= e!301578 call!31654)))

(declare-fun bm!31651 () Bool)

(assert (=> bm!31651 (= call!31654 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!516779 () Bool)

(declare-fun e!301579 () Bool)

(assert (=> b!516779 (= e!301579 e!301578)))

(declare-fun lt!236627 () (_ BitVec 64))

(assert (=> b!516779 (= lt!236627 (select (arr!15894 a!3235) j!176))))

(declare-fun lt!236626 () Unit!15986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33058 (_ BitVec 64) (_ BitVec 32)) Unit!15986)

(assert (=> b!516779 (= lt!236626 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236627 j!176))))

(assert (=> b!516779 (arrayContainsKey!0 a!3235 lt!236627 #b00000000000000000000000000000000)))

(declare-fun lt!236628 () Unit!15986)

(assert (=> b!516779 (= lt!236628 lt!236626)))

(declare-fun res!316349 () Bool)

(assert (=> b!516779 (= res!316349 (= (seekEntryOrOpen!0 (select (arr!15894 a!3235) j!176) a!3235 mask!3524) (Found!4368 j!176)))))

(assert (=> b!516779 (=> (not res!316349) (not e!301578))))

(declare-fun b!516780 () Bool)

(declare-fun e!301580 () Bool)

(assert (=> b!516780 (= e!301580 e!301579)))

(declare-fun c!60505 () Bool)

(assert (=> b!516780 (= c!60505 (validKeyInArray!0 (select (arr!15894 a!3235) j!176)))))

(declare-fun b!516781 () Bool)

(assert (=> b!516781 (= e!301579 call!31654)))

(declare-fun d!79521 () Bool)

(declare-fun res!316350 () Bool)

(assert (=> d!79521 (=> res!316350 e!301580)))

(assert (=> d!79521 (= res!316350 (bvsge j!176 (size!16258 a!3235)))))

(assert (=> d!79521 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301580)))

(assert (= (and d!79521 (not res!316350)) b!516780))

(assert (= (and b!516780 c!60505) b!516779))

(assert (= (and b!516780 (not c!60505)) b!516781))

(assert (= (and b!516779 res!316349) b!516778))

(assert (= (or b!516778 b!516781) bm!31651))

(declare-fun m!498295 () Bool)

(assert (=> bm!31651 m!498295))

(assert (=> b!516779 m!498039))

(declare-fun m!498297 () Bool)

(assert (=> b!516779 m!498297))

(declare-fun m!498299 () Bool)

(assert (=> b!516779 m!498299))

(assert (=> b!516779 m!498039))

(assert (=> b!516779 m!498065))

(assert (=> b!516780 m!498039))

(assert (=> b!516780 m!498039))

(assert (=> b!516780 m!498051))

(assert (=> b!516473 d!79521))

(declare-fun b!516782 () Bool)

(declare-fun e!301585 () Bool)

(declare-fun e!301584 () Bool)

(assert (=> b!516782 (= e!301585 e!301584)))

(declare-fun res!316351 () Bool)

(declare-fun lt!236629 () SeekEntryResult!4368)

(assert (=> b!516782 (= res!316351 (and (is-Intermediate!4368 lt!236629) (not (undefined!5180 lt!236629)) (bvslt (x!48646 lt!236629) #b01111111111111111111111111111110) (bvsge (x!48646 lt!236629) #b00000000000000000000000000000000) (bvsge (x!48646 lt!236629) #b00000000000000000000000000000000)))))

(assert (=> b!516782 (=> (not res!316351) (not e!301584))))

(declare-fun e!301581 () SeekEntryResult!4368)

(declare-fun b!516783 () Bool)

(assert (=> b!516783 (= e!301581 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236482 #b00000000000000000000000000000000 mask!3524) (select (arr!15894 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!79527 () Bool)

(assert (=> d!79527 e!301585))

(declare-fun c!60508 () Bool)

(assert (=> d!79527 (= c!60508 (and (is-Intermediate!4368 lt!236629) (undefined!5180 lt!236629)))))

(declare-fun e!301583 () SeekEntryResult!4368)

(assert (=> d!79527 (= lt!236629 e!301583)))

(declare-fun c!60506 () Bool)

(assert (=> d!79527 (= c!60506 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!236630 () (_ BitVec 64))

(assert (=> d!79527 (= lt!236630 (select (arr!15894 a!3235) lt!236482))))

(assert (=> d!79527 (validMask!0 mask!3524)))

(assert (=> d!79527 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236482 (select (arr!15894 a!3235) j!176) a!3235 mask!3524) lt!236629)))

(declare-fun b!516784 () Bool)

(assert (=> b!516784 (and (bvsge (index!19662 lt!236629) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236629) (size!16258 a!3235)))))

(declare-fun res!316353 () Bool)

(assert (=> b!516784 (= res!316353 (= (select (arr!15894 a!3235) (index!19662 lt!236629)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301582 () Bool)

(assert (=> b!516784 (=> res!316353 e!301582)))

(declare-fun b!516785 () Bool)

(assert (=> b!516785 (= e!301583 (Intermediate!4368 true lt!236482 #b00000000000000000000000000000000))))

(declare-fun b!516786 () Bool)

(assert (=> b!516786 (and (bvsge (index!19662 lt!236629) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236629) (size!16258 a!3235)))))

(assert (=> b!516786 (= e!301582 (= (select (arr!15894 a!3235) (index!19662 lt!236629)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!516787 () Bool)

(assert (=> b!516787 (and (bvsge (index!19662 lt!236629) #b00000000000000000000000000000000) (bvslt (index!19662 lt!236629) (size!16258 a!3235)))))

(declare-fun res!316352 () Bool)

(assert (=> b!516787 (= res!316352 (= (select (arr!15894 a!3235) (index!19662 lt!236629)) (select (arr!15894 a!3235) j!176)))))

(assert (=> b!516787 (=> res!316352 e!301582)))

(assert (=> b!516787 (= e!301584 e!301582)))

(declare-fun b!516788 () Bool)

(assert (=> b!516788 (= e!301583 e!301581)))

(declare-fun c!60507 () Bool)

(assert (=> b!516788 (= c!60507 (or (= lt!236630 (select (arr!15894 a!3235) j!176)) (= (bvadd lt!236630 lt!236630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516789 () Bool)

(assert (=> b!516789 (= e!301581 (Intermediate!4368 false lt!236482 #b00000000000000000000000000000000))))

(declare-fun b!516790 () Bool)

(assert (=> b!516790 (= e!301585 (bvsge (x!48646 lt!236629) #b01111111111111111111111111111110))))

(assert (= (and d!79527 c!60506) b!516785))

(assert (= (and d!79527 (not c!60506)) b!516788))

(assert (= (and b!516788 c!60507) b!516789))

(assert (= (and b!516788 (not c!60507)) b!516783))

(assert (= (and d!79527 c!60508) b!516790))

(assert (= (and d!79527 (not c!60508)) b!516782))

(assert (= (and b!516782 res!316351) b!516787))

(assert (= (and b!516787 (not res!316352)) b!516784))

(assert (= (and b!516784 (not res!316353)) b!516786))

(declare-fun m!498301 () Bool)

(assert (=> b!516783 m!498301))

(assert (=> b!516783 m!498301))

(assert (=> b!516783 m!498039))

(declare-fun m!498303 () Bool)

(assert (=> b!516783 m!498303))

(declare-fun m!498305 () Bool)

(assert (=> d!79527 m!498305))

(assert (=> d!79527 m!498059))

(declare-fun m!498307 () Bool)

(assert (=> b!516784 m!498307))

(assert (=> b!516786 m!498307))

(assert (=> b!516787 m!498307))

(assert (=> b!516473 d!79527))

(declare-fun b!516791 () Bool)

(declare-fun e!301586 () Bool)

(declare-fun call!31655 () Bool)

(assert (=> b!516791 (= e!301586 call!31655)))

(declare-fun bm!31652 () Bool)

(assert (=> bm!31652 (= call!31655 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!516792 () Bool)

(declare-fun e!301587 () Bool)

(assert (=> b!516792 (= e!301587 e!301586)))

(declare-fun lt!236632 () (_ BitVec 64))

(assert (=> b!516792 (= lt!236632 (select (arr!15894 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236631 () Unit!15986)

(assert (=> b!516792 (= lt!236631 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236632 #b00000000000000000000000000000000))))

(assert (=> b!516792 (arrayContainsKey!0 a!3235 lt!236632 #b00000000000000000000000000000000)))

(declare-fun lt!236633 () Unit!15986)

(assert (=> b!516792 (= lt!236633 lt!236631)))

(declare-fun res!316354 () Bool)

(assert (=> b!516792 (= res!316354 (= (seekEntryOrOpen!0 (select (arr!15894 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4368 #b00000000000000000000000000000000)))))

(assert (=> b!516792 (=> (not res!316354) (not e!301586))))

(declare-fun b!516793 () Bool)

(declare-fun e!301588 () Bool)

(assert (=> b!516793 (= e!301588 e!301587)))

(declare-fun c!60509 () Bool)

(assert (=> b!516793 (= c!60509 (validKeyInArray!0 (select (arr!15894 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!516794 () Bool)

(assert (=> b!516794 (= e!301587 call!31655)))

(declare-fun d!79529 () Bool)

(declare-fun res!316355 () Bool)

(assert (=> d!79529 (=> res!316355 e!301588)))

(assert (=> d!79529 (= res!316355 (bvsge #b00000000000000000000000000000000 (size!16258 a!3235)))))

(assert (=> d!79529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301588)))

(assert (= (and d!79529 (not res!316355)) b!516793))

(assert (= (and b!516793 c!60509) b!516792))

(assert (= (and b!516793 (not c!60509)) b!516794))

(assert (= (and b!516792 res!316354) b!516791))

(assert (= (or b!516791 b!516794) bm!31652))

(declare-fun m!498309 () Bool)

(assert (=> bm!31652 m!498309))

(assert (=> b!516792 m!498201))

(declare-fun m!498311 () Bool)

(assert (=> b!516792 m!498311))

(declare-fun m!498313 () Bool)

(assert (=> b!516792 m!498313))

(assert (=> b!516792 m!498201))

(declare-fun m!498315 () Bool)

(assert (=> b!516792 m!498315))

(assert (=> b!516793 m!498201))

(assert (=> b!516793 m!498201))

(assert (=> b!516793 m!498205))

(assert (=> b!516478 d!79529))

(push 1)

