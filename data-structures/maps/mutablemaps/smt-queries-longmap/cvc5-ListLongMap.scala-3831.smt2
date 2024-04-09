; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52556 () Bool)

(assert start!52556)

(declare-fun b!573353 () Bool)

(declare-fun e!329852 () Bool)

(declare-fun e!329847 () Bool)

(assert (=> b!573353 (= e!329852 e!329847)))

(declare-fun res!362749 () Bool)

(assert (=> b!573353 (=> res!362749 e!329847)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!261868 () (_ BitVec 64))

(declare-datatypes ((array!35844 0))(
  ( (array!35845 (arr!17205 (Array (_ BitVec 32) (_ BitVec 64))) (size!17569 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35844)

(assert (=> b!573353 (= res!362749 (or (= lt!261868 (select (arr!17205 a!3118) j!142)) (= lt!261868 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5661 0))(
  ( (MissingZero!5661 (index!24871 (_ BitVec 32))) (Found!5661 (index!24872 (_ BitVec 32))) (Intermediate!5661 (undefined!6473 Bool) (index!24873 (_ BitVec 32)) (x!53774 (_ BitVec 32))) (Undefined!5661) (MissingVacant!5661 (index!24874 (_ BitVec 32))) )
))
(declare-fun lt!261870 () SeekEntryResult!5661)

(assert (=> b!573353 (= lt!261868 (select (arr!17205 a!3118) (index!24873 lt!261870)))))

(declare-fun lt!261871 () array!35844)

(declare-fun b!573354 () Bool)

(declare-fun e!329851 () Bool)

(declare-fun lt!261867 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35844 (_ BitVec 32)) SeekEntryResult!5661)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35844 (_ BitVec 32)) SeekEntryResult!5661)

(assert (=> b!573354 (= e!329851 (= (seekEntryOrOpen!0 lt!261867 lt!261871 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53774 lt!261870) (index!24873 lt!261870) (index!24873 lt!261870) lt!261867 lt!261871 mask!3119)))))

(declare-fun e!329853 () Bool)

(declare-fun b!573356 () Bool)

(assert (=> b!573356 (= e!329853 (not (or (undefined!6473 lt!261870) (not (is-Intermediate!5661 lt!261870)) (let ((bdg!17977 (select (arr!17205 a!3118) (index!24873 lt!261870)))) (or (= bdg!17977 (select (arr!17205 a!3118) j!142)) (= bdg!17977 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24873 lt!261870) #b00000000000000000000000000000000) (bvsge (index!24873 lt!261870) (bvadd #b00000000000000000000000000000001 mask!3119)) (and (bvsle (x!53774 lt!261870) #b01111111111111111111111111111110) (bvsge (x!53774 lt!261870) #b00000000000000000000000000000000)))))))))

(declare-fun e!329850 () Bool)

(assert (=> b!573356 e!329850))

(declare-fun res!362746 () Bool)

(assert (=> b!573356 (=> (not res!362746) (not e!329850))))

(declare-fun lt!261872 () SeekEntryResult!5661)

(assert (=> b!573356 (= res!362746 (= lt!261872 (Found!5661 j!142)))))

(assert (=> b!573356 (= lt!261872 (seekEntryOrOpen!0 (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35844 (_ BitVec 32)) Bool)

(assert (=> b!573356 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18024 0))(
  ( (Unit!18025) )
))
(declare-fun lt!261865 () Unit!18024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18024)

(assert (=> b!573356 (= lt!261865 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!573357 () Bool)

(declare-fun res!362738 () Bool)

(declare-fun e!329854 () Bool)

(assert (=> b!573357 (=> (not res!362738) (not e!329854))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!573357 (= res!362738 (validKeyInArray!0 k!1914))))

(declare-fun b!573358 () Bool)

(declare-fun res!362745 () Bool)

(declare-fun e!329849 () Bool)

(assert (=> b!573358 (=> (not res!362745) (not e!329849))))

(declare-datatypes ((List!11338 0))(
  ( (Nil!11335) (Cons!11334 (h!12364 (_ BitVec 64)) (t!17574 List!11338)) )
))
(declare-fun arrayNoDuplicates!0 (array!35844 (_ BitVec 32) List!11338) Bool)

(assert (=> b!573358 (= res!362745 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11335))))

(declare-fun b!573359 () Bool)

(declare-fun res!362744 () Bool)

(assert (=> b!573359 (=> (not res!362744) (not e!329849))))

(assert (=> b!573359 (= res!362744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!573360 () Bool)

(declare-fun res!362747 () Bool)

(assert (=> b!573360 (=> (not res!362747) (not e!329854))))

(assert (=> b!573360 (= res!362747 (validKeyInArray!0 (select (arr!17205 a!3118) j!142)))))

(declare-fun b!573361 () Bool)

(assert (=> b!573361 (= e!329847 e!329851)))

(declare-fun res!362740 () Bool)

(assert (=> b!573361 (=> (not res!362740) (not e!329851))))

(assert (=> b!573361 (= res!362740 (= lt!261872 (seekKeyOrZeroReturnVacant!0 (x!53774 lt!261870) (index!24873 lt!261870) (index!24873 lt!261870) (select (arr!17205 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!362743 () Bool)

(assert (=> start!52556 (=> (not res!362743) (not e!329854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52556 (= res!362743 (validMask!0 mask!3119))))

(assert (=> start!52556 e!329854))

(assert (=> start!52556 true))

(declare-fun array_inv!12979 (array!35844) Bool)

(assert (=> start!52556 (array_inv!12979 a!3118)))

(declare-fun b!573355 () Bool)

(declare-fun res!362750 () Bool)

(assert (=> b!573355 (=> (not res!362750) (not e!329854))))

(declare-fun arrayContainsKey!0 (array!35844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!573355 (= res!362750 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!573362 () Bool)

(assert (=> b!573362 (= e!329850 e!329852)))

(declare-fun res!362742 () Bool)

(assert (=> b!573362 (=> res!362742 e!329852)))

(assert (=> b!573362 (= res!362742 (or (undefined!6473 lt!261870) (not (is-Intermediate!5661 lt!261870))))))

(declare-fun b!573363 () Bool)

(assert (=> b!573363 (= e!329854 e!329849)))

(declare-fun res!362748 () Bool)

(assert (=> b!573363 (=> (not res!362748) (not e!329849))))

(declare-fun lt!261864 () SeekEntryResult!5661)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!573363 (= res!362748 (or (= lt!261864 (MissingZero!5661 i!1132)) (= lt!261864 (MissingVacant!5661 i!1132))))))

(assert (=> b!573363 (= lt!261864 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!573364 () Bool)

(assert (=> b!573364 (= e!329849 e!329853)))

(declare-fun res!362739 () Bool)

(assert (=> b!573364 (=> (not res!362739) (not e!329853))))

(declare-fun lt!261866 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35844 (_ BitVec 32)) SeekEntryResult!5661)

(assert (=> b!573364 (= res!362739 (= lt!261870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261866 lt!261867 lt!261871 mask!3119)))))

(declare-fun lt!261869 () (_ BitVec 32))

(assert (=> b!573364 (= lt!261870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261869 (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573364 (= lt!261866 (toIndex!0 lt!261867 mask!3119))))

(assert (=> b!573364 (= lt!261867 (select (store (arr!17205 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!573364 (= lt!261869 (toIndex!0 (select (arr!17205 a!3118) j!142) mask!3119))))

(assert (=> b!573364 (= lt!261871 (array!35845 (store (arr!17205 a!3118) i!1132 k!1914) (size!17569 a!3118)))))

(declare-fun b!573365 () Bool)

(declare-fun res!362741 () Bool)

(assert (=> b!573365 (=> (not res!362741) (not e!329854))))

(assert (=> b!573365 (= res!362741 (and (= (size!17569 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17569 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17569 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52556 res!362743) b!573365))

(assert (= (and b!573365 res!362741) b!573360))

(assert (= (and b!573360 res!362747) b!573357))

(assert (= (and b!573357 res!362738) b!573355))

(assert (= (and b!573355 res!362750) b!573363))

(assert (= (and b!573363 res!362748) b!573359))

(assert (= (and b!573359 res!362744) b!573358))

(assert (= (and b!573358 res!362745) b!573364))

(assert (= (and b!573364 res!362739) b!573356))

(assert (= (and b!573356 res!362746) b!573362))

(assert (= (and b!573362 (not res!362742)) b!573353))

(assert (= (and b!573353 (not res!362749)) b!573361))

(assert (= (and b!573361 res!362740) b!573354))

(declare-fun m!552367 () Bool)

(assert (=> b!573356 m!552367))

(declare-fun m!552369 () Bool)

(assert (=> b!573356 m!552369))

(declare-fun m!552371 () Bool)

(assert (=> b!573356 m!552371))

(declare-fun m!552373 () Bool)

(assert (=> b!573356 m!552373))

(assert (=> b!573356 m!552367))

(declare-fun m!552375 () Bool)

(assert (=> b!573356 m!552375))

(declare-fun m!552377 () Bool)

(assert (=> start!52556 m!552377))

(declare-fun m!552379 () Bool)

(assert (=> start!52556 m!552379))

(assert (=> b!573353 m!552367))

(assert (=> b!573353 m!552371))

(declare-fun m!552381 () Bool)

(assert (=> b!573359 m!552381))

(declare-fun m!552383 () Bool)

(assert (=> b!573354 m!552383))

(declare-fun m!552385 () Bool)

(assert (=> b!573354 m!552385))

(declare-fun m!552387 () Bool)

(assert (=> b!573355 m!552387))

(assert (=> b!573364 m!552367))

(declare-fun m!552389 () Bool)

(assert (=> b!573364 m!552389))

(assert (=> b!573364 m!552367))

(declare-fun m!552391 () Bool)

(assert (=> b!573364 m!552391))

(declare-fun m!552393 () Bool)

(assert (=> b!573364 m!552393))

(assert (=> b!573364 m!552367))

(declare-fun m!552395 () Bool)

(assert (=> b!573364 m!552395))

(declare-fun m!552397 () Bool)

(assert (=> b!573364 m!552397))

(declare-fun m!552399 () Bool)

(assert (=> b!573364 m!552399))

(assert (=> b!573361 m!552367))

(assert (=> b!573361 m!552367))

(declare-fun m!552401 () Bool)

(assert (=> b!573361 m!552401))

(declare-fun m!552403 () Bool)

(assert (=> b!573357 m!552403))

(declare-fun m!552405 () Bool)

(assert (=> b!573363 m!552405))

(assert (=> b!573360 m!552367))

(assert (=> b!573360 m!552367))

(declare-fun m!552407 () Bool)

(assert (=> b!573360 m!552407))

(declare-fun m!552409 () Bool)

(assert (=> b!573358 m!552409))

(push 1)

(assert (not start!52556))

(assert (not b!573357))

(assert (not b!573356))

(assert (not b!573363))

(assert (not b!573354))

(assert (not b!573361))

(assert (not b!573360))

(assert (not b!573358))

(assert (not b!573359))

(assert (not b!573364))

(assert (not b!573355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!84853 () Bool)

(assert (=> d!84853 (= (validKeyInArray!0 (select (arr!17205 a!3118) j!142)) (and (not (= (select (arr!17205 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17205 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!573360 d!84853))

(declare-fun d!84855 () Bool)

(declare-fun res!362837 () Bool)

(declare-fun e!329925 () Bool)

(assert (=> d!84855 (=> res!362837 e!329925)))

(assert (=> d!84855 (= res!362837 (= (select (arr!17205 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84855 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!329925)))

(declare-fun b!573480 () Bool)

(declare-fun e!329926 () Bool)

(assert (=> b!573480 (= e!329925 e!329926)))

(declare-fun res!362838 () Bool)

(assert (=> b!573480 (=> (not res!362838) (not e!329926))))

(assert (=> b!573480 (= res!362838 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17569 a!3118)))))

(declare-fun b!573481 () Bool)

(assert (=> b!573481 (= e!329926 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84855 (not res!362837)) b!573480))

(assert (= (and b!573480 res!362838) b!573481))

(declare-fun m!552525 () Bool)

(assert (=> d!84855 m!552525))

(declare-fun m!552527 () Bool)

(assert (=> b!573481 m!552527))

(assert (=> b!573355 d!84855))

(declare-fun b!573529 () Bool)

(declare-fun lt!261965 () SeekEntryResult!5661)

(assert (=> b!573529 (and (bvsge (index!24873 lt!261965) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261965) (size!17569 lt!261871)))))

(declare-fun e!329959 () Bool)

(assert (=> b!573529 (= e!329959 (= (select (arr!17205 lt!261871) (index!24873 lt!261965)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!573530 () Bool)

(declare-fun e!329961 () SeekEntryResult!5661)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!573530 (= e!329961 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261866 #b00000000000000000000000000000000 mask!3119) lt!261867 lt!261871 mask!3119))))

(declare-fun b!573531 () Bool)

(declare-fun e!329958 () SeekEntryResult!5661)

(assert (=> b!573531 (= e!329958 e!329961)))

(declare-fun c!65697 () Bool)

(declare-fun lt!261964 () (_ BitVec 64))

(assert (=> b!573531 (= c!65697 (or (= lt!261964 lt!261867) (= (bvadd lt!261964 lt!261964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!84857 () Bool)

(declare-fun e!329960 () Bool)

(assert (=> d!84857 e!329960))

(declare-fun c!65696 () Bool)

(assert (=> d!84857 (= c!65696 (and (is-Intermediate!5661 lt!261965) (undefined!6473 lt!261965)))))

(assert (=> d!84857 (= lt!261965 e!329958)))

(declare-fun c!65698 () Bool)

(assert (=> d!84857 (= c!65698 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84857 (= lt!261964 (select (arr!17205 lt!261871) lt!261866))))

(assert (=> d!84857 (validMask!0 mask!3119)))

(assert (=> d!84857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261866 lt!261867 lt!261871 mask!3119) lt!261965)))

(declare-fun b!573532 () Bool)

(assert (=> b!573532 (and (bvsge (index!24873 lt!261965) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261965) (size!17569 lt!261871)))))

(declare-fun res!362857 () Bool)

(assert (=> b!573532 (= res!362857 (= (select (arr!17205 lt!261871) (index!24873 lt!261965)) lt!261867))))

(assert (=> b!573532 (=> res!362857 e!329959)))

(declare-fun e!329957 () Bool)

(assert (=> b!573532 (= e!329957 e!329959)))

(declare-fun b!573533 () Bool)

(assert (=> b!573533 (= e!329960 e!329957)))

(declare-fun res!362856 () Bool)

(assert (=> b!573533 (= res!362856 (and (is-Intermediate!5661 lt!261965) (not (undefined!6473 lt!261965)) (bvslt (x!53774 lt!261965) #b01111111111111111111111111111110) (bvsge (x!53774 lt!261965) #b00000000000000000000000000000000) (bvsge (x!53774 lt!261965) #b00000000000000000000000000000000)))))

(assert (=> b!573533 (=> (not res!362856) (not e!329957))))

(declare-fun b!573534 () Bool)

(assert (=> b!573534 (= e!329961 (Intermediate!5661 false lt!261866 #b00000000000000000000000000000000))))

(declare-fun b!573535 () Bool)

(assert (=> b!573535 (and (bvsge (index!24873 lt!261965) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261965) (size!17569 lt!261871)))))

(declare-fun res!362858 () Bool)

(assert (=> b!573535 (= res!362858 (= (select (arr!17205 lt!261871) (index!24873 lt!261965)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573535 (=> res!362858 e!329959)))

(declare-fun b!573536 () Bool)

(assert (=> b!573536 (= e!329960 (bvsge (x!53774 lt!261965) #b01111111111111111111111111111110))))

(declare-fun b!573537 () Bool)

(assert (=> b!573537 (= e!329958 (Intermediate!5661 true lt!261866 #b00000000000000000000000000000000))))

(assert (= (and d!84857 c!65698) b!573537))

(assert (= (and d!84857 (not c!65698)) b!573531))

(assert (= (and b!573531 c!65697) b!573534))

(assert (= (and b!573531 (not c!65697)) b!573530))

(assert (= (and d!84857 c!65696) b!573536))

(assert (= (and d!84857 (not c!65696)) b!573533))

(assert (= (and b!573533 res!362856) b!573532))

(assert (= (and b!573532 (not res!362857)) b!573535))

(assert (= (and b!573535 (not res!362858)) b!573529))

(declare-fun m!552557 () Bool)

(assert (=> b!573530 m!552557))

(assert (=> b!573530 m!552557))

(declare-fun m!552559 () Bool)

(assert (=> b!573530 m!552559))

(declare-fun m!552561 () Bool)

(assert (=> b!573529 m!552561))

(declare-fun m!552563 () Bool)

(assert (=> d!84857 m!552563))

(assert (=> d!84857 m!552377))

(assert (=> b!573535 m!552561))

(assert (=> b!573532 m!552561))

(assert (=> b!573364 d!84857))

(declare-fun b!573546 () Bool)

(declare-fun lt!261967 () SeekEntryResult!5661)

(assert (=> b!573546 (and (bvsge (index!24873 lt!261967) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261967) (size!17569 a!3118)))))

(declare-fun e!329968 () Bool)

(assert (=> b!573546 (= e!329968 (= (select (arr!17205 a!3118) (index!24873 lt!261967)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!329970 () SeekEntryResult!5661)

(declare-fun b!573547 () Bool)

(assert (=> b!573547 (= e!329970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!261869 #b00000000000000000000000000000000 mask!3119) (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573548 () Bool)

(declare-fun e!329967 () SeekEntryResult!5661)

(assert (=> b!573548 (= e!329967 e!329970)))

(declare-fun lt!261966 () (_ BitVec 64))

(declare-fun c!65704 () Bool)

(assert (=> b!573548 (= c!65704 (or (= lt!261966 (select (arr!17205 a!3118) j!142)) (= (bvadd lt!261966 lt!261966) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!84869 () Bool)

(declare-fun e!329969 () Bool)

(assert (=> d!84869 e!329969))

(declare-fun c!65703 () Bool)

(assert (=> d!84869 (= c!65703 (and (is-Intermediate!5661 lt!261967) (undefined!6473 lt!261967)))))

(assert (=> d!84869 (= lt!261967 e!329967)))

(declare-fun c!65705 () Bool)

(assert (=> d!84869 (= c!65705 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!84869 (= lt!261966 (select (arr!17205 a!3118) lt!261869))))

(assert (=> d!84869 (validMask!0 mask!3119)))

(assert (=> d!84869 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261869 (select (arr!17205 a!3118) j!142) a!3118 mask!3119) lt!261967)))

(declare-fun b!573549 () Bool)

(assert (=> b!573549 (and (bvsge (index!24873 lt!261967) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261967) (size!17569 a!3118)))))

(declare-fun res!362860 () Bool)

(assert (=> b!573549 (= res!362860 (= (select (arr!17205 a!3118) (index!24873 lt!261967)) (select (arr!17205 a!3118) j!142)))))

(assert (=> b!573549 (=> res!362860 e!329968)))

(declare-fun e!329966 () Bool)

(assert (=> b!573549 (= e!329966 e!329968)))

(declare-fun b!573550 () Bool)

(assert (=> b!573550 (= e!329969 e!329966)))

(declare-fun res!362859 () Bool)

(assert (=> b!573550 (= res!362859 (and (is-Intermediate!5661 lt!261967) (not (undefined!6473 lt!261967)) (bvslt (x!53774 lt!261967) #b01111111111111111111111111111110) (bvsge (x!53774 lt!261967) #b00000000000000000000000000000000) (bvsge (x!53774 lt!261967) #b00000000000000000000000000000000)))))

(assert (=> b!573550 (=> (not res!362859) (not e!329966))))

(declare-fun b!573551 () Bool)

(assert (=> b!573551 (= e!329970 (Intermediate!5661 false lt!261869 #b00000000000000000000000000000000))))

(declare-fun b!573552 () Bool)

(assert (=> b!573552 (and (bvsge (index!24873 lt!261967) #b00000000000000000000000000000000) (bvslt (index!24873 lt!261967) (size!17569 a!3118)))))

(declare-fun res!362861 () Bool)

(assert (=> b!573552 (= res!362861 (= (select (arr!17205 a!3118) (index!24873 lt!261967)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573552 (=> res!362861 e!329968)))

(declare-fun b!573553 () Bool)

(assert (=> b!573553 (= e!329969 (bvsge (x!53774 lt!261967) #b01111111111111111111111111111110))))

(declare-fun b!573554 () Bool)

(assert (=> b!573554 (= e!329967 (Intermediate!5661 true lt!261869 #b00000000000000000000000000000000))))

(assert (= (and d!84869 c!65705) b!573554))

(assert (= (and d!84869 (not c!65705)) b!573548))

(assert (= (and b!573548 c!65704) b!573551))

(assert (= (and b!573548 (not c!65704)) b!573547))

(assert (= (and d!84869 c!65703) b!573553))

(assert (= (and d!84869 (not c!65703)) b!573550))

(assert (= (and b!573550 res!362859) b!573549))

(assert (= (and b!573549 (not res!362860)) b!573552))

(assert (= (and b!573552 (not res!362861)) b!573546))

(declare-fun m!552565 () Bool)

(assert (=> b!573547 m!552565))

(assert (=> b!573547 m!552565))

(assert (=> b!573547 m!552367))

(declare-fun m!552567 () Bool)

(assert (=> b!573547 m!552567))

(declare-fun m!552569 () Bool)

(assert (=> b!573546 m!552569))

(declare-fun m!552571 () Bool)

(assert (=> d!84869 m!552571))

(assert (=> d!84869 m!552377))

(assert (=> b!573552 m!552569))

(assert (=> b!573549 m!552569))

(assert (=> b!573364 d!84869))

(declare-fun d!84871 () Bool)

(declare-fun lt!261983 () (_ BitVec 32))

(declare-fun lt!261982 () (_ BitVec 32))

(assert (=> d!84871 (= lt!261983 (bvmul (bvxor lt!261982 (bvlshr lt!261982 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84871 (= lt!261982 ((_ extract 31 0) (bvand (bvxor lt!261867 (bvlshr lt!261867 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84871 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362862 (let ((h!12367 ((_ extract 31 0) (bvand (bvxor lt!261867 (bvlshr lt!261867 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53778 (bvmul (bvxor h!12367 (bvlshr h!12367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53778 (bvlshr x!53778 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362862 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362862 #b00000000000000000000000000000000))))))

(assert (=> d!84871 (= (toIndex!0 lt!261867 mask!3119) (bvand (bvxor lt!261983 (bvlshr lt!261983 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573364 d!84871))

(declare-fun d!84877 () Bool)

(declare-fun lt!261985 () (_ BitVec 32))

(declare-fun lt!261984 () (_ BitVec 32))

(assert (=> d!84877 (= lt!261985 (bvmul (bvxor lt!261984 (bvlshr lt!261984 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84877 (= lt!261984 ((_ extract 31 0) (bvand (bvxor (select (arr!17205 a!3118) j!142) (bvlshr (select (arr!17205 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84877 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!362862 (let ((h!12367 ((_ extract 31 0) (bvand (bvxor (select (arr!17205 a!3118) j!142) (bvlshr (select (arr!17205 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53778 (bvmul (bvxor h!12367 (bvlshr h!12367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53778 (bvlshr x!53778 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!362862 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!362862 #b00000000000000000000000000000000))))))

(assert (=> d!84877 (= (toIndex!0 (select (arr!17205 a!3118) j!142) mask!3119) (bvand (bvxor lt!261985 (bvlshr lt!261985 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!573364 d!84877))

(declare-fun b!573599 () Bool)

(declare-fun e!330000 () Bool)

(declare-fun call!32651 () Bool)

(assert (=> b!573599 (= e!330000 call!32651)))

(declare-fun d!84879 () Bool)

(declare-fun res!362873 () Bool)

(declare-fun e!329998 () Bool)

(assert (=> d!84879 (=> res!362873 e!329998)))

(assert (=> d!84879 (= res!362873 (bvsge #b00000000000000000000000000000000 (size!17569 a!3118)))))

(assert (=> d!84879 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!329998)))

(declare-fun b!573600 () Bool)

(assert (=> b!573600 (= e!329998 e!330000)))

(declare-fun c!65723 () Bool)

(assert (=> b!573600 (= c!65723 (validKeyInArray!0 (select (arr!17205 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573601 () Bool)

(declare-fun e!329999 () Bool)

(assert (=> b!573601 (= e!329999 call!32651)))

(declare-fun b!573602 () Bool)

(assert (=> b!573602 (= e!330000 e!329999)))

(declare-fun lt!261995 () (_ BitVec 64))

(assert (=> b!573602 (= lt!261995 (select (arr!17205 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!261996 () Unit!18024)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35844 (_ BitVec 64) (_ BitVec 32)) Unit!18024)

(assert (=> b!573602 (= lt!261996 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!261995 #b00000000000000000000000000000000))))

(assert (=> b!573602 (arrayContainsKey!0 a!3118 lt!261995 #b00000000000000000000000000000000)))

(declare-fun lt!261994 () Unit!18024)

(assert (=> b!573602 (= lt!261994 lt!261996)))

(declare-fun res!362874 () Bool)

(assert (=> b!573602 (= res!362874 (= (seekEntryOrOpen!0 (select (arr!17205 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5661 #b00000000000000000000000000000000)))))

(assert (=> b!573602 (=> (not res!362874) (not e!329999))))

(declare-fun bm!32648 () Bool)

(assert (=> bm!32648 (= call!32651 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!84879 (not res!362873)) b!573600))

(assert (= (and b!573600 c!65723) b!573602))

(assert (= (and b!573600 (not c!65723)) b!573599))

(assert (= (and b!573602 res!362874) b!573601))

(assert (= (or b!573601 b!573599) bm!32648))

(assert (=> b!573600 m!552525))

(assert (=> b!573600 m!552525))

(declare-fun m!552611 () Bool)

(assert (=> b!573600 m!552611))

(assert (=> b!573602 m!552525))

(declare-fun m!552613 () Bool)

(assert (=> b!573602 m!552613))

(declare-fun m!552615 () Bool)

(assert (=> b!573602 m!552615))

(assert (=> b!573602 m!552525))

(declare-fun m!552617 () Bool)

(assert (=> b!573602 m!552617))

(declare-fun m!552619 () Bool)

(assert (=> bm!32648 m!552619))

(assert (=> b!573359 d!84879))

(declare-fun b!573643 () Bool)

(declare-fun e!330022 () SeekEntryResult!5661)

(declare-fun lt!262014 () SeekEntryResult!5661)

(assert (=> b!573643 (= e!330022 (MissingZero!5661 (index!24873 lt!262014)))))

(declare-fun b!573644 () Bool)

(declare-fun e!330024 () SeekEntryResult!5661)

(assert (=> b!573644 (= e!330024 Undefined!5661)))

(declare-fun d!84889 () Bool)

(declare-fun lt!262016 () SeekEntryResult!5661)

(assert (=> d!84889 (and (or (is-Undefined!5661 lt!262016) (not (is-Found!5661 lt!262016)) (and (bvsge (index!24872 lt!262016) #b00000000000000000000000000000000) (bvslt (index!24872 lt!262016) (size!17569 lt!261871)))) (or (is-Undefined!5661 lt!262016) (is-Found!5661 lt!262016) (not (is-MissingZero!5661 lt!262016)) (and (bvsge (index!24871 lt!262016) #b00000000000000000000000000000000) (bvslt (index!24871 lt!262016) (size!17569 lt!261871)))) (or (is-Undefined!5661 lt!262016) (is-Found!5661 lt!262016) (is-MissingZero!5661 lt!262016) (not (is-MissingVacant!5661 lt!262016)) (and (bvsge (index!24874 lt!262016) #b00000000000000000000000000000000) (bvslt (index!24874 lt!262016) (size!17569 lt!261871)))) (or (is-Undefined!5661 lt!262016) (ite (is-Found!5661 lt!262016) (= (select (arr!17205 lt!261871) (index!24872 lt!262016)) lt!261867) (ite (is-MissingZero!5661 lt!262016) (= (select (arr!17205 lt!261871) (index!24871 lt!262016)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5661 lt!262016) (= (select (arr!17205 lt!261871) (index!24874 lt!262016)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84889 (= lt!262016 e!330024)))

(declare-fun c!65744 () Bool)

(assert (=> d!84889 (= c!65744 (and (is-Intermediate!5661 lt!262014) (undefined!6473 lt!262014)))))

(assert (=> d!84889 (= lt!262014 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!261867 mask!3119) lt!261867 lt!261871 mask!3119))))

(assert (=> d!84889 (validMask!0 mask!3119)))

(assert (=> d!84889 (= (seekEntryOrOpen!0 lt!261867 lt!261871 mask!3119) lt!262016)))

(declare-fun b!573645 () Bool)

(declare-fun e!330023 () SeekEntryResult!5661)

(assert (=> b!573645 (= e!330023 (Found!5661 (index!24873 lt!262014)))))

(declare-fun b!573646 () Bool)

(assert (=> b!573646 (= e!330024 e!330023)))

(declare-fun lt!262015 () (_ BitVec 64))

(assert (=> b!573646 (= lt!262015 (select (arr!17205 lt!261871) (index!24873 lt!262014)))))

(declare-fun c!65745 () Bool)

(assert (=> b!573646 (= c!65745 (= lt!262015 lt!261867))))

(declare-fun b!573647 () Bool)

(declare-fun c!65743 () Bool)

(assert (=> b!573647 (= c!65743 (= lt!262015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573647 (= e!330023 e!330022)))

(declare-fun b!573648 () Bool)

(assert (=> b!573648 (= e!330022 (seekKeyOrZeroReturnVacant!0 (x!53774 lt!262014) (index!24873 lt!262014) (index!24873 lt!262014) lt!261867 lt!261871 mask!3119))))

(assert (= (and d!84889 c!65744) b!573644))

(assert (= (and d!84889 (not c!65744)) b!573646))

(assert (= (and b!573646 c!65745) b!573645))

(assert (= (and b!573646 (not c!65745)) b!573647))

(assert (= (and b!573647 c!65743) b!573643))

(assert (= (and b!573647 (not c!65743)) b!573648))

(assert (=> d!84889 m!552393))

(declare-fun m!552645 () Bool)

(assert (=> d!84889 m!552645))

(assert (=> d!84889 m!552377))

(assert (=> d!84889 m!552393))

(declare-fun m!552647 () Bool)

(assert (=> d!84889 m!552647))

(declare-fun m!552649 () Bool)

(assert (=> d!84889 m!552649))

(declare-fun m!552651 () Bool)

(assert (=> d!84889 m!552651))

(declare-fun m!552653 () Bool)

(assert (=> b!573646 m!552653))

(declare-fun m!552655 () Bool)

(assert (=> b!573648 m!552655))

(assert (=> b!573354 d!84889))

(declare-fun b!573715 () Bool)

(declare-fun e!330062 () SeekEntryResult!5661)

(assert (=> b!573715 (= e!330062 (Found!5661 (index!24873 lt!261870)))))

(declare-fun b!573716 () Bool)

(declare-fun e!330063 () SeekEntryResult!5661)

(assert (=> b!573716 (= e!330063 (MissingVacant!5661 (index!24873 lt!261870)))))

(declare-fun b!573717 () Bool)

(declare-fun c!65772 () Bool)

(declare-fun lt!262041 () (_ BitVec 64))

(assert (=> b!573717 (= c!65772 (= lt!262041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573717 (= e!330062 e!330063)))

(declare-fun b!573718 () Bool)

(declare-fun e!330061 () SeekEntryResult!5661)

(assert (=> b!573718 (= e!330061 Undefined!5661)))

(declare-fun b!573719 () Bool)

(assert (=> b!573719 (= e!330063 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53774 lt!261870) #b00000000000000000000000000000001) (nextIndex!0 (index!24873 lt!261870) (x!53774 lt!261870) mask!3119) (index!24873 lt!261870) lt!261867 lt!261871 mask!3119))))

(declare-fun b!573720 () Bool)

(assert (=> b!573720 (= e!330061 e!330062)))

(declare-fun c!65771 () Bool)

(assert (=> b!573720 (= c!65771 (= lt!262041 lt!261867))))

(declare-fun d!84905 () Bool)

(declare-fun lt!262042 () SeekEntryResult!5661)

(assert (=> d!84905 (and (or (is-Undefined!5661 lt!262042) (not (is-Found!5661 lt!262042)) (and (bvsge (index!24872 lt!262042) #b00000000000000000000000000000000) (bvslt (index!24872 lt!262042) (size!17569 lt!261871)))) (or (is-Undefined!5661 lt!262042) (is-Found!5661 lt!262042) (not (is-MissingVacant!5661 lt!262042)) (not (= (index!24874 lt!262042) (index!24873 lt!261870))) (and (bvsge (index!24874 lt!262042) #b00000000000000000000000000000000) (bvslt (index!24874 lt!262042) (size!17569 lt!261871)))) (or (is-Undefined!5661 lt!262042) (ite (is-Found!5661 lt!262042) (= (select (arr!17205 lt!261871) (index!24872 lt!262042)) lt!261867) (and (is-MissingVacant!5661 lt!262042) (= (index!24874 lt!262042) (index!24873 lt!261870)) (= (select (arr!17205 lt!261871) (index!24874 lt!262042)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84905 (= lt!262042 e!330061)))

(declare-fun c!65770 () Bool)

(assert (=> d!84905 (= c!65770 (bvsge (x!53774 lt!261870) #b01111111111111111111111111111110))))

(assert (=> d!84905 (= lt!262041 (select (arr!17205 lt!261871) (index!24873 lt!261870)))))

(assert (=> d!84905 (validMask!0 mask!3119)))

(assert (=> d!84905 (= (seekKeyOrZeroReturnVacant!0 (x!53774 lt!261870) (index!24873 lt!261870) (index!24873 lt!261870) lt!261867 lt!261871 mask!3119) lt!262042)))

(assert (= (and d!84905 c!65770) b!573718))

(assert (= (and d!84905 (not c!65770)) b!573720))

(assert (= (and b!573720 c!65771) b!573715))

(assert (= (and b!573720 (not c!65771)) b!573717))

(assert (= (and b!573717 c!65772) b!573716))

(assert (= (and b!573717 (not c!65772)) b!573719))

(declare-fun m!552673 () Bool)

(assert (=> b!573719 m!552673))

(assert (=> b!573719 m!552673))

(declare-fun m!552675 () Bool)

(assert (=> b!573719 m!552675))

(declare-fun m!552677 () Bool)

(assert (=> d!84905 m!552677))

(declare-fun m!552679 () Bool)

(assert (=> d!84905 m!552679))

(declare-fun m!552681 () Bool)

(assert (=> d!84905 m!552681))

(assert (=> d!84905 m!552377))

(assert (=> b!573354 d!84905))

(declare-fun d!84913 () Bool)

(assert (=> d!84913 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!573357 d!84913))

(declare-fun b!573730 () Bool)

(declare-fun e!330069 () SeekEntryResult!5661)

(declare-fun lt!262045 () SeekEntryResult!5661)

(assert (=> b!573730 (= e!330069 (MissingZero!5661 (index!24873 lt!262045)))))

(declare-fun b!573731 () Bool)

(declare-fun e!330071 () SeekEntryResult!5661)

(assert (=> b!573731 (= e!330071 Undefined!5661)))

(declare-fun d!84915 () Bool)

(declare-fun lt!262047 () SeekEntryResult!5661)

(assert (=> d!84915 (and (or (is-Undefined!5661 lt!262047) (not (is-Found!5661 lt!262047)) (and (bvsge (index!24872 lt!262047) #b00000000000000000000000000000000) (bvslt (index!24872 lt!262047) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262047) (is-Found!5661 lt!262047) (not (is-MissingZero!5661 lt!262047)) (and (bvsge (index!24871 lt!262047) #b00000000000000000000000000000000) (bvslt (index!24871 lt!262047) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262047) (is-Found!5661 lt!262047) (is-MissingZero!5661 lt!262047) (not (is-MissingVacant!5661 lt!262047)) (and (bvsge (index!24874 lt!262047) #b00000000000000000000000000000000) (bvslt (index!24874 lt!262047) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262047) (ite (is-Found!5661 lt!262047) (= (select (arr!17205 a!3118) (index!24872 lt!262047)) k!1914) (ite (is-MissingZero!5661 lt!262047) (= (select (arr!17205 a!3118) (index!24871 lt!262047)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5661 lt!262047) (= (select (arr!17205 a!3118) (index!24874 lt!262047)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84915 (= lt!262047 e!330071)))

(declare-fun c!65777 () Bool)

(assert (=> d!84915 (= c!65777 (and (is-Intermediate!5661 lt!262045) (undefined!6473 lt!262045)))))

(assert (=> d!84915 (= lt!262045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84915 (validMask!0 mask!3119)))

(assert (=> d!84915 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!262047)))

(declare-fun b!573732 () Bool)

(declare-fun e!330070 () SeekEntryResult!5661)

(assert (=> b!573732 (= e!330070 (Found!5661 (index!24873 lt!262045)))))

(declare-fun b!573733 () Bool)

(assert (=> b!573733 (= e!330071 e!330070)))

(declare-fun lt!262046 () (_ BitVec 64))

(assert (=> b!573733 (= lt!262046 (select (arr!17205 a!3118) (index!24873 lt!262045)))))

(declare-fun c!65778 () Bool)

(assert (=> b!573733 (= c!65778 (= lt!262046 k!1914))))

(declare-fun b!573734 () Bool)

(declare-fun c!65776 () Bool)

(assert (=> b!573734 (= c!65776 (= lt!262046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573734 (= e!330070 e!330069)))

(declare-fun b!573735 () Bool)

(assert (=> b!573735 (= e!330069 (seekKeyOrZeroReturnVacant!0 (x!53774 lt!262045) (index!24873 lt!262045) (index!24873 lt!262045) k!1914 a!3118 mask!3119))))

(assert (= (and d!84915 c!65777) b!573731))

(assert (= (and d!84915 (not c!65777)) b!573733))

(assert (= (and b!573733 c!65778) b!573732))

(assert (= (and b!573733 (not c!65778)) b!573734))

(assert (= (and b!573734 c!65776) b!573730))

(assert (= (and b!573734 (not c!65776)) b!573735))

(declare-fun m!552691 () Bool)

(assert (=> d!84915 m!552691))

(declare-fun m!552693 () Bool)

(assert (=> d!84915 m!552693))

(assert (=> d!84915 m!552377))

(assert (=> d!84915 m!552691))

(declare-fun m!552695 () Bool)

(assert (=> d!84915 m!552695))

(declare-fun m!552697 () Bool)

(assert (=> d!84915 m!552697))

(declare-fun m!552699 () Bool)

(assert (=> d!84915 m!552699))

(declare-fun m!552701 () Bool)

(assert (=> b!573733 m!552701))

(declare-fun m!552703 () Bool)

(assert (=> b!573735 m!552703))

(assert (=> b!573363 d!84915))

(declare-fun b!573755 () Bool)

(declare-fun e!330087 () Bool)

(declare-fun e!330085 () Bool)

(assert (=> b!573755 (= e!330087 e!330085)))

(declare-fun res!362909 () Bool)

(assert (=> b!573755 (=> (not res!362909) (not e!330085))))

(declare-fun e!330088 () Bool)

(assert (=> b!573755 (= res!362909 (not e!330088))))

(declare-fun res!362911 () Bool)

(assert (=> b!573755 (=> (not res!362911) (not e!330088))))

(assert (=> b!573755 (= res!362911 (validKeyInArray!0 (select (arr!17205 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32652 () Bool)

(declare-fun call!32655 () Bool)

(declare-fun c!65784 () Bool)

(assert (=> bm!32652 (= call!32655 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65784 (Cons!11334 (select (arr!17205 a!3118) #b00000000000000000000000000000000) Nil!11335) Nil!11335)))))

(declare-fun b!573756 () Bool)

(declare-fun contains!2891 (List!11338 (_ BitVec 64)) Bool)

(assert (=> b!573756 (= e!330088 (contains!2891 Nil!11335 (select (arr!17205 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573757 () Bool)

(declare-fun e!330086 () Bool)

(assert (=> b!573757 (= e!330086 call!32655)))

(declare-fun b!573758 () Bool)

(assert (=> b!573758 (= e!330085 e!330086)))

(assert (=> b!573758 (= c!65784 (validKeyInArray!0 (select (arr!17205 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!573759 () Bool)

(assert (=> b!573759 (= e!330086 call!32655)))

(declare-fun d!84919 () Bool)

(declare-fun res!362910 () Bool)

(assert (=> d!84919 (=> res!362910 e!330087)))

(assert (=> d!84919 (= res!362910 (bvsge #b00000000000000000000000000000000 (size!17569 a!3118)))))

(assert (=> d!84919 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11335) e!330087)))

(assert (= (and d!84919 (not res!362910)) b!573755))

(assert (= (and b!573755 res!362911) b!573756))

(assert (= (and b!573755 res!362909) b!573758))

(assert (= (and b!573758 c!65784) b!573759))

(assert (= (and b!573758 (not c!65784)) b!573757))

(assert (= (or b!573759 b!573757) bm!32652))

(assert (=> b!573755 m!552525))

(assert (=> b!573755 m!552525))

(assert (=> b!573755 m!552611))

(assert (=> bm!32652 m!552525))

(declare-fun m!552713 () Bool)

(assert (=> bm!32652 m!552713))

(assert (=> b!573756 m!552525))

(assert (=> b!573756 m!552525))

(declare-fun m!552715 () Bool)

(assert (=> b!573756 m!552715))

(assert (=> b!573758 m!552525))

(assert (=> b!573758 m!552525))

(assert (=> b!573758 m!552611))

(assert (=> b!573358 d!84919))

(declare-fun b!573760 () Bool)

(declare-fun e!330090 () SeekEntryResult!5661)

(assert (=> b!573760 (= e!330090 (Found!5661 (index!24873 lt!261870)))))

(declare-fun b!573761 () Bool)

(declare-fun e!330091 () SeekEntryResult!5661)

(assert (=> b!573761 (= e!330091 (MissingVacant!5661 (index!24873 lt!261870)))))

(declare-fun b!573762 () Bool)

(declare-fun c!65787 () Bool)

(declare-fun lt!262058 () (_ BitVec 64))

(assert (=> b!573762 (= c!65787 (= lt!262058 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573762 (= e!330090 e!330091)))

(declare-fun b!573763 () Bool)

(declare-fun e!330089 () SeekEntryResult!5661)

(assert (=> b!573763 (= e!330089 Undefined!5661)))

(declare-fun b!573764 () Bool)

(assert (=> b!573764 (= e!330091 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53774 lt!261870) #b00000000000000000000000000000001) (nextIndex!0 (index!24873 lt!261870) (x!53774 lt!261870) mask!3119) (index!24873 lt!261870) (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!573765 () Bool)

(assert (=> b!573765 (= e!330089 e!330090)))

(declare-fun c!65786 () Bool)

(assert (=> b!573765 (= c!65786 (= lt!262058 (select (arr!17205 a!3118) j!142)))))

(declare-fun lt!262059 () SeekEntryResult!5661)

(declare-fun d!84927 () Bool)

(assert (=> d!84927 (and (or (is-Undefined!5661 lt!262059) (not (is-Found!5661 lt!262059)) (and (bvsge (index!24872 lt!262059) #b00000000000000000000000000000000) (bvslt (index!24872 lt!262059) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262059) (is-Found!5661 lt!262059) (not (is-MissingVacant!5661 lt!262059)) (not (= (index!24874 lt!262059) (index!24873 lt!261870))) (and (bvsge (index!24874 lt!262059) #b00000000000000000000000000000000) (bvslt (index!24874 lt!262059) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262059) (ite (is-Found!5661 lt!262059) (= (select (arr!17205 a!3118) (index!24872 lt!262059)) (select (arr!17205 a!3118) j!142)) (and (is-MissingVacant!5661 lt!262059) (= (index!24874 lt!262059) (index!24873 lt!261870)) (= (select (arr!17205 a!3118) (index!24874 lt!262059)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84927 (= lt!262059 e!330089)))

(declare-fun c!65785 () Bool)

(assert (=> d!84927 (= c!65785 (bvsge (x!53774 lt!261870) #b01111111111111111111111111111110))))

(assert (=> d!84927 (= lt!262058 (select (arr!17205 a!3118) (index!24873 lt!261870)))))

(assert (=> d!84927 (validMask!0 mask!3119)))

(assert (=> d!84927 (= (seekKeyOrZeroReturnVacant!0 (x!53774 lt!261870) (index!24873 lt!261870) (index!24873 lt!261870) (select (arr!17205 a!3118) j!142) a!3118 mask!3119) lt!262059)))

(assert (= (and d!84927 c!65785) b!573763))

(assert (= (and d!84927 (not c!65785)) b!573765))

(assert (= (and b!573765 c!65786) b!573760))

(assert (= (and b!573765 (not c!65786)) b!573762))

(assert (= (and b!573762 c!65787) b!573761))

(assert (= (and b!573762 (not c!65787)) b!573764))

(assert (=> b!573764 m!552673))

(assert (=> b!573764 m!552673))

(assert (=> b!573764 m!552367))

(declare-fun m!552717 () Bool)

(assert (=> b!573764 m!552717))

(declare-fun m!552719 () Bool)

(assert (=> d!84927 m!552719))

(declare-fun m!552721 () Bool)

(assert (=> d!84927 m!552721))

(assert (=> d!84927 m!552371))

(assert (=> d!84927 m!552377))

(assert (=> b!573361 d!84927))

(declare-fun b!573766 () Bool)

(declare-fun e!330092 () SeekEntryResult!5661)

(declare-fun lt!262060 () SeekEntryResult!5661)

(assert (=> b!573766 (= e!330092 (MissingZero!5661 (index!24873 lt!262060)))))

(declare-fun b!573767 () Bool)

(declare-fun e!330094 () SeekEntryResult!5661)

(assert (=> b!573767 (= e!330094 Undefined!5661)))

(declare-fun d!84929 () Bool)

(declare-fun lt!262062 () SeekEntryResult!5661)

(assert (=> d!84929 (and (or (is-Undefined!5661 lt!262062) (not (is-Found!5661 lt!262062)) (and (bvsge (index!24872 lt!262062) #b00000000000000000000000000000000) (bvslt (index!24872 lt!262062) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262062) (is-Found!5661 lt!262062) (not (is-MissingZero!5661 lt!262062)) (and (bvsge (index!24871 lt!262062) #b00000000000000000000000000000000) (bvslt (index!24871 lt!262062) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262062) (is-Found!5661 lt!262062) (is-MissingZero!5661 lt!262062) (not (is-MissingVacant!5661 lt!262062)) (and (bvsge (index!24874 lt!262062) #b00000000000000000000000000000000) (bvslt (index!24874 lt!262062) (size!17569 a!3118)))) (or (is-Undefined!5661 lt!262062) (ite (is-Found!5661 lt!262062) (= (select (arr!17205 a!3118) (index!24872 lt!262062)) (select (arr!17205 a!3118) j!142)) (ite (is-MissingZero!5661 lt!262062) (= (select (arr!17205 a!3118) (index!24871 lt!262062)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5661 lt!262062) (= (select (arr!17205 a!3118) (index!24874 lt!262062)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84929 (= lt!262062 e!330094)))

(declare-fun c!65789 () Bool)

(assert (=> d!84929 (= c!65789 (and (is-Intermediate!5661 lt!262060) (undefined!6473 lt!262060)))))

(assert (=> d!84929 (= lt!262060 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17205 a!3118) j!142) mask!3119) (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84929 (validMask!0 mask!3119)))

(assert (=> d!84929 (= (seekEntryOrOpen!0 (select (arr!17205 a!3118) j!142) a!3118 mask!3119) lt!262062)))

(declare-fun b!573768 () Bool)

(declare-fun e!330093 () SeekEntryResult!5661)

(assert (=> b!573768 (= e!330093 (Found!5661 (index!24873 lt!262060)))))

(declare-fun b!573769 () Bool)

(assert (=> b!573769 (= e!330094 e!330093)))

(declare-fun lt!262061 () (_ BitVec 64))

(assert (=> b!573769 (= lt!262061 (select (arr!17205 a!3118) (index!24873 lt!262060)))))

(declare-fun c!65790 () Bool)

(assert (=> b!573769 (= c!65790 (= lt!262061 (select (arr!17205 a!3118) j!142)))))

(declare-fun b!573770 () Bool)

(declare-fun c!65788 () Bool)

(assert (=> b!573770 (= c!65788 (= lt!262061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!573770 (= e!330093 e!330092)))

(declare-fun b!573771 () Bool)

(assert (=> b!573771 (= e!330092 (seekKeyOrZeroReturnVacant!0 (x!53774 lt!262060) (index!24873 lt!262060) (index!24873 lt!262060) (select (arr!17205 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84929 c!65789) b!573767))

(assert (= (and d!84929 (not c!65789)) b!573769))

(assert (= (and b!573769 c!65790) b!573768))

(assert (= (and b!573769 (not c!65790)) b!573770))

(assert (= (and b!573770 c!65788) b!573766))

(assert (= (and b!573770 (not c!65788)) b!573771))

(assert (=> d!84929 m!552389))

(assert (=> d!84929 m!552367))

(declare-fun m!552723 () Bool)

(assert (=> d!84929 m!552723))

(assert (=> d!84929 m!552377))

(assert (=> d!84929 m!552367))

(assert (=> d!84929 m!552389))

(declare-fun m!552725 () Bool)

(assert (=> d!84929 m!552725))

(declare-fun m!552727 () Bool)

(assert (=> d!84929 m!552727))

(declare-fun m!552729 () Bool)

(assert (=> d!84929 m!552729))

(declare-fun m!552731 () Bool)

(assert (=> b!573769 m!552731))

(assert (=> b!573771 m!552367))

(declare-fun m!552733 () Bool)

(assert (=> b!573771 m!552733))

(assert (=> b!573356 d!84929))

(declare-fun b!573782 () Bool)

(declare-fun e!330105 () Bool)

(declare-fun call!32656 () Bool)

(assert (=> b!573782 (= e!330105 call!32656)))

(declare-fun d!84931 () Bool)

(declare-fun res!362918 () Bool)

(declare-fun e!330103 () Bool)

(assert (=> d!84931 (=> res!362918 e!330103)))

(assert (=> d!84931 (= res!362918 (bvsge j!142 (size!17569 a!3118)))))

(assert (=> d!84931 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330103)))

(declare-fun b!573783 () Bool)

(assert (=> b!573783 (= e!330103 e!330105)))

(declare-fun c!65793 () Bool)

(assert (=> b!573783 (= c!65793 (validKeyInArray!0 (select (arr!17205 a!3118) j!142)))))

(declare-fun b!573784 () Bool)

(declare-fun e!330104 () Bool)

(assert (=> b!573784 (= e!330104 call!32656)))

(declare-fun b!573785 () Bool)

(assert (=> b!573785 (= e!330105 e!330104)))

(declare-fun lt!262064 () (_ BitVec 64))

(assert (=> b!573785 (= lt!262064 (select (arr!17205 a!3118) j!142))))

(declare-fun lt!262065 () Unit!18024)

(assert (=> b!573785 (= lt!262065 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262064 j!142))))

(assert (=> b!573785 (arrayContainsKey!0 a!3118 lt!262064 #b00000000000000000000000000000000)))

(declare-fun lt!262063 () Unit!18024)

(assert (=> b!573785 (= lt!262063 lt!262065)))

(declare-fun res!362919 () Bool)

(assert (=> b!573785 (= res!362919 (= (seekEntryOrOpen!0 (select (arr!17205 a!3118) j!142) a!3118 mask!3119) (Found!5661 j!142)))))

(assert (=> b!573785 (=> (not res!362919) (not e!330104))))

(declare-fun bm!32653 () Bool)

(assert (=> bm!32653 (= call!32656 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!84931 (not res!362918)) b!573783))

(assert (= (and b!573783 c!65793) b!573785))

(assert (= (and b!573783 (not c!65793)) b!573782))

(assert (= (and b!573785 res!362919) b!573784))

(assert (= (or b!573784 b!573782) bm!32653))

(assert (=> b!573783 m!552367))

(assert (=> b!573783 m!552367))

(assert (=> b!573783 m!552407))

(assert (=> b!573785 m!552367))

(declare-fun m!552735 () Bool)

(assert (=> b!573785 m!552735))

(declare-fun m!552737 () Bool)

(assert (=> b!573785 m!552737))

(assert (=> b!573785 m!552367))

(assert (=> b!573785 m!552375))

(declare-fun m!552739 () Bool)

(assert (=> bm!32653 m!552739))

(assert (=> b!573356 d!84931))

(declare-fun d!84933 () Bool)

(assert (=> d!84933 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262068 () Unit!18024)

(declare-fun choose!38 (array!35844 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18024)

(assert (=> d!84933 (= lt!262068 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84933 (validMask!0 mask!3119)))

(assert (=> d!84933 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262068)))

(declare-fun bs!17758 () Bool)

(assert (= bs!17758 d!84933))

(assert (=> bs!17758 m!552369))

(declare-fun m!552749 () Bool)

(assert (=> bs!17758 m!552749))

(assert (=> bs!17758 m!552377))

(assert (=> b!573356 d!84933))

(declare-fun d!84937 () Bool)

(assert (=> d!84937 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52556 d!84937))

(declare-fun d!84945 () Bool)

(assert (=> d!84945 (= (array_inv!12979 a!3118) (bvsge (size!17569 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52556 d!84945))

(push 1)

