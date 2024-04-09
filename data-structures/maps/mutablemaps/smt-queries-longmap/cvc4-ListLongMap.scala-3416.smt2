; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47432 () Bool)

(assert start!47432)

(declare-fun b!521635 () Bool)

(declare-fun res!319529 () Bool)

(declare-fun e!304304 () Bool)

(assert (=> b!521635 (=> (not res!319529) (not e!304304))))

(declare-datatypes ((array!33218 0))(
  ( (array!33219 (arr!15962 (Array (_ BitVec 32) (_ BitVec 64))) (size!16326 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33218)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521635 (= res!319529 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521636 () Bool)

(declare-fun res!319535 () Bool)

(declare-fun e!304305 () Bool)

(assert (=> b!521636 (=> (not res!319535) (not e!304305))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33218 (_ BitVec 32)) Bool)

(assert (=> b!521636 (= res!319535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521637 () Bool)

(assert (=> b!521637 (= e!304304 e!304305)))

(declare-fun res!319536 () Bool)

(assert (=> b!521637 (=> (not res!319536) (not e!304305))))

(declare-datatypes ((SeekEntryResult!4436 0))(
  ( (MissingZero!4436 (index!19947 (_ BitVec 32))) (Found!4436 (index!19948 (_ BitVec 32))) (Intermediate!4436 (undefined!5248 Bool) (index!19949 (_ BitVec 32)) (x!48953 (_ BitVec 32))) (Undefined!4436) (MissingVacant!4436 (index!19950 (_ BitVec 32))) )
))
(declare-fun lt!239176 () SeekEntryResult!4436)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521637 (= res!319536 (or (= lt!239176 (MissingZero!4436 i!1204)) (= lt!239176 (MissingVacant!4436 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33218 (_ BitVec 32)) SeekEntryResult!4436)

(assert (=> b!521637 (= lt!239176 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521638 () Bool)

(declare-fun res!319531 () Bool)

(assert (=> b!521638 (=> (not res!319531) (not e!304304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521638 (= res!319531 (validKeyInArray!0 k!2280))))

(declare-fun b!521639 () Bool)

(declare-datatypes ((Unit!16210 0))(
  ( (Unit!16211) )
))
(declare-fun e!304308 () Unit!16210)

(declare-fun Unit!16212 () Unit!16210)

(assert (=> b!521639 (= e!304308 Unit!16212)))

(declare-fun lt!239178 () Unit!16210)

(declare-fun lt!239175 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239179 () SeekEntryResult!4436)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33218 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16210)

(assert (=> b!521639 (= lt!239178 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239175 #b00000000000000000000000000000000 (index!19949 lt!239179) (x!48953 lt!239179) mask!3524))))

(declare-fun lt!239174 () array!33218)

(declare-fun res!319530 () Bool)

(declare-fun lt!239177 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33218 (_ BitVec 32)) SeekEntryResult!4436)

(assert (=> b!521639 (= res!319530 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239175 lt!239177 lt!239174 mask!3524) (Intermediate!4436 false (index!19949 lt!239179) (x!48953 lt!239179))))))

(declare-fun e!304303 () Bool)

(assert (=> b!521639 (=> (not res!319530) (not e!304303))))

(assert (=> b!521639 e!304303))

(declare-fun b!521640 () Bool)

(declare-fun res!319538 () Bool)

(assert (=> b!521640 (=> (not res!319538) (not e!304305))))

(declare-datatypes ((List!10173 0))(
  ( (Nil!10170) (Cons!10169 (h!11091 (_ BitVec 64)) (t!16409 List!10173)) )
))
(declare-fun arrayNoDuplicates!0 (array!33218 (_ BitVec 32) List!10173) Bool)

(assert (=> b!521640 (= res!319538 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10170))))

(declare-fun b!521641 () Bool)

(declare-fun e!304306 () Bool)

(assert (=> b!521641 (= e!304305 (not e!304306))))

(declare-fun res!319534 () Bool)

(assert (=> b!521641 (=> res!319534 e!304306)))

(declare-fun lt!239172 () (_ BitVec 32))

(assert (=> b!521641 (= res!319534 (= lt!239179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239172 lt!239177 lt!239174 mask!3524)))))

(assert (=> b!521641 (= lt!239179 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239175 (select (arr!15962 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521641 (= lt!239172 (toIndex!0 lt!239177 mask!3524))))

(assert (=> b!521641 (= lt!239177 (select (store (arr!15962 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521641 (= lt!239175 (toIndex!0 (select (arr!15962 a!3235) j!176) mask!3524))))

(assert (=> b!521641 (= lt!239174 (array!33219 (store (arr!15962 a!3235) i!1204 k!2280) (size!16326 a!3235)))))

(declare-fun e!304307 () Bool)

(assert (=> b!521641 e!304307))

(declare-fun res!319532 () Bool)

(assert (=> b!521641 (=> (not res!319532) (not e!304307))))

(assert (=> b!521641 (= res!319532 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239180 () Unit!16210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33218 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16210)

(assert (=> b!521641 (= lt!239180 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521642 () Bool)

(assert (=> b!521642 (= e!304306 true)))

(assert (=> b!521642 (and (or (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239173 () Unit!16210)

(assert (=> b!521642 (= lt!239173 e!304308)))

(declare-fun c!61355 () Bool)

(assert (=> b!521642 (= c!61355 (= (select (arr!15962 a!3235) (index!19949 lt!239179)) (select (arr!15962 a!3235) j!176)))))

(assert (=> b!521642 (and (bvslt (x!48953 lt!239179) #b01111111111111111111111111111110) (or (= (select (arr!15962 a!3235) (index!19949 lt!239179)) (select (arr!15962 a!3235) j!176)) (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15962 a!3235) (index!19949 lt!239179)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521643 () Bool)

(assert (=> b!521643 (= e!304303 false)))

(declare-fun b!521644 () Bool)

(declare-fun res!319537 () Bool)

(assert (=> b!521644 (=> (not res!319537) (not e!304304))))

(assert (=> b!521644 (= res!319537 (and (= (size!16326 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16326 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16326 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!319533 () Bool)

(assert (=> start!47432 (=> (not res!319533) (not e!304304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47432 (= res!319533 (validMask!0 mask!3524))))

(assert (=> start!47432 e!304304))

(assert (=> start!47432 true))

(declare-fun array_inv!11736 (array!33218) Bool)

(assert (=> start!47432 (array_inv!11736 a!3235)))

(declare-fun b!521645 () Bool)

(declare-fun Unit!16213 () Unit!16210)

(assert (=> b!521645 (= e!304308 Unit!16213)))

(declare-fun b!521646 () Bool)

(declare-fun res!319527 () Bool)

(assert (=> b!521646 (=> res!319527 e!304306)))

(assert (=> b!521646 (= res!319527 (or (undefined!5248 lt!239179) (not (is-Intermediate!4436 lt!239179))))))

(declare-fun b!521647 () Bool)

(assert (=> b!521647 (= e!304307 (= (seekEntryOrOpen!0 (select (arr!15962 a!3235) j!176) a!3235 mask!3524) (Found!4436 j!176)))))

(declare-fun b!521648 () Bool)

(declare-fun res!319528 () Bool)

(assert (=> b!521648 (=> (not res!319528) (not e!304304))))

(assert (=> b!521648 (= res!319528 (validKeyInArray!0 (select (arr!15962 a!3235) j!176)))))

(assert (= (and start!47432 res!319533) b!521644))

(assert (= (and b!521644 res!319537) b!521648))

(assert (= (and b!521648 res!319528) b!521638))

(assert (= (and b!521638 res!319531) b!521635))

(assert (= (and b!521635 res!319529) b!521637))

(assert (= (and b!521637 res!319536) b!521636))

(assert (= (and b!521636 res!319535) b!521640))

(assert (= (and b!521640 res!319538) b!521641))

(assert (= (and b!521641 res!319532) b!521647))

(assert (= (and b!521641 (not res!319534)) b!521646))

(assert (= (and b!521646 (not res!319527)) b!521642))

(assert (= (and b!521642 c!61355) b!521639))

(assert (= (and b!521642 (not c!61355)) b!521645))

(assert (= (and b!521639 res!319530) b!521643))

(declare-fun m!502585 () Bool)

(assert (=> b!521636 m!502585))

(declare-fun m!502587 () Bool)

(assert (=> b!521639 m!502587))

(declare-fun m!502589 () Bool)

(assert (=> b!521639 m!502589))

(declare-fun m!502591 () Bool)

(assert (=> b!521638 m!502591))

(declare-fun m!502593 () Bool)

(assert (=> start!47432 m!502593))

(declare-fun m!502595 () Bool)

(assert (=> start!47432 m!502595))

(declare-fun m!502597 () Bool)

(assert (=> b!521635 m!502597))

(declare-fun m!502599 () Bool)

(assert (=> b!521637 m!502599))

(declare-fun m!502601 () Bool)

(assert (=> b!521648 m!502601))

(assert (=> b!521648 m!502601))

(declare-fun m!502603 () Bool)

(assert (=> b!521648 m!502603))

(declare-fun m!502605 () Bool)

(assert (=> b!521642 m!502605))

(assert (=> b!521642 m!502601))

(declare-fun m!502607 () Bool)

(assert (=> b!521640 m!502607))

(assert (=> b!521647 m!502601))

(assert (=> b!521647 m!502601))

(declare-fun m!502609 () Bool)

(assert (=> b!521647 m!502609))

(declare-fun m!502611 () Bool)

(assert (=> b!521641 m!502611))

(declare-fun m!502613 () Bool)

(assert (=> b!521641 m!502613))

(declare-fun m!502615 () Bool)

(assert (=> b!521641 m!502615))

(declare-fun m!502617 () Bool)

(assert (=> b!521641 m!502617))

(assert (=> b!521641 m!502601))

(declare-fun m!502619 () Bool)

(assert (=> b!521641 m!502619))

(assert (=> b!521641 m!502601))

(declare-fun m!502621 () Bool)

(assert (=> b!521641 m!502621))

(declare-fun m!502623 () Bool)

(assert (=> b!521641 m!502623))

(assert (=> b!521641 m!502601))

(declare-fun m!502625 () Bool)

(assert (=> b!521641 m!502625))

(push 1)

