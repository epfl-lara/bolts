; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67288 () Bool)

(assert start!67288)

(declare-fun b!777908 () Bool)

(declare-fun res!526452 () Bool)

(declare-fun e!432826 () Bool)

(assert (=> b!777908 (=> res!526452 e!432826)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42535 0))(
  ( (array!42536 (arr!20358 (Array (_ BitVec 32) (_ BitVec 64))) (size!20779 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42535)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7965 0))(
  ( (MissingZero!7965 (index!34227 (_ BitVec 32))) (Found!7965 (index!34228 (_ BitVec 32))) (Intermediate!7965 (undefined!8777 Bool) (index!34229 (_ BitVec 32)) (x!65198 (_ BitVec 32))) (Undefined!7965) (MissingVacant!7965 (index!34230 (_ BitVec 32))) )
))
(declare-fun lt!346606 () SeekEntryResult!7965)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42535 (_ BitVec 32)) SeekEntryResult!7965)

(assert (=> b!777908 (= res!526452 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346606)))))

(declare-fun b!777909 () Bool)

(declare-fun res!526462 () Bool)

(declare-fun e!432823 () Bool)

(assert (=> b!777909 (=> (not res!526462) (not e!432823))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!777909 (= res!526462 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20358 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777910 () Bool)

(declare-fun res!526451 () Bool)

(declare-fun e!432822 () Bool)

(assert (=> b!777910 (=> (not res!526451) (not e!432822))))

(assert (=> b!777910 (= res!526451 (and (= (size!20779 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20779 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20779 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777911 () Bool)

(declare-fun res!526448 () Bool)

(declare-fun e!432824 () Bool)

(assert (=> b!777911 (=> (not res!526448) (not e!432824))))

(declare-datatypes ((List!14413 0))(
  ( (Nil!14410) (Cons!14409 (h!15520 (_ BitVec 64)) (t!20736 List!14413)) )
))
(declare-fun arrayNoDuplicates!0 (array!42535 (_ BitVec 32) List!14413) Bool)

(assert (=> b!777911 (= res!526448 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14410))))

(declare-fun b!777912 () Bool)

(declare-fun res!526459 () Bool)

(assert (=> b!777912 (=> (not res!526459) (not e!432822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777912 (= res!526459 (validKeyInArray!0 (select (arr!20358 a!3186) j!159)))))

(declare-fun b!777913 () Bool)

(declare-fun e!432821 () Bool)

(declare-fun lt!346598 () SeekEntryResult!7965)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42535 (_ BitVec 32)) SeekEntryResult!7965)

(assert (=> b!777913 (= e!432821 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346598))))

(declare-fun b!777914 () Bool)

(declare-fun e!432829 () Bool)

(assert (=> b!777914 (= e!432823 e!432829)))

(declare-fun res!526445 () Bool)

(assert (=> b!777914 (=> (not res!526445) (not e!432829))))

(declare-fun lt!346601 () SeekEntryResult!7965)

(declare-fun lt!346599 () SeekEntryResult!7965)

(assert (=> b!777914 (= res!526445 (= lt!346601 lt!346599))))

(declare-fun lt!346605 () array!42535)

(declare-fun lt!346604 () (_ BitVec 64))

(assert (=> b!777914 (= lt!346599 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346604 lt!346605 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777914 (= lt!346601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346604 mask!3328) lt!346604 lt!346605 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!777914 (= lt!346604 (select (store (arr!20358 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!777914 (= lt!346605 (array!42536 (store (arr!20358 a!3186) i!1173 k!2102) (size!20779 a!3186)))))

(declare-fun b!777915 () Bool)

(assert (=> b!777915 (= e!432821 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) (Found!7965 j!159)))))

(declare-fun b!777916 () Bool)

(assert (=> b!777916 (= e!432824 e!432823)))

(declare-fun res!526454 () Bool)

(assert (=> b!777916 (=> (not res!526454) (not e!432823))))

(assert (=> b!777916 (= res!526454 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346598))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777916 (= lt!346598 (Intermediate!7965 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!526455 () Bool)

(assert (=> start!67288 (=> (not res!526455) (not e!432822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67288 (= res!526455 (validMask!0 mask!3328))))

(assert (=> start!67288 e!432822))

(assert (=> start!67288 true))

(declare-fun array_inv!16132 (array!42535) Bool)

(assert (=> start!67288 (array_inv!16132 a!3186)))

(declare-fun b!777917 () Bool)

(declare-fun res!526453 () Bool)

(assert (=> b!777917 (=> (not res!526453) (not e!432824))))

(assert (=> b!777917 (= res!526453 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20779 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20779 a!3186))))))

(declare-fun b!777918 () Bool)

(assert (=> b!777918 (= e!432829 (not e!432826))))

(declare-fun res!526446 () Bool)

(assert (=> b!777918 (=> res!526446 e!432826)))

(assert (=> b!777918 (= res!526446 (or (not (is-Intermediate!7965 lt!346599)) (bvslt x!1131 (x!65198 lt!346599)) (not (= x!1131 (x!65198 lt!346599))) (not (= index!1321 (index!34229 lt!346599)))))))

(assert (=> b!777918 (= lt!346606 (Found!7965 j!159))))

(declare-fun e!432827 () Bool)

(assert (=> b!777918 e!432827))

(declare-fun res!526457 () Bool)

(assert (=> b!777918 (=> (not res!526457) (not e!432827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42535 (_ BitVec 32)) Bool)

(assert (=> b!777918 (= res!526457 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26824 0))(
  ( (Unit!26825) )
))
(declare-fun lt!346602 () Unit!26824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26824)

(assert (=> b!777918 (= lt!346602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777919 () Bool)

(declare-fun lt!346603 () SeekEntryResult!7965)

(assert (=> b!777919 (= e!432826 (or (not (= lt!346603 (Found!7965 index!1321))) (= lt!346603 lt!346606)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42535 (_ BitVec 32)) SeekEntryResult!7965)

(assert (=> b!777919 (= lt!346603 (seekEntryOrOpen!0 lt!346604 lt!346605 mask!3328))))

(declare-fun b!777920 () Bool)

(declare-fun res!526450 () Bool)

(assert (=> b!777920 (=> (not res!526450) (not e!432822))))

(assert (=> b!777920 (= res!526450 (validKeyInArray!0 k!2102))))

(declare-fun b!777921 () Bool)

(declare-fun res!526449 () Bool)

(assert (=> b!777921 (=> (not res!526449) (not e!432823))))

(assert (=> b!777921 (= res!526449 e!432821)))

(declare-fun c!86133 () Bool)

(assert (=> b!777921 (= c!86133 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777922 () Bool)

(declare-fun res!526461 () Bool)

(assert (=> b!777922 (=> res!526461 e!432826)))

(assert (=> b!777922 (= res!526461 (or (not (= (select (store (arr!20358 a!3186) i!1173 k!2102) index!1321) lt!346604)) (undefined!8777 lt!346599)))))

(declare-fun b!777923 () Bool)

(declare-fun lt!346600 () SeekEntryResult!7965)

(declare-fun e!432825 () Bool)

(assert (=> b!777923 (= e!432825 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346600))))

(declare-fun b!777924 () Bool)

(assert (=> b!777924 (= e!432827 e!432825)))

(declare-fun res!526447 () Bool)

(assert (=> b!777924 (=> (not res!526447) (not e!432825))))

(assert (=> b!777924 (= res!526447 (= (seekEntryOrOpen!0 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346600))))

(assert (=> b!777924 (= lt!346600 (Found!7965 j!159))))

(declare-fun b!777925 () Bool)

(declare-fun res!526458 () Bool)

(assert (=> b!777925 (=> (not res!526458) (not e!432824))))

(assert (=> b!777925 (= res!526458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777926 () Bool)

(assert (=> b!777926 (= e!432822 e!432824)))

(declare-fun res!526460 () Bool)

(assert (=> b!777926 (=> (not res!526460) (not e!432824))))

(declare-fun lt!346597 () SeekEntryResult!7965)

(assert (=> b!777926 (= res!526460 (or (= lt!346597 (MissingZero!7965 i!1173)) (= lt!346597 (MissingVacant!7965 i!1173))))))

(assert (=> b!777926 (= lt!346597 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!777927 () Bool)

(declare-fun res!526456 () Bool)

(assert (=> b!777927 (=> (not res!526456) (not e!432822))))

(declare-fun arrayContainsKey!0 (array!42535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777927 (= res!526456 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67288 res!526455) b!777910))

(assert (= (and b!777910 res!526451) b!777912))

(assert (= (and b!777912 res!526459) b!777920))

(assert (= (and b!777920 res!526450) b!777927))

(assert (= (and b!777927 res!526456) b!777926))

(assert (= (and b!777926 res!526460) b!777925))

(assert (= (and b!777925 res!526458) b!777911))

(assert (= (and b!777911 res!526448) b!777917))

(assert (= (and b!777917 res!526453) b!777916))

(assert (= (and b!777916 res!526454) b!777909))

(assert (= (and b!777909 res!526462) b!777921))

(assert (= (and b!777921 c!86133) b!777913))

(assert (= (and b!777921 (not c!86133)) b!777915))

(assert (= (and b!777921 res!526449) b!777914))

(assert (= (and b!777914 res!526445) b!777918))

(assert (= (and b!777918 res!526457) b!777924))

(assert (= (and b!777924 res!526447) b!777923))

(assert (= (and b!777918 (not res!526446)) b!777908))

(assert (= (and b!777908 (not res!526452)) b!777922))

(assert (= (and b!777922 (not res!526461)) b!777919))

(declare-fun m!721753 () Bool)

(assert (=> b!777926 m!721753))

(declare-fun m!721755 () Bool)

(assert (=> b!777914 m!721755))

(assert (=> b!777914 m!721755))

(declare-fun m!721757 () Bool)

(assert (=> b!777914 m!721757))

(declare-fun m!721759 () Bool)

(assert (=> b!777914 m!721759))

(declare-fun m!721761 () Bool)

(assert (=> b!777914 m!721761))

(declare-fun m!721763 () Bool)

(assert (=> b!777914 m!721763))

(declare-fun m!721765 () Bool)

(assert (=> b!777920 m!721765))

(declare-fun m!721767 () Bool)

(assert (=> b!777916 m!721767))

(assert (=> b!777916 m!721767))

(declare-fun m!721769 () Bool)

(assert (=> b!777916 m!721769))

(assert (=> b!777916 m!721769))

(assert (=> b!777916 m!721767))

(declare-fun m!721771 () Bool)

(assert (=> b!777916 m!721771))

(assert (=> b!777913 m!721767))

(assert (=> b!777913 m!721767))

(declare-fun m!721773 () Bool)

(assert (=> b!777913 m!721773))

(assert (=> b!777923 m!721767))

(assert (=> b!777923 m!721767))

(declare-fun m!721775 () Bool)

(assert (=> b!777923 m!721775))

(declare-fun m!721777 () Bool)

(assert (=> b!777919 m!721777))

(assert (=> b!777908 m!721767))

(assert (=> b!777908 m!721767))

(declare-fun m!721779 () Bool)

(assert (=> b!777908 m!721779))

(declare-fun m!721781 () Bool)

(assert (=> b!777927 m!721781))

(declare-fun m!721783 () Bool)

(assert (=> start!67288 m!721783))

(declare-fun m!721785 () Bool)

(assert (=> start!67288 m!721785))

(assert (=> b!777912 m!721767))

(assert (=> b!777912 m!721767))

(declare-fun m!721787 () Bool)

(assert (=> b!777912 m!721787))

(declare-fun m!721789 () Bool)

(assert (=> b!777911 m!721789))

(declare-fun m!721791 () Bool)

(assert (=> b!777909 m!721791))

(declare-fun m!721793 () Bool)

(assert (=> b!777925 m!721793))

(declare-fun m!721795 () Bool)

(assert (=> b!777918 m!721795))

(declare-fun m!721797 () Bool)

(assert (=> b!777918 m!721797))

(assert (=> b!777922 m!721759))

(declare-fun m!721799 () Bool)

(assert (=> b!777922 m!721799))

(assert (=> b!777915 m!721767))

(assert (=> b!777915 m!721767))

(assert (=> b!777915 m!721779))

(assert (=> b!777924 m!721767))

(assert (=> b!777924 m!721767))

(declare-fun m!721801 () Bool)

(assert (=> b!777924 m!721801))

(push 1)

(assert (not b!777916))

(assert (not b!777915))

(assert (not b!777919))

(assert (not b!777913))

(assert (not b!777924))

(assert (not b!777927))

(assert (not b!777920))

(assert (not start!67288))

(assert (not b!777918))

(assert (not b!777911))

(assert (not b!777908))

(assert (not b!777925))

(assert (not b!777914))

(assert (not b!777912))

(assert (not b!777926))

(assert (not b!777923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!102181 () Bool)

(declare-fun lt!346693 () SeekEntryResult!7965)

(assert (=> d!102181 (and (or (is-Undefined!7965 lt!346693) (not (is-Found!7965 lt!346693)) (and (bvsge (index!34228 lt!346693) #b00000000000000000000000000000000) (bvslt (index!34228 lt!346693) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346693) (is-Found!7965 lt!346693) (not (is-MissingZero!7965 lt!346693)) (and (bvsge (index!34227 lt!346693) #b00000000000000000000000000000000) (bvslt (index!34227 lt!346693) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346693) (is-Found!7965 lt!346693) (is-MissingZero!7965 lt!346693) (not (is-MissingVacant!7965 lt!346693)) (and (bvsge (index!34230 lt!346693) #b00000000000000000000000000000000) (bvslt (index!34230 lt!346693) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346693) (ite (is-Found!7965 lt!346693) (= (select (arr!20358 a!3186) (index!34228 lt!346693)) (select (arr!20358 a!3186) j!159)) (ite (is-MissingZero!7965 lt!346693) (= (select (arr!20358 a!3186) (index!34227 lt!346693)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7965 lt!346693) (= (select (arr!20358 a!3186) (index!34230 lt!346693)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!432915 () SeekEntryResult!7965)

(assert (=> d!102181 (= lt!346693 e!432915)))

(declare-fun c!86158 () Bool)

(declare-fun lt!346691 () SeekEntryResult!7965)

(assert (=> d!102181 (= c!86158 (and (is-Intermediate!7965 lt!346691) (undefined!8777 lt!346691)))))

(assert (=> d!102181 (= lt!346691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102181 (validMask!0 mask!3328)))

(assert (=> d!102181 (= (seekEntryOrOpen!0 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346693)))

(declare-fun b!778099 () Bool)

(declare-fun e!432916 () SeekEntryResult!7965)

(assert (=> b!778099 (= e!432916 (MissingZero!7965 (index!34229 lt!346691)))))

(declare-fun b!778100 () Bool)

(assert (=> b!778100 (= e!432915 Undefined!7965)))

(declare-fun b!778101 () Bool)

(declare-fun e!432914 () SeekEntryResult!7965)

(assert (=> b!778101 (= e!432914 (Found!7965 (index!34229 lt!346691)))))

(declare-fun b!778102 () Bool)

(assert (=> b!778102 (= e!432916 (seekKeyOrZeroReturnVacant!0 (x!65198 lt!346691) (index!34229 lt!346691) (index!34229 lt!346691) (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778103 () Bool)

(declare-fun c!86159 () Bool)

(declare-fun lt!346692 () (_ BitVec 64))

(assert (=> b!778103 (= c!86159 (= lt!346692 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778103 (= e!432914 e!432916)))

(declare-fun b!778104 () Bool)

(assert (=> b!778104 (= e!432915 e!432914)))

(assert (=> b!778104 (= lt!346692 (select (arr!20358 a!3186) (index!34229 lt!346691)))))

(declare-fun c!86160 () Bool)

(assert (=> b!778104 (= c!86160 (= lt!346692 (select (arr!20358 a!3186) j!159)))))

(assert (= (and d!102181 c!86158) b!778100))

(assert (= (and d!102181 (not c!86158)) b!778104))

(assert (= (and b!778104 c!86160) b!778101))

(assert (= (and b!778104 (not c!86160)) b!778103))

(assert (= (and b!778103 c!86159) b!778099))

(assert (= (and b!778103 (not c!86159)) b!778102))

(declare-fun m!721919 () Bool)

(assert (=> d!102181 m!721919))

(declare-fun m!721921 () Bool)

(assert (=> d!102181 m!721921))

(assert (=> d!102181 m!721783))

(assert (=> d!102181 m!721769))

(assert (=> d!102181 m!721767))

(assert (=> d!102181 m!721771))

(assert (=> d!102181 m!721767))

(assert (=> d!102181 m!721769))

(declare-fun m!721923 () Bool)

(assert (=> d!102181 m!721923))

(assert (=> b!778102 m!721767))

(declare-fun m!721925 () Bool)

(assert (=> b!778102 m!721925))

(declare-fun m!721927 () Bool)

(assert (=> b!778104 m!721927))

(assert (=> b!777924 d!102181))

(declare-fun b!778187 () Bool)

(declare-fun e!432969 () Bool)

(declare-fun lt!346717 () SeekEntryResult!7965)

(assert (=> b!778187 (= e!432969 (bvsge (x!65198 lt!346717) #b01111111111111111111111111111110))))

(declare-fun b!778188 () Bool)

(declare-fun e!432967 () SeekEntryResult!7965)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778188 (= e!432967 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778189 () Bool)

(declare-fun e!432968 () SeekEntryResult!7965)

(assert (=> b!778189 (= e!432968 (Intermediate!7965 true index!1321 x!1131))))

(declare-fun b!778190 () Bool)

(assert (=> b!778190 (and (bvsge (index!34229 lt!346717) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346717) (size!20779 a!3186)))))

(declare-fun res!526619 () Bool)

(assert (=> b!778190 (= res!526619 (= (select (arr!20358 a!3186) (index!34229 lt!346717)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432971 () Bool)

(assert (=> b!778190 (=> res!526619 e!432971)))

(declare-fun b!778191 () Bool)

(assert (=> b!778191 (= e!432967 (Intermediate!7965 false index!1321 x!1131))))

(declare-fun d!102197 () Bool)

(assert (=> d!102197 e!432969))

(declare-fun c!86188 () Bool)

(assert (=> d!102197 (= c!86188 (and (is-Intermediate!7965 lt!346717) (undefined!8777 lt!346717)))))

(assert (=> d!102197 (= lt!346717 e!432968)))

(declare-fun c!86187 () Bool)

(assert (=> d!102197 (= c!86187 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346718 () (_ BitVec 64))

(assert (=> d!102197 (= lt!346718 (select (arr!20358 a!3186) index!1321))))

(assert (=> d!102197 (validMask!0 mask!3328)))

(assert (=> d!102197 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346717)))

(declare-fun b!778192 () Bool)

(declare-fun e!432970 () Bool)

(assert (=> b!778192 (= e!432969 e!432970)))

(declare-fun res!526620 () Bool)

(assert (=> b!778192 (= res!526620 (and (is-Intermediate!7965 lt!346717) (not (undefined!8777 lt!346717)) (bvslt (x!65198 lt!346717) #b01111111111111111111111111111110) (bvsge (x!65198 lt!346717) #b00000000000000000000000000000000) (bvsge (x!65198 lt!346717) x!1131)))))

(assert (=> b!778192 (=> (not res!526620) (not e!432970))))

(declare-fun b!778193 () Bool)

(assert (=> b!778193 (and (bvsge (index!34229 lt!346717) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346717) (size!20779 a!3186)))))

(declare-fun res!526621 () Bool)

(assert (=> b!778193 (= res!526621 (= (select (arr!20358 a!3186) (index!34229 lt!346717)) (select (arr!20358 a!3186) j!159)))))

(assert (=> b!778193 (=> res!526621 e!432971)))

(assert (=> b!778193 (= e!432970 e!432971)))

(declare-fun b!778194 () Bool)

(assert (=> b!778194 (and (bvsge (index!34229 lt!346717) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346717) (size!20779 a!3186)))))

(assert (=> b!778194 (= e!432971 (= (select (arr!20358 a!3186) (index!34229 lt!346717)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778195 () Bool)

(assert (=> b!778195 (= e!432968 e!432967)))

(declare-fun c!86186 () Bool)

(assert (=> b!778195 (= c!86186 (or (= lt!346718 (select (arr!20358 a!3186) j!159)) (= (bvadd lt!346718 lt!346718) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102197 c!86187) b!778189))

(assert (= (and d!102197 (not c!86187)) b!778195))

(assert (= (and b!778195 c!86186) b!778191))

(assert (= (and b!778195 (not c!86186)) b!778188))

(assert (= (and d!102197 c!86188) b!778187))

(assert (= (and d!102197 (not c!86188)) b!778192))

(assert (= (and b!778192 res!526620) b!778193))

(assert (= (and b!778193 (not res!526621)) b!778190))

(assert (= (and b!778190 (not res!526619)) b!778194))

(declare-fun m!721967 () Bool)

(assert (=> b!778193 m!721967))

(assert (=> b!778190 m!721967))

(declare-fun m!721969 () Bool)

(assert (=> b!778188 m!721969))

(assert (=> b!778188 m!721969))

(assert (=> b!778188 m!721767))

(declare-fun m!721971 () Bool)

(assert (=> b!778188 m!721971))

(assert (=> b!778194 m!721967))

(declare-fun m!721973 () Bool)

(assert (=> d!102197 m!721973))

(assert (=> d!102197 m!721783))

(assert (=> b!777913 d!102197))

(declare-fun d!102211 () Bool)

(assert (=> d!102211 (= (validKeyInArray!0 (select (arr!20358 a!3186) j!159)) (and (not (= (select (arr!20358 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20358 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!777912 d!102211))

(declare-fun d!102213 () Bool)

(assert (=> d!102213 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67288 d!102213))

(declare-fun d!102219 () Bool)

(assert (=> d!102219 (= (array_inv!16132 a!3186) (bvsge (size!20779 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67288 d!102219))

(declare-fun b!778274 () Bool)

(declare-fun e!433012 () SeekEntryResult!7965)

(assert (=> b!778274 (= e!433012 (Found!7965 resIntermediateIndex!5))))

(declare-fun lt!346756 () SeekEntryResult!7965)

(declare-fun d!102221 () Bool)

(assert (=> d!102221 (and (or (is-Undefined!7965 lt!346756) (not (is-Found!7965 lt!346756)) (and (bvsge (index!34228 lt!346756) #b00000000000000000000000000000000) (bvslt (index!34228 lt!346756) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346756) (is-Found!7965 lt!346756) (not (is-MissingVacant!7965 lt!346756)) (not (= (index!34230 lt!346756) resIntermediateIndex!5)) (and (bvsge (index!34230 lt!346756) #b00000000000000000000000000000000) (bvslt (index!34230 lt!346756) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346756) (ite (is-Found!7965 lt!346756) (= (select (arr!20358 a!3186) (index!34228 lt!346756)) (select (arr!20358 a!3186) j!159)) (and (is-MissingVacant!7965 lt!346756) (= (index!34230 lt!346756) resIntermediateIndex!5) (= (select (arr!20358 a!3186) (index!34230 lt!346756)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!433014 () SeekEntryResult!7965)

(assert (=> d!102221 (= lt!346756 e!433014)))

(declare-fun c!86227 () Bool)

(assert (=> d!102221 (= c!86227 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!346757 () (_ BitVec 64))

(assert (=> d!102221 (= lt!346757 (select (arr!20358 a!3186) resIntermediateIndex!5))))

(assert (=> d!102221 (validMask!0 mask!3328)))

(assert (=> d!102221 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346756)))

(declare-fun b!778275 () Bool)

(declare-fun e!433013 () SeekEntryResult!7965)

(assert (=> b!778275 (= e!433013 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778276 () Bool)

(assert (=> b!778276 (= e!433014 Undefined!7965)))

(declare-fun b!778277 () Bool)

(assert (=> b!778277 (= e!433014 e!433012)))

(declare-fun c!86225 () Bool)

(assert (=> b!778277 (= c!86225 (= lt!346757 (select (arr!20358 a!3186) j!159)))))

(declare-fun b!778278 () Bool)

(declare-fun c!86226 () Bool)

(assert (=> b!778278 (= c!86226 (= lt!346757 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778278 (= e!433012 e!433013)))

(declare-fun b!778279 () Bool)

(assert (=> b!778279 (= e!433013 (MissingVacant!7965 resIntermediateIndex!5))))

(assert (= (and d!102221 c!86227) b!778276))

(assert (= (and d!102221 (not c!86227)) b!778277))

(assert (= (and b!778277 c!86225) b!778274))

(assert (= (and b!778277 (not c!86225)) b!778278))

(assert (= (and b!778278 c!86226) b!778279))

(assert (= (and b!778278 (not c!86226)) b!778275))

(declare-fun m!722007 () Bool)

(assert (=> d!102221 m!722007))

(declare-fun m!722009 () Bool)

(assert (=> d!102221 m!722009))

(assert (=> d!102221 m!721791))

(assert (=> d!102221 m!721783))

(declare-fun m!722011 () Bool)

(assert (=> b!778275 m!722011))

(assert (=> b!778275 m!722011))

(assert (=> b!778275 m!721767))

(declare-fun m!722013 () Bool)

(assert (=> b!778275 m!722013))

(assert (=> b!777923 d!102221))

(declare-fun b!778280 () Bool)

(declare-fun e!433017 () Bool)

(declare-fun lt!346758 () SeekEntryResult!7965)

(assert (=> b!778280 (= e!433017 (bvsge (x!65198 lt!346758) #b01111111111111111111111111111110))))

(declare-fun e!433015 () SeekEntryResult!7965)

(declare-fun b!778281 () Bool)

(assert (=> b!778281 (= e!433015 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!433016 () SeekEntryResult!7965)

(declare-fun b!778282 () Bool)

(assert (=> b!778282 (= e!433016 (Intermediate!7965 true (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778283 () Bool)

(assert (=> b!778283 (and (bvsge (index!34229 lt!346758) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346758) (size!20779 a!3186)))))

(declare-fun res!526629 () Bool)

(assert (=> b!778283 (= res!526629 (= (select (arr!20358 a!3186) (index!34229 lt!346758)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433019 () Bool)

(assert (=> b!778283 (=> res!526629 e!433019)))

(declare-fun b!778284 () Bool)

(assert (=> b!778284 (= e!433015 (Intermediate!7965 false (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102231 () Bool)

(assert (=> d!102231 e!433017))

(declare-fun c!86230 () Bool)

(assert (=> d!102231 (= c!86230 (and (is-Intermediate!7965 lt!346758) (undefined!8777 lt!346758)))))

(assert (=> d!102231 (= lt!346758 e!433016)))

(declare-fun c!86229 () Bool)

(assert (=> d!102231 (= c!86229 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!346759 () (_ BitVec 64))

(assert (=> d!102231 (= lt!346759 (select (arr!20358 a!3186) (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328)))))

(assert (=> d!102231 (validMask!0 mask!3328)))

(assert (=> d!102231 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346758)))

(declare-fun b!778285 () Bool)

(declare-fun e!433018 () Bool)

(assert (=> b!778285 (= e!433017 e!433018)))

(declare-fun res!526630 () Bool)

(assert (=> b!778285 (= res!526630 (and (is-Intermediate!7965 lt!346758) (not (undefined!8777 lt!346758)) (bvslt (x!65198 lt!346758) #b01111111111111111111111111111110) (bvsge (x!65198 lt!346758) #b00000000000000000000000000000000) (bvsge (x!65198 lt!346758) #b00000000000000000000000000000000)))))

(assert (=> b!778285 (=> (not res!526630) (not e!433018))))

(declare-fun b!778286 () Bool)

(assert (=> b!778286 (and (bvsge (index!34229 lt!346758) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346758) (size!20779 a!3186)))))

(declare-fun res!526631 () Bool)

(assert (=> b!778286 (= res!526631 (= (select (arr!20358 a!3186) (index!34229 lt!346758)) (select (arr!20358 a!3186) j!159)))))

(assert (=> b!778286 (=> res!526631 e!433019)))

(assert (=> b!778286 (= e!433018 e!433019)))

(declare-fun b!778287 () Bool)

(assert (=> b!778287 (and (bvsge (index!34229 lt!346758) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346758) (size!20779 a!3186)))))

(assert (=> b!778287 (= e!433019 (= (select (arr!20358 a!3186) (index!34229 lt!346758)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778288 () Bool)

(assert (=> b!778288 (= e!433016 e!433015)))

(declare-fun c!86228 () Bool)

(assert (=> b!778288 (= c!86228 (or (= lt!346759 (select (arr!20358 a!3186) j!159)) (= (bvadd lt!346759 lt!346759) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102231 c!86229) b!778282))

(assert (= (and d!102231 (not c!86229)) b!778288))

(assert (= (and b!778288 c!86228) b!778284))

(assert (= (and b!778288 (not c!86228)) b!778281))

(assert (= (and d!102231 c!86230) b!778280))

(assert (= (and d!102231 (not c!86230)) b!778285))

(assert (= (and b!778285 res!526630) b!778286))

(assert (= (and b!778286 (not res!526631)) b!778283))

(assert (= (and b!778283 (not res!526629)) b!778287))

(declare-fun m!722015 () Bool)

(assert (=> b!778286 m!722015))

(assert (=> b!778283 m!722015))

(assert (=> b!778281 m!721769))

(declare-fun m!722017 () Bool)

(assert (=> b!778281 m!722017))

(assert (=> b!778281 m!722017))

(assert (=> b!778281 m!721767))

(declare-fun m!722019 () Bool)

(assert (=> b!778281 m!722019))

(assert (=> b!778287 m!722015))

(assert (=> d!102231 m!721769))

(declare-fun m!722021 () Bool)

(assert (=> d!102231 m!722021))

(assert (=> d!102231 m!721783))

(assert (=> b!777916 d!102231))

(declare-fun d!102233 () Bool)

(declare-fun lt!346768 () (_ BitVec 32))

(declare-fun lt!346767 () (_ BitVec 32))

(assert (=> d!102233 (= lt!346768 (bvmul (bvxor lt!346767 (bvlshr lt!346767 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102233 (= lt!346767 ((_ extract 31 0) (bvand (bvxor (select (arr!20358 a!3186) j!159) (bvlshr (select (arr!20358 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102233 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526632 (let ((h!15525 ((_ extract 31 0) (bvand (bvxor (select (arr!20358 a!3186) j!159) (bvlshr (select (arr!20358 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65208 (bvmul (bvxor h!15525 (bvlshr h!15525 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65208 (bvlshr x!65208 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526632 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526632 #b00000000000000000000000000000000))))))

(assert (=> d!102233 (= (toIndex!0 (select (arr!20358 a!3186) j!159) mask!3328) (bvand (bvxor lt!346768 (bvlshr lt!346768 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!777916 d!102233))

(declare-fun d!102239 () Bool)

(declare-fun res!526652 () Bool)

(declare-fun e!433045 () Bool)

(assert (=> d!102239 (=> res!526652 e!433045)))

(assert (=> d!102239 (= res!526652 (= (select (arr!20358 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102239 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!433045)))

(declare-fun b!778320 () Bool)

(declare-fun e!433046 () Bool)

(assert (=> b!778320 (= e!433045 e!433046)))

(declare-fun res!526653 () Bool)

(assert (=> b!778320 (=> (not res!526653) (not e!433046))))

(assert (=> b!778320 (= res!526653 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20779 a!3186)))))

(declare-fun b!778321 () Bool)

(assert (=> b!778321 (= e!433046 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102239 (not res!526652)) b!778320))

(assert (= (and b!778320 res!526653) b!778321))

(declare-fun m!722043 () Bool)

(assert (=> d!102239 m!722043))

(declare-fun m!722045 () Bool)

(assert (=> b!778321 m!722045))

(assert (=> b!777927 d!102239))

(declare-fun d!102245 () Bool)

(declare-fun lt!346771 () SeekEntryResult!7965)

(assert (=> d!102245 (and (or (is-Undefined!7965 lt!346771) (not (is-Found!7965 lt!346771)) (and (bvsge (index!34228 lt!346771) #b00000000000000000000000000000000) (bvslt (index!34228 lt!346771) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346771) (is-Found!7965 lt!346771) (not (is-MissingZero!7965 lt!346771)) (and (bvsge (index!34227 lt!346771) #b00000000000000000000000000000000) (bvslt (index!34227 lt!346771) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346771) (is-Found!7965 lt!346771) (is-MissingZero!7965 lt!346771) (not (is-MissingVacant!7965 lt!346771)) (and (bvsge (index!34230 lt!346771) #b00000000000000000000000000000000) (bvslt (index!34230 lt!346771) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346771) (ite (is-Found!7965 lt!346771) (= (select (arr!20358 a!3186) (index!34228 lt!346771)) k!2102) (ite (is-MissingZero!7965 lt!346771) (= (select (arr!20358 a!3186) (index!34227 lt!346771)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7965 lt!346771) (= (select (arr!20358 a!3186) (index!34230 lt!346771)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433048 () SeekEntryResult!7965)

(assert (=> d!102245 (= lt!346771 e!433048)))

(declare-fun c!86237 () Bool)

(declare-fun lt!346769 () SeekEntryResult!7965)

(assert (=> d!102245 (= c!86237 (and (is-Intermediate!7965 lt!346769) (undefined!8777 lt!346769)))))

(assert (=> d!102245 (= lt!346769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102245 (validMask!0 mask!3328)))

(assert (=> d!102245 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!346771)))

(declare-fun b!778322 () Bool)

(declare-fun e!433049 () SeekEntryResult!7965)

(assert (=> b!778322 (= e!433049 (MissingZero!7965 (index!34229 lt!346769)))))

(declare-fun b!778323 () Bool)

(assert (=> b!778323 (= e!433048 Undefined!7965)))

(declare-fun b!778324 () Bool)

(declare-fun e!433047 () SeekEntryResult!7965)

(assert (=> b!778324 (= e!433047 (Found!7965 (index!34229 lt!346769)))))

(declare-fun b!778325 () Bool)

(assert (=> b!778325 (= e!433049 (seekKeyOrZeroReturnVacant!0 (x!65198 lt!346769) (index!34229 lt!346769) (index!34229 lt!346769) k!2102 a!3186 mask!3328))))

(declare-fun b!778326 () Bool)

(declare-fun c!86238 () Bool)

(declare-fun lt!346770 () (_ BitVec 64))

(assert (=> b!778326 (= c!86238 (= lt!346770 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778326 (= e!433047 e!433049)))

(declare-fun b!778327 () Bool)

(assert (=> b!778327 (= e!433048 e!433047)))

(assert (=> b!778327 (= lt!346770 (select (arr!20358 a!3186) (index!34229 lt!346769)))))

(declare-fun c!86239 () Bool)

(assert (=> b!778327 (= c!86239 (= lt!346770 k!2102))))

(assert (= (and d!102245 c!86237) b!778323))

(assert (= (and d!102245 (not c!86237)) b!778327))

(assert (= (and b!778327 c!86239) b!778324))

(assert (= (and b!778327 (not c!86239)) b!778326))

(assert (= (and b!778326 c!86238) b!778322))

(assert (= (and b!778326 (not c!86238)) b!778325))

(declare-fun m!722047 () Bool)

(assert (=> d!102245 m!722047))

(declare-fun m!722049 () Bool)

(assert (=> d!102245 m!722049))

(assert (=> d!102245 m!721783))

(declare-fun m!722051 () Bool)

(assert (=> d!102245 m!722051))

(declare-fun m!722053 () Bool)

(assert (=> d!102245 m!722053))

(assert (=> d!102245 m!722051))

(declare-fun m!722055 () Bool)

(assert (=> d!102245 m!722055))

(declare-fun m!722057 () Bool)

(assert (=> b!778325 m!722057))

(declare-fun m!722059 () Bool)

(assert (=> b!778327 m!722059))

(assert (=> b!777926 d!102245))

(declare-fun b!778328 () Bool)

(declare-fun e!433050 () SeekEntryResult!7965)

(assert (=> b!778328 (= e!433050 (Found!7965 index!1321))))

(declare-fun d!102247 () Bool)

(declare-fun lt!346772 () SeekEntryResult!7965)

(assert (=> d!102247 (and (or (is-Undefined!7965 lt!346772) (not (is-Found!7965 lt!346772)) (and (bvsge (index!34228 lt!346772) #b00000000000000000000000000000000) (bvslt (index!34228 lt!346772) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346772) (is-Found!7965 lt!346772) (not (is-MissingVacant!7965 lt!346772)) (not (= (index!34230 lt!346772) resIntermediateIndex!5)) (and (bvsge (index!34230 lt!346772) #b00000000000000000000000000000000) (bvslt (index!34230 lt!346772) (size!20779 a!3186)))) (or (is-Undefined!7965 lt!346772) (ite (is-Found!7965 lt!346772) (= (select (arr!20358 a!3186) (index!34228 lt!346772)) (select (arr!20358 a!3186) j!159)) (and (is-MissingVacant!7965 lt!346772) (= (index!34230 lt!346772) resIntermediateIndex!5) (= (select (arr!20358 a!3186) (index!34230 lt!346772)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!433052 () SeekEntryResult!7965)

(assert (=> d!102247 (= lt!346772 e!433052)))

(declare-fun c!86242 () Bool)

(assert (=> d!102247 (= c!86242 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346773 () (_ BitVec 64))

(assert (=> d!102247 (= lt!346773 (select (arr!20358 a!3186) index!1321))))

(assert (=> d!102247 (validMask!0 mask!3328)))

(assert (=> d!102247 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) lt!346772)))

(declare-fun b!778329 () Bool)

(declare-fun e!433051 () SeekEntryResult!7965)

(assert (=> b!778329 (= e!433051 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20358 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778330 () Bool)

(assert (=> b!778330 (= e!433052 Undefined!7965)))

(declare-fun b!778331 () Bool)

(assert (=> b!778331 (= e!433052 e!433050)))

(declare-fun c!86240 () Bool)

(assert (=> b!778331 (= c!86240 (= lt!346773 (select (arr!20358 a!3186) j!159)))))

(declare-fun b!778332 () Bool)

(declare-fun c!86241 () Bool)

(assert (=> b!778332 (= c!86241 (= lt!346773 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778332 (= e!433050 e!433051)))

(declare-fun b!778333 () Bool)

(assert (=> b!778333 (= e!433051 (MissingVacant!7965 resIntermediateIndex!5))))

(assert (= (and d!102247 c!86242) b!778330))

(assert (= (and d!102247 (not c!86242)) b!778331))

(assert (= (and b!778331 c!86240) b!778328))

(assert (= (and b!778331 (not c!86240)) b!778332))

(assert (= (and b!778332 c!86241) b!778333))

(assert (= (and b!778332 (not c!86241)) b!778329))

(declare-fun m!722061 () Bool)

(assert (=> d!102247 m!722061))

(declare-fun m!722063 () Bool)

(assert (=> d!102247 m!722063))

(assert (=> d!102247 m!721973))

(assert (=> d!102247 m!721783))

(assert (=> b!778329 m!721969))

(assert (=> b!778329 m!721969))

(assert (=> b!778329 m!721767))

(declare-fun m!722065 () Bool)

(assert (=> b!778329 m!722065))

(assert (=> b!777915 d!102247))

(declare-fun b!778334 () Bool)

(declare-fun e!433055 () Bool)

(declare-fun lt!346774 () SeekEntryResult!7965)

(assert (=> b!778334 (= e!433055 (bvsge (x!65198 lt!346774) #b01111111111111111111111111111110))))

(declare-fun b!778335 () Bool)

(declare-fun e!433053 () SeekEntryResult!7965)

(assert (=> b!778335 (= e!433053 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!346604 lt!346605 mask!3328))))

(declare-fun b!778336 () Bool)

(declare-fun e!433054 () SeekEntryResult!7965)

(assert (=> b!778336 (= e!433054 (Intermediate!7965 true index!1321 x!1131))))

(declare-fun b!778337 () Bool)

(assert (=> b!778337 (and (bvsge (index!34229 lt!346774) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346774) (size!20779 lt!346605)))))

(declare-fun res!526654 () Bool)

(assert (=> b!778337 (= res!526654 (= (select (arr!20358 lt!346605) (index!34229 lt!346774)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433057 () Bool)

(assert (=> b!778337 (=> res!526654 e!433057)))

(declare-fun b!778338 () Bool)

(assert (=> b!778338 (= e!433053 (Intermediate!7965 false index!1321 x!1131))))

(declare-fun d!102249 () Bool)

(assert (=> d!102249 e!433055))

(declare-fun c!86245 () Bool)

(assert (=> d!102249 (= c!86245 (and (is-Intermediate!7965 lt!346774) (undefined!8777 lt!346774)))))

(assert (=> d!102249 (= lt!346774 e!433054)))

(declare-fun c!86244 () Bool)

(assert (=> d!102249 (= c!86244 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346775 () (_ BitVec 64))

(assert (=> d!102249 (= lt!346775 (select (arr!20358 lt!346605) index!1321))))

(assert (=> d!102249 (validMask!0 mask!3328)))

(assert (=> d!102249 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346604 lt!346605 mask!3328) lt!346774)))

(declare-fun b!778339 () Bool)

(declare-fun e!433056 () Bool)

(assert (=> b!778339 (= e!433055 e!433056)))

(declare-fun res!526655 () Bool)

(assert (=> b!778339 (= res!526655 (and (is-Intermediate!7965 lt!346774) (not (undefined!8777 lt!346774)) (bvslt (x!65198 lt!346774) #b01111111111111111111111111111110) (bvsge (x!65198 lt!346774) #b00000000000000000000000000000000) (bvsge (x!65198 lt!346774) x!1131)))))

(assert (=> b!778339 (=> (not res!526655) (not e!433056))))

(declare-fun b!778340 () Bool)

(assert (=> b!778340 (and (bvsge (index!34229 lt!346774) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346774) (size!20779 lt!346605)))))

(declare-fun res!526656 () Bool)

(assert (=> b!778340 (= res!526656 (= (select (arr!20358 lt!346605) (index!34229 lt!346774)) lt!346604))))

(assert (=> b!778340 (=> res!526656 e!433057)))

(assert (=> b!778340 (= e!433056 e!433057)))

(declare-fun b!778341 () Bool)

(assert (=> b!778341 (and (bvsge (index!34229 lt!346774) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346774) (size!20779 lt!346605)))))

(assert (=> b!778341 (= e!433057 (= (select (arr!20358 lt!346605) (index!34229 lt!346774)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778342 () Bool)

(assert (=> b!778342 (= e!433054 e!433053)))

(declare-fun c!86243 () Bool)

(assert (=> b!778342 (= c!86243 (or (= lt!346775 lt!346604) (= (bvadd lt!346775 lt!346775) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102249 c!86244) b!778336))

(assert (= (and d!102249 (not c!86244)) b!778342))

(assert (= (and b!778342 c!86243) b!778338))

(assert (= (and b!778342 (not c!86243)) b!778335))

(assert (= (and d!102249 c!86245) b!778334))

(assert (= (and d!102249 (not c!86245)) b!778339))

(assert (= (and b!778339 res!526655) b!778340))

(assert (= (and b!778340 (not res!526656)) b!778337))

(assert (= (and b!778337 (not res!526654)) b!778341))

(declare-fun m!722067 () Bool)

(assert (=> b!778340 m!722067))

(assert (=> b!778337 m!722067))

(assert (=> b!778335 m!721969))

(assert (=> b!778335 m!721969))

(declare-fun m!722069 () Bool)

(assert (=> b!778335 m!722069))

(assert (=> b!778341 m!722067))

(declare-fun m!722071 () Bool)

(assert (=> d!102249 m!722071))

(assert (=> d!102249 m!721783))

(assert (=> b!777914 d!102249))

(declare-fun b!778343 () Bool)

(declare-fun e!433060 () Bool)

(declare-fun lt!346776 () SeekEntryResult!7965)

(assert (=> b!778343 (= e!433060 (bvsge (x!65198 lt!346776) #b01111111111111111111111111111110))))

(declare-fun e!433058 () SeekEntryResult!7965)

(declare-fun b!778344 () Bool)

(assert (=> b!778344 (= e!433058 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!346604 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!346604 lt!346605 mask!3328))))

(declare-fun b!778345 () Bool)

(declare-fun e!433059 () SeekEntryResult!7965)

(assert (=> b!778345 (= e!433059 (Intermediate!7965 true (toIndex!0 lt!346604 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778346 () Bool)

(assert (=> b!778346 (and (bvsge (index!34229 lt!346776) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346776) (size!20779 lt!346605)))))

(declare-fun res!526657 () Bool)

(assert (=> b!778346 (= res!526657 (= (select (arr!20358 lt!346605) (index!34229 lt!346776)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433062 () Bool)

(assert (=> b!778346 (=> res!526657 e!433062)))

(declare-fun b!778347 () Bool)

(assert (=> b!778347 (= e!433058 (Intermediate!7965 false (toIndex!0 lt!346604 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102251 () Bool)

(assert (=> d!102251 e!433060))

(declare-fun c!86248 () Bool)

(assert (=> d!102251 (= c!86248 (and (is-Intermediate!7965 lt!346776) (undefined!8777 lt!346776)))))

(assert (=> d!102251 (= lt!346776 e!433059)))

(declare-fun c!86247 () Bool)

(assert (=> d!102251 (= c!86247 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!346777 () (_ BitVec 64))

(assert (=> d!102251 (= lt!346777 (select (arr!20358 lt!346605) (toIndex!0 lt!346604 mask!3328)))))

(assert (=> d!102251 (validMask!0 mask!3328)))

(assert (=> d!102251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346604 mask!3328) lt!346604 lt!346605 mask!3328) lt!346776)))

(declare-fun b!778348 () Bool)

(declare-fun e!433061 () Bool)

(assert (=> b!778348 (= e!433060 e!433061)))

(declare-fun res!526658 () Bool)

(assert (=> b!778348 (= res!526658 (and (is-Intermediate!7965 lt!346776) (not (undefined!8777 lt!346776)) (bvslt (x!65198 lt!346776) #b01111111111111111111111111111110) (bvsge (x!65198 lt!346776) #b00000000000000000000000000000000) (bvsge (x!65198 lt!346776) #b00000000000000000000000000000000)))))

(assert (=> b!778348 (=> (not res!526658) (not e!433061))))

(declare-fun b!778349 () Bool)

(assert (=> b!778349 (and (bvsge (index!34229 lt!346776) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346776) (size!20779 lt!346605)))))

(declare-fun res!526659 () Bool)

(assert (=> b!778349 (= res!526659 (= (select (arr!20358 lt!346605) (index!34229 lt!346776)) lt!346604))))

(assert (=> b!778349 (=> res!526659 e!433062)))

(assert (=> b!778349 (= e!433061 e!433062)))

(declare-fun b!778350 () Bool)

(assert (=> b!778350 (and (bvsge (index!34229 lt!346776) #b00000000000000000000000000000000) (bvslt (index!34229 lt!346776) (size!20779 lt!346605)))))

(assert (=> b!778350 (= e!433062 (= (select (arr!20358 lt!346605) (index!34229 lt!346776)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778351 () Bool)

(assert (=> b!778351 (= e!433059 e!433058)))

(declare-fun c!86246 () Bool)

(assert (=> b!778351 (= c!86246 (or (= lt!346777 lt!346604) (= (bvadd lt!346777 lt!346777) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102251 c!86247) b!778345))

(assert (= (and d!102251 (not c!86247)) b!778351))

(assert (= (and b!778351 c!86246) b!778347))

(assert (= (and b!778351 (not c!86246)) b!778344))

(assert (= (and d!102251 c!86248) b!778343))

(assert (= (and d!102251 (not c!86248)) b!778348))

(assert (= (and b!778348 res!526658) b!778349))

(assert (= (and b!778349 (not res!526659)) b!778346))

(assert (= (and b!778346 (not res!526657)) b!778350))

(declare-fun m!722073 () Bool)

(assert (=> b!778349 m!722073))

(assert (=> b!778346 m!722073))

(assert (=> b!778344 m!721755))

(declare-fun m!722075 () Bool)

(assert (=> b!778344 m!722075))

(assert (=> b!778344 m!722075))

(declare-fun m!722077 () Bool)

(assert (=> b!778344 m!722077))

(assert (=> b!778350 m!722073))

(assert (=> d!102251 m!721755))

(declare-fun m!722079 () Bool)

(assert (=> d!102251 m!722079))

(assert (=> d!102251 m!721783))

(assert (=> b!777914 d!102251))

(declare-fun d!102253 () Bool)

(declare-fun lt!346779 () (_ BitVec 32))

(declare-fun lt!346778 () (_ BitVec 32))

(assert (=> d!102253 (= lt!346779 (bvmul (bvxor lt!346778 (bvlshr lt!346778 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102253 (= lt!346778 ((_ extract 31 0) (bvand (bvxor lt!346604 (bvlshr lt!346604 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102253 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526632 (let ((h!15525 ((_ extract 31 0) (bvand (bvxor lt!346604 (bvlshr lt!346604 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65208 (bvmul (bvxor h!15525 (bvlshr h!15525 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65208 (bvlshr x!65208 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526632 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526632 #b00000000000000000000000000000000))))))

(assert (=> d!102253 (= (toIndex!0 lt!346604 mask!3328) (bvand (bvxor lt!346779 (bvlshr lt!346779 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!777914 d!102253))

(declare-fun b!778405 () Bool)

(declare-fun e!433094 () Bool)

(declare-fun e!433093 () Bool)

(assert (=> b!778405 (= e!433094 e!433093)))

(declare-fun c!86272 () Bool)

(assert (=> b!778405 (= c!86272 (validKeyInArray!0 (select (arr!20358 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778406 () Bool)

(declare-fun e!433092 () Bool)

(assert (=> b!778406 (= e!433093 e!433092)))

(declare-fun lt!346805 () (_ BitVec 64))

(assert (=> b!778406 (= lt!346805 (select (arr!20358 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!346804 () Unit!26824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42535 (_ BitVec 64) (_ BitVec 32)) Unit!26824)

(assert (=> b!778406 (= lt!346804 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346805 #b00000000000000000000000000000000))))

(assert (=> b!778406 (arrayContainsKey!0 a!3186 lt!346805 #b00000000000000000000000000000000)))

(declare-fun lt!346806 () Unit!26824)

(assert (=> b!778406 (= lt!346806 lt!346804)))

(declare-fun res!526668 () Bool)

(assert (=> b!778406 (= res!526668 (= (seekEntryOrOpen!0 (select (arr!20358 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7965 #b00000000000000000000000000000000)))))

(assert (=> b!778406 (=> (not res!526668) (not e!433092))))

(declare-fun d!102255 () Bool)

(declare-fun res!526667 () Bool)

(assert (=> d!102255 (=> res!526667 e!433094)))

(assert (=> d!102255 (= res!526667 (bvsge #b00000000000000000000000000000000 (size!20779 a!3186)))))

(assert (=> d!102255 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!433094)))

(declare-fun b!778407 () Bool)

(declare-fun call!35206 () Bool)

(assert (=> b!778407 (= e!433092 call!35206)))

(declare-fun b!778408 () Bool)

(assert (=> b!778408 (= e!433093 call!35206)))

(declare-fun bm!35203 () Bool)

(assert (=> bm!35203 (= call!35206 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102255 (not res!526667)) b!778405))

(assert (= (and b!778405 c!86272) b!778406))

(assert (= (and b!778405 (not c!86272)) b!778408))

(assert (= (and b!778406 res!526668) b!778407))

(assert (= (or b!778407 b!778408) bm!35203))

(assert (=> b!778405 m!722043))

(assert (=> b!778405 m!722043))

(declare-fun m!722129 () Bool)

(assert (=> b!778405 m!722129))

(assert (=> b!778406 m!722043))

(declare-fun m!722131 () Bool)

(assert (=> b!778406 m!722131))

(declare-fun m!722133 () Bool)

(assert (=> b!778406 m!722133))

(assert (=> b!778406 m!722043))

(declare-fun m!722135 () Bool)

(assert (=> b!778406 m!722135))

(declare-fun m!722137 () Bool)

(assert (=> bm!35203 m!722137))

(assert (=> b!777925 d!102255))

(assert (=> b!777908 d!102247))

(declare-fun d!102273 () Bool)

(declare-fun lt!346809 () SeekEntryResult!7965)

(assert (=> d!102273 (and (or (is-Undefined!7965 lt!346809) (not (is-Found!7965 lt!346809)) (and (bvsge (index!34228 lt!346809) #b00000000000000000000000000000000) (bvslt (index!34228 lt!346809) (size!20779 lt!346605)))) (or (is-Undefined!7965 lt!346809) (is-Found!7965 lt!346809) (not (is-MissingZero!7965 lt!346809)) (and (bvsge (index!34227 lt!346809) #b00000000000000000000000000000000) (bvslt (index!34227 lt!346809) (size!20779 lt!346605)))) (or (is-Undefined!7965 lt!346809) (is-Found!7965 lt!346809) (is-MissingZero!7965 lt!346809) (not (is-MissingVacant!7965 lt!346809)) (and (bvsge (index!34230 lt!346809) #b00000000000000000000000000000000) (bvslt (index!34230 lt!346809) (size!20779 lt!346605)))) (or (is-Undefined!7965 lt!346809) (ite (is-Found!7965 lt!346809) (= (select (arr!20358 lt!346605) (index!34228 lt!346809)) lt!346604) (ite (is-MissingZero!7965 lt!346809) (= (select (arr!20358 lt!346605) (index!34227 lt!346809)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7965 lt!346809) (= (select (arr!20358 lt!346605) (index!34230 lt!346809)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433096 () SeekEntryResult!7965)

(assert (=> d!102273 (= lt!346809 e!433096)))

(declare-fun c!86273 () Bool)

(declare-fun lt!346807 () SeekEntryResult!7965)

(assert (=> d!102273 (= c!86273 (and (is-Intermediate!7965 lt!346807) (undefined!8777 lt!346807)))))

(assert (=> d!102273 (= lt!346807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346604 mask!3328) lt!346604 lt!346605 mask!3328))))

(assert (=> d!102273 (validMask!0 mask!3328)))

(assert (=> d!102273 (= (seekEntryOrOpen!0 lt!346604 lt!346605 mask!3328) lt!346809)))

(declare-fun b!778409 () Bool)

(declare-fun e!433097 () SeekEntryResult!7965)

(assert (=> b!778409 (= e!433097 (MissingZero!7965 (index!34229 lt!346807)))))

(declare-fun b!778410 () Bool)

(assert (=> b!778410 (= e!433096 Undefined!7965)))

(declare-fun b!778411 () Bool)

(declare-fun e!433095 () SeekEntryResult!7965)

(assert (=> b!778411 (= e!433095 (Found!7965 (index!34229 lt!346807)))))

(declare-fun b!778412 () Bool)

(assert (=> b!778412 (= e!433097 (seekKeyOrZeroReturnVacant!0 (x!65198 lt!346807) (index!34229 lt!346807) (index!34229 lt!346807) lt!346604 lt!346605 mask!3328))))

(declare-fun b!778413 () Bool)

(declare-fun c!86274 () Bool)

(declare-fun lt!346808 () (_ BitVec 64))

(assert (=> b!778413 (= c!86274 (= lt!346808 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778413 (= e!433095 e!433097)))

(declare-fun b!778414 () Bool)

(assert (=> b!778414 (= e!433096 e!433095)))

(assert (=> b!778414 (= lt!346808 (select (arr!20358 lt!346605) (index!34229 lt!346807)))))

(declare-fun c!86275 () Bool)

(assert (=> b!778414 (= c!86275 (= lt!346808 lt!346604))))

(assert (= (and d!102273 c!86273) b!778410))

(assert (= (and d!102273 (not c!86273)) b!778414))

(assert (= (and b!778414 c!86275) b!778411))

(assert (= (and b!778414 (not c!86275)) b!778413))

(assert (= (and b!778413 c!86274) b!778409))

(assert (= (and b!778413 (not c!86274)) b!778412))

(declare-fun m!722139 () Bool)

(assert (=> d!102273 m!722139))

(declare-fun m!722141 () Bool)

(assert (=> d!102273 m!722141))

(assert (=> d!102273 m!721783))

(assert (=> d!102273 m!721755))

(assert (=> d!102273 m!721757))

(assert (=> d!102273 m!721755))

(declare-fun m!722143 () Bool)

(assert (=> d!102273 m!722143))

(declare-fun m!722145 () Bool)

(assert (=> b!778412 m!722145))

(declare-fun m!722147 () Bool)

(assert (=> b!778414 m!722147))

(assert (=> b!777919 d!102273))

(declare-fun b!778415 () Bool)

(declare-fun e!433100 () Bool)

(declare-fun e!433099 () Bool)

(assert (=> b!778415 (= e!433100 e!433099)))

(declare-fun c!86276 () Bool)

(assert (=> b!778415 (= c!86276 (validKeyInArray!0 (select (arr!20358 a!3186) j!159)))))

(declare-fun b!778416 () Bool)

(declare-fun e!433098 () Bool)

(assert (=> b!778416 (= e!433099 e!433098)))

(declare-fun lt!346811 () (_ BitVec 64))

(assert (=> b!778416 (= lt!346811 (select (arr!20358 a!3186) j!159))))

(declare-fun lt!346810 () Unit!26824)

(assert (=> b!778416 (= lt!346810 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346811 j!159))))

(assert (=> b!778416 (arrayContainsKey!0 a!3186 lt!346811 #b00000000000000000000000000000000)))

(declare-fun lt!346812 () Unit!26824)

(assert (=> b!778416 (= lt!346812 lt!346810)))

(declare-fun res!526670 () Bool)

(assert (=> b!778416 (= res!526670 (= (seekEntryOrOpen!0 (select (arr!20358 a!3186) j!159) a!3186 mask!3328) (Found!7965 j!159)))))

(assert (=> b!778416 (=> (not res!526670) (not e!433098))))

(declare-fun d!102275 () Bool)

(declare-fun res!526669 () Bool)

(assert (=> d!102275 (=> res!526669 e!433100)))

(assert (=> d!102275 (= res!526669 (bvsge j!159 (size!20779 a!3186)))))

(assert (=> d!102275 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!433100)))

(declare-fun b!778417 () Bool)

(declare-fun call!35207 () Bool)

(assert (=> b!778417 (= e!433098 call!35207)))

(declare-fun b!778418 () Bool)

(assert (=> b!778418 (= e!433099 call!35207)))

(declare-fun bm!35204 () Bool)

(assert (=> bm!35204 (= call!35207 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!102275 (not res!526669)) b!778415))

(assert (= (and b!778415 c!86276) b!778416))

(assert (= (and b!778415 (not c!86276)) b!778418))

(assert (= (and b!778416 res!526670) b!778417))

(assert (= (or b!778417 b!778418) bm!35204))

(assert (=> b!778415 m!721767))

(assert (=> b!778415 m!721767))

(assert (=> b!778415 m!721787))

(assert (=> b!778416 m!721767))

(declare-fun m!722149 () Bool)

(assert (=> b!778416 m!722149))

(declare-fun m!722151 () Bool)

(assert (=> b!778416 m!722151))

(assert (=> b!778416 m!721767))

(assert (=> b!778416 m!721801))

(declare-fun m!722153 () Bool)

(assert (=> bm!35204 m!722153))

(assert (=> b!777918 d!102275))

(declare-fun d!102277 () Bool)

(assert (=> d!102277 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!346815 () Unit!26824)

(declare-fun choose!38 (array!42535 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26824)

(assert (=> d!102277 (= lt!346815 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102277 (validMask!0 mask!3328)))

(assert (=> d!102277 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!346815)))

(declare-fun bs!21683 () Bool)

(assert (= bs!21683 d!102277))

(assert (=> bs!21683 m!721795))

(declare-fun m!722155 () Bool)

(assert (=> bs!21683 m!722155))

(assert (=> bs!21683 m!721783))

(assert (=> b!777918 d!102277))

(declare-fun b!778441 () Bool)

(declare-fun e!433120 () Bool)

(declare-fun e!433119 () Bool)

(assert (=> b!778441 (= e!433120 e!433119)))

(declare-fun res!526684 () Bool)

(assert (=> b!778441 (=> (not res!526684) (not e!433119))))

(declare-fun e!433118 () Bool)

(assert (=> b!778441 (= res!526684 (not e!433118))))

(declare-fun res!526685 () Bool)

(assert (=> b!778441 (=> (not res!526685) (not e!433118))))

(assert (=> b!778441 (= res!526685 (validKeyInArray!0 (select (arr!20358 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102279 () Bool)

(declare-fun res!526683 () Bool)

(assert (=> d!102279 (=> res!526683 e!433120)))

(assert (=> d!102279 (= res!526683 (bvsge #b00000000000000000000000000000000 (size!20779 a!3186)))))

(assert (=> d!102279 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14410) e!433120)))

(declare-fun b!778442 () Bool)

(declare-fun contains!4102 (List!14413 (_ BitVec 64)) Bool)

(assert (=> b!778442 (= e!433118 (contains!4102 Nil!14410 (select (arr!20358 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778443 () Bool)

(declare-fun e!433121 () Bool)

(assert (=> b!778443 (= e!433119 e!433121)))

(declare-fun c!86282 () Bool)

(assert (=> b!778443 (= c!86282 (validKeyInArray!0 (select (arr!20358 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35210 () Bool)

(declare-fun call!35213 () Bool)

(assert (=> bm!35210 (= call!35213 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86282 (Cons!14409 (select (arr!20358 a!3186) #b00000000000000000000000000000000) Nil!14410) Nil!14410)))))

(declare-fun b!778444 () Bool)

(assert (=> b!778444 (= e!433121 call!35213)))

(declare-fun b!778445 () Bool)

(assert (=> b!778445 (= e!433121 call!35213)))

(assert (= (and d!102279 (not res!526683)) b!778441))

(assert (= (and b!778441 res!526685) b!778442))

(assert (= (and b!778441 res!526684) b!778443))

(assert (= (and b!778443 c!86282) b!778444))

(assert (= (and b!778443 (not c!86282)) b!778445))

(assert (= (or b!778444 b!778445) bm!35210))

(assert (=> b!778441 m!722043))

(assert (=> b!778441 m!722043))

(assert (=> b!778441 m!722129))

(assert (=> b!778442 m!722043))

(assert (=> b!778442 m!722043))

(declare-fun m!722163 () Bool)

(assert (=> b!778442 m!722163))

(assert (=> b!778443 m!722043))

(assert (=> b!778443 m!722043))

(assert (=> b!778443 m!722129))

(assert (=> bm!35210 m!722043))

(declare-fun m!722165 () Bool)

(assert (=> bm!35210 m!722165))

(assert (=> b!777911 d!102279))

(declare-fun d!102283 () Bool)

(assert (=> d!102283 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!777920 d!102283))

(push 1)

(assert (not b!778405))

(assert (not b!778406))

