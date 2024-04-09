; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52338 () Bool)

(assert start!52338)

(declare-fun b!570913 () Bool)

(declare-fun res!360847 () Bool)

(declare-fun e!328359 () Bool)

(assert (=> b!570913 (=> (not res!360847) (not e!328359))))

(declare-datatypes ((array!35752 0))(
  ( (array!35753 (arr!17162 (Array (_ BitVec 32) (_ BitVec 64))) (size!17526 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35752)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570913 (= res!360847 (validKeyInArray!0 (select (arr!17162 a!3118) j!142)))))

(declare-fun b!570914 () Bool)

(declare-fun res!360857 () Bool)

(assert (=> b!570914 (=> (not res!360857) (not e!328359))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570914 (= res!360857 (and (= (size!17526 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17526 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17526 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570916 () Bool)

(declare-fun e!328360 () Bool)

(declare-fun e!328357 () Bool)

(assert (=> b!570916 (= e!328360 e!328357)))

(declare-fun res!360844 () Bool)

(assert (=> b!570916 (=> res!360844 e!328357)))

(declare-fun lt!260378 () (_ BitVec 64))

(assert (=> b!570916 (= res!360844 (or (= lt!260378 (select (arr!17162 a!3118) j!142)) (= lt!260378 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5618 0))(
  ( (MissingZero!5618 (index!24699 (_ BitVec 32))) (Found!5618 (index!24700 (_ BitVec 32))) (Intermediate!5618 (undefined!6430 Bool) (index!24701 (_ BitVec 32)) (x!53593 (_ BitVec 32))) (Undefined!5618) (MissingVacant!5618 (index!24702 (_ BitVec 32))) )
))
(declare-fun lt!260383 () SeekEntryResult!5618)

(assert (=> b!570916 (= lt!260378 (select (arr!17162 a!3118) (index!24701 lt!260383)))))

(declare-fun b!570917 () Bool)

(declare-fun res!360852 () Bool)

(assert (=> b!570917 (=> (not res!360852) (not e!328359))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570917 (= res!360852 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570918 () Bool)

(declare-fun e!328355 () Bool)

(assert (=> b!570918 (= e!328359 e!328355)))

(declare-fun res!360856 () Bool)

(assert (=> b!570918 (=> (not res!360856) (not e!328355))))

(declare-fun lt!260382 () SeekEntryResult!5618)

(assert (=> b!570918 (= res!360856 (or (= lt!260382 (MissingZero!5618 i!1132)) (= lt!260382 (MissingVacant!5618 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35752 (_ BitVec 32)) SeekEntryResult!5618)

(assert (=> b!570918 (= lt!260382 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570919 () Bool)

(declare-fun e!328358 () Bool)

(assert (=> b!570919 (= e!328355 e!328358)))

(declare-fun res!360846 () Bool)

(assert (=> b!570919 (=> (not res!360846) (not e!328358))))

(declare-fun lt!260381 () array!35752)

(declare-fun lt!260384 () (_ BitVec 32))

(declare-fun lt!260379 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35752 (_ BitVec 32)) SeekEntryResult!5618)

(assert (=> b!570919 (= res!360846 (= lt!260383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260384 lt!260379 lt!260381 mask!3119)))))

(declare-fun lt!260385 () (_ BitVec 32))

(assert (=> b!570919 (= lt!260383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260385 (select (arr!17162 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570919 (= lt!260384 (toIndex!0 lt!260379 mask!3119))))

(assert (=> b!570919 (= lt!260379 (select (store (arr!17162 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!570919 (= lt!260385 (toIndex!0 (select (arr!17162 a!3118) j!142) mask!3119))))

(assert (=> b!570919 (= lt!260381 (array!35753 (store (arr!17162 a!3118) i!1132 k!1914) (size!17526 a!3118)))))

(declare-fun b!570920 () Bool)

(declare-fun res!360853 () Bool)

(assert (=> b!570920 (=> (not res!360853) (not e!328355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35752 (_ BitVec 32)) Bool)

(assert (=> b!570920 (= res!360853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!570921 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35752 (_ BitVec 32)) SeekEntryResult!5618)

(assert (=> b!570921 (= e!328357 (= (seekEntryOrOpen!0 lt!260379 lt!260381 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260383) (index!24701 lt!260383) (index!24701 lt!260383) lt!260379 lt!260381 mask!3119)))))

(declare-fun b!570922 () Bool)

(declare-fun e!328356 () Bool)

(declare-fun e!328353 () Bool)

(assert (=> b!570922 (= e!328356 e!328353)))

(declare-fun res!360848 () Bool)

(assert (=> b!570922 (=> res!360848 e!328353)))

(declare-fun lt!260387 () (_ BitVec 64))

(assert (=> b!570922 (= res!360848 (or (= lt!260387 (select (arr!17162 a!3118) j!142)) (= lt!260387 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!570922 (= lt!260387 (select (arr!17162 a!3118) (index!24701 lt!260383)))))

(declare-fun b!570923 () Bool)

(declare-fun lt!260380 () SeekEntryResult!5618)

(assert (=> b!570923 (= e!328353 (= lt!260380 (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260383) (index!24701 lt!260383) (index!24701 lt!260383) (select (arr!17162 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570924 () Bool)

(declare-fun e!328354 () Bool)

(assert (=> b!570924 (= e!328354 e!328356)))

(declare-fun res!360855 () Bool)

(assert (=> b!570924 (=> res!360855 e!328356)))

(assert (=> b!570924 (= res!360855 (or (undefined!6430 lt!260383) (not (is-Intermediate!5618 lt!260383))))))

(declare-fun b!570925 () Bool)

(assert (=> b!570925 (= e!328358 (not e!328360))))

(declare-fun res!360845 () Bool)

(assert (=> b!570925 (=> res!360845 e!328360)))

(assert (=> b!570925 (= res!360845 (or (undefined!6430 lt!260383) (not (is-Intermediate!5618 lt!260383))))))

(assert (=> b!570925 e!328354))

(declare-fun res!360849 () Bool)

(assert (=> b!570925 (=> (not res!360849) (not e!328354))))

(assert (=> b!570925 (= res!360849 (= lt!260380 (Found!5618 j!142)))))

(assert (=> b!570925 (= lt!260380 (seekEntryOrOpen!0 (select (arr!17162 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!570925 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17938 0))(
  ( (Unit!17939) )
))
(declare-fun lt!260386 () Unit!17938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17938)

(assert (=> b!570925 (= lt!260386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570926 () Bool)

(declare-fun res!360854 () Bool)

(assert (=> b!570926 (=> (not res!360854) (not e!328355))))

(declare-datatypes ((List!11295 0))(
  ( (Nil!11292) (Cons!11291 (h!12315 (_ BitVec 64)) (t!17531 List!11295)) )
))
(declare-fun arrayNoDuplicates!0 (array!35752 (_ BitVec 32) List!11295) Bool)

(assert (=> b!570926 (= res!360854 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11292))))

(declare-fun b!570915 () Bool)

(declare-fun res!360850 () Bool)

(assert (=> b!570915 (=> (not res!360850) (not e!328359))))

(assert (=> b!570915 (= res!360850 (validKeyInArray!0 k!1914))))

(declare-fun res!360851 () Bool)

(assert (=> start!52338 (=> (not res!360851) (not e!328359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52338 (= res!360851 (validMask!0 mask!3119))))

(assert (=> start!52338 e!328359))

(assert (=> start!52338 true))

(declare-fun array_inv!12936 (array!35752) Bool)

(assert (=> start!52338 (array_inv!12936 a!3118)))

(assert (= (and start!52338 res!360851) b!570914))

(assert (= (and b!570914 res!360857) b!570913))

(assert (= (and b!570913 res!360847) b!570915))

(assert (= (and b!570915 res!360850) b!570917))

(assert (= (and b!570917 res!360852) b!570918))

(assert (= (and b!570918 res!360856) b!570920))

(assert (= (and b!570920 res!360853) b!570926))

(assert (= (and b!570926 res!360854) b!570919))

(assert (= (and b!570919 res!360846) b!570925))

(assert (= (and b!570925 res!360849) b!570924))

(assert (= (and b!570924 (not res!360855)) b!570922))

(assert (= (and b!570922 (not res!360848)) b!570923))

(assert (= (and b!570925 (not res!360845)) b!570916))

(assert (= (and b!570916 (not res!360844)) b!570921))

(declare-fun m!549899 () Bool)

(assert (=> b!570917 m!549899))

(declare-fun m!549901 () Bool)

(assert (=> b!570925 m!549901))

(assert (=> b!570925 m!549901))

(declare-fun m!549903 () Bool)

(assert (=> b!570925 m!549903))

(declare-fun m!549905 () Bool)

(assert (=> b!570925 m!549905))

(declare-fun m!549907 () Bool)

(assert (=> b!570925 m!549907))

(declare-fun m!549909 () Bool)

(assert (=> b!570920 m!549909))

(assert (=> b!570913 m!549901))

(assert (=> b!570913 m!549901))

(declare-fun m!549911 () Bool)

(assert (=> b!570913 m!549911))

(declare-fun m!549913 () Bool)

(assert (=> b!570921 m!549913))

(declare-fun m!549915 () Bool)

(assert (=> b!570921 m!549915))

(declare-fun m!549917 () Bool)

(assert (=> b!570915 m!549917))

(declare-fun m!549919 () Bool)

(assert (=> start!52338 m!549919))

(declare-fun m!549921 () Bool)

(assert (=> start!52338 m!549921))

(declare-fun m!549923 () Bool)

(assert (=> b!570918 m!549923))

(assert (=> b!570923 m!549901))

(assert (=> b!570923 m!549901))

(declare-fun m!549925 () Bool)

(assert (=> b!570923 m!549925))

(assert (=> b!570922 m!549901))

(declare-fun m!549927 () Bool)

(assert (=> b!570922 m!549927))

(assert (=> b!570916 m!549901))

(assert (=> b!570916 m!549927))

(assert (=> b!570919 m!549901))

(declare-fun m!549929 () Bool)

(assert (=> b!570919 m!549929))

(declare-fun m!549931 () Bool)

(assert (=> b!570919 m!549931))

(declare-fun m!549933 () Bool)

(assert (=> b!570919 m!549933))

(declare-fun m!549935 () Bool)

(assert (=> b!570919 m!549935))

(assert (=> b!570919 m!549901))

(assert (=> b!570919 m!549901))

(declare-fun m!549937 () Bool)

(assert (=> b!570919 m!549937))

(declare-fun m!549939 () Bool)

(assert (=> b!570919 m!549939))

(declare-fun m!549941 () Bool)

(assert (=> b!570926 m!549941))

(push 1)

(assert (not b!570921))

(assert (not b!570917))

(assert (not b!570923))

(assert (not b!570915))

(assert (not start!52338))

(assert (not b!570919))

(assert (not b!570926))

(assert (not b!570918))

(assert (not b!570920))

(assert (not b!570925))

(assert (not b!570913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!571014 () Bool)

(declare-fun c!65423 () Bool)

(declare-fun lt!260420 () (_ BitVec 64))

(assert (=> b!571014 (= c!65423 (= lt!260420 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328415 () SeekEntryResult!5618)

(declare-fun e!328416 () SeekEntryResult!5618)

(assert (=> b!571014 (= e!328415 e!328416)))

(declare-fun b!571015 () Bool)

(declare-fun e!328414 () SeekEntryResult!5618)

(assert (=> b!571015 (= e!328414 e!328415)))

(declare-fun lt!260421 () SeekEntryResult!5618)

(assert (=> b!571015 (= lt!260420 (select (arr!17162 lt!260381) (index!24701 lt!260421)))))

(declare-fun c!65421 () Bool)

(assert (=> b!571015 (= c!65421 (= lt!260420 lt!260379))))

(declare-fun b!571016 () Bool)

(assert (=> b!571016 (= e!328416 (MissingZero!5618 (index!24701 lt!260421)))))

(declare-fun b!571017 () Bool)

(assert (=> b!571017 (= e!328414 Undefined!5618)))

(declare-fun b!571018 () Bool)

(assert (=> b!571018 (= e!328415 (Found!5618 (index!24701 lt!260421)))))

(declare-fun b!571019 () Bool)

(assert (=> b!571019 (= e!328416 (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260421) (index!24701 lt!260421) (index!24701 lt!260421) lt!260379 lt!260381 mask!3119))))

(declare-fun d!84619 () Bool)

(declare-fun lt!260419 () SeekEntryResult!5618)

(assert (=> d!84619 (and (or (is-Undefined!5618 lt!260419) (not (is-Found!5618 lt!260419)) (and (bvsge (index!24700 lt!260419) #b00000000000000000000000000000000) (bvslt (index!24700 lt!260419) (size!17526 lt!260381)))) (or (is-Undefined!5618 lt!260419) (is-Found!5618 lt!260419) (not (is-MissingZero!5618 lt!260419)) (and (bvsge (index!24699 lt!260419) #b00000000000000000000000000000000) (bvslt (index!24699 lt!260419) (size!17526 lt!260381)))) (or (is-Undefined!5618 lt!260419) (is-Found!5618 lt!260419) (is-MissingZero!5618 lt!260419) (not (is-MissingVacant!5618 lt!260419)) (and (bvsge (index!24702 lt!260419) #b00000000000000000000000000000000) (bvslt (index!24702 lt!260419) (size!17526 lt!260381)))) (or (is-Undefined!5618 lt!260419) (ite (is-Found!5618 lt!260419) (= (select (arr!17162 lt!260381) (index!24700 lt!260419)) lt!260379) (ite (is-MissingZero!5618 lt!260419) (= (select (arr!17162 lt!260381) (index!24699 lt!260419)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5618 lt!260419) (= (select (arr!17162 lt!260381) (index!24702 lt!260419)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84619 (= lt!260419 e!328414)))

(declare-fun c!65422 () Bool)

(assert (=> d!84619 (= c!65422 (and (is-Intermediate!5618 lt!260421) (undefined!6430 lt!260421)))))

(assert (=> d!84619 (= lt!260421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!260379 mask!3119) lt!260379 lt!260381 mask!3119))))

(assert (=> d!84619 (validMask!0 mask!3119)))

(assert (=> d!84619 (= (seekEntryOrOpen!0 lt!260379 lt!260381 mask!3119) lt!260419)))

(assert (= (and d!84619 c!65422) b!571017))

(assert (= (and d!84619 (not c!65422)) b!571015))

(assert (= (and b!571015 c!65421) b!571018))

(assert (= (and b!571015 (not c!65421)) b!571014))

(assert (= (and b!571014 c!65423) b!571016))

(assert (= (and b!571014 (not c!65423)) b!571019))

(declare-fun m!549983 () Bool)

(assert (=> b!571015 m!549983))

(declare-fun m!549985 () Bool)

(assert (=> b!571019 m!549985))

(declare-fun m!549987 () Bool)

(assert (=> d!84619 m!549987))

(declare-fun m!549989 () Bool)

(assert (=> d!84619 m!549989))

(assert (=> d!84619 m!549935))

(assert (=> d!84619 m!549935))

(declare-fun m!549991 () Bool)

(assert (=> d!84619 m!549991))

(assert (=> d!84619 m!549919))

(declare-fun m!549993 () Bool)

(assert (=> d!84619 m!549993))

(assert (=> b!570921 d!84619))

(declare-fun b!571078 () Bool)

(declare-fun e!328449 () SeekEntryResult!5618)

(assert (=> b!571078 (= e!328449 (Found!5618 (index!24701 lt!260383)))))

(declare-fun b!571079 () Bool)

(declare-fun e!328451 () SeekEntryResult!5618)

(assert (=> b!571079 (= e!328451 e!328449)))

(declare-fun c!65451 () Bool)

(declare-fun lt!260442 () (_ BitVec 64))

(assert (=> b!571079 (= c!65451 (= lt!260442 lt!260379))))

(declare-fun lt!260441 () SeekEntryResult!5618)

(declare-fun d!84629 () Bool)

(assert (=> d!84629 (and (or (is-Undefined!5618 lt!260441) (not (is-Found!5618 lt!260441)) (and (bvsge (index!24700 lt!260441) #b00000000000000000000000000000000) (bvslt (index!24700 lt!260441) (size!17526 lt!260381)))) (or (is-Undefined!5618 lt!260441) (is-Found!5618 lt!260441) (not (is-MissingVacant!5618 lt!260441)) (not (= (index!24702 lt!260441) (index!24701 lt!260383))) (and (bvsge (index!24702 lt!260441) #b00000000000000000000000000000000) (bvslt (index!24702 lt!260441) (size!17526 lt!260381)))) (or (is-Undefined!5618 lt!260441) (ite (is-Found!5618 lt!260441) (= (select (arr!17162 lt!260381) (index!24700 lt!260441)) lt!260379) (and (is-MissingVacant!5618 lt!260441) (= (index!24702 lt!260441) (index!24701 lt!260383)) (= (select (arr!17162 lt!260381) (index!24702 lt!260441)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84629 (= lt!260441 e!328451)))

(declare-fun c!65450 () Bool)

(assert (=> d!84629 (= c!65450 (bvsge (x!53593 lt!260383) #b01111111111111111111111111111110))))

(assert (=> d!84629 (= lt!260442 (select (arr!17162 lt!260381) (index!24701 lt!260383)))))

(assert (=> d!84629 (validMask!0 mask!3119)))

(assert (=> d!84629 (= (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260383) (index!24701 lt!260383) (index!24701 lt!260383) lt!260379 lt!260381 mask!3119) lt!260441)))

(declare-fun b!571080 () Bool)

(assert (=> b!571080 (= e!328451 Undefined!5618)))

(declare-fun b!571081 () Bool)

(declare-fun c!65452 () Bool)

(assert (=> b!571081 (= c!65452 (= lt!260442 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328450 () SeekEntryResult!5618)

(assert (=> b!571081 (= e!328449 e!328450)))

(declare-fun b!571082 () Bool)

(assert (=> b!571082 (= e!328450 (MissingVacant!5618 (index!24701 lt!260383)))))

(declare-fun b!571083 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571083 (= e!328450 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53593 lt!260383) #b00000000000000000000000000000001) (nextIndex!0 (index!24701 lt!260383) (x!53593 lt!260383) mask!3119) (index!24701 lt!260383) lt!260379 lt!260381 mask!3119))))

(assert (= (and d!84629 c!65450) b!571080))

(assert (= (and d!84629 (not c!65450)) b!571079))

(assert (= (and b!571079 c!65451) b!571078))

(assert (= (and b!571079 (not c!65451)) b!571081))

(assert (= (and b!571081 c!65452) b!571082))

(assert (= (and b!571081 (not c!65452)) b!571083))

(declare-fun m!550017 () Bool)

(assert (=> d!84629 m!550017))

(declare-fun m!550019 () Bool)

(assert (=> d!84629 m!550019))

(declare-fun m!550021 () Bool)

(assert (=> d!84629 m!550021))

(assert (=> d!84629 m!549919))

(declare-fun m!550023 () Bool)

(assert (=> b!571083 m!550023))

(assert (=> b!571083 m!550023))

(declare-fun m!550025 () Bool)

(assert (=> b!571083 m!550025))

(assert (=> b!570921 d!84629))

(declare-fun d!84637 () Bool)

(assert (=> d!84637 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52338 d!84637))

(declare-fun d!84643 () Bool)

(assert (=> d!84643 (= (array_inv!12936 a!3118) (bvsge (size!17526 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52338 d!84643))

(declare-fun b!571131 () Bool)

(declare-fun e!328480 () SeekEntryResult!5618)

(assert (=> b!571131 (= e!328480 (Found!5618 (index!24701 lt!260383)))))

(declare-fun b!571132 () Bool)

(declare-fun e!328482 () SeekEntryResult!5618)

(assert (=> b!571132 (= e!328482 e!328480)))

(declare-fun c!65473 () Bool)

(declare-fun lt!260464 () (_ BitVec 64))

(assert (=> b!571132 (= c!65473 (= lt!260464 (select (arr!17162 a!3118) j!142)))))

(declare-fun d!84647 () Bool)

(declare-fun lt!260463 () SeekEntryResult!5618)

(assert (=> d!84647 (and (or (is-Undefined!5618 lt!260463) (not (is-Found!5618 lt!260463)) (and (bvsge (index!24700 lt!260463) #b00000000000000000000000000000000) (bvslt (index!24700 lt!260463) (size!17526 a!3118)))) (or (is-Undefined!5618 lt!260463) (is-Found!5618 lt!260463) (not (is-MissingVacant!5618 lt!260463)) (not (= (index!24702 lt!260463) (index!24701 lt!260383))) (and (bvsge (index!24702 lt!260463) #b00000000000000000000000000000000) (bvslt (index!24702 lt!260463) (size!17526 a!3118)))) (or (is-Undefined!5618 lt!260463) (ite (is-Found!5618 lt!260463) (= (select (arr!17162 a!3118) (index!24700 lt!260463)) (select (arr!17162 a!3118) j!142)) (and (is-MissingVacant!5618 lt!260463) (= (index!24702 lt!260463) (index!24701 lt!260383)) (= (select (arr!17162 a!3118) (index!24702 lt!260463)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!84647 (= lt!260463 e!328482)))

(declare-fun c!65472 () Bool)

(assert (=> d!84647 (= c!65472 (bvsge (x!53593 lt!260383) #b01111111111111111111111111111110))))

(assert (=> d!84647 (= lt!260464 (select (arr!17162 a!3118) (index!24701 lt!260383)))))

(assert (=> d!84647 (validMask!0 mask!3119)))

(assert (=> d!84647 (= (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260383) (index!24701 lt!260383) (index!24701 lt!260383) (select (arr!17162 a!3118) j!142) a!3118 mask!3119) lt!260463)))

(declare-fun b!571133 () Bool)

(assert (=> b!571133 (= e!328482 Undefined!5618)))

(declare-fun b!571134 () Bool)

(declare-fun c!65474 () Bool)

(assert (=> b!571134 (= c!65474 (= lt!260464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328481 () SeekEntryResult!5618)

(assert (=> b!571134 (= e!328480 e!328481)))

(declare-fun b!571135 () Bool)

(assert (=> b!571135 (= e!328481 (MissingVacant!5618 (index!24701 lt!260383)))))

(declare-fun b!571136 () Bool)

(assert (=> b!571136 (= e!328481 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53593 lt!260383) #b00000000000000000000000000000001) (nextIndex!0 (index!24701 lt!260383) (x!53593 lt!260383) mask!3119) (index!24701 lt!260383) (select (arr!17162 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!84647 c!65472) b!571133))

(assert (= (and d!84647 (not c!65472)) b!571132))

(assert (= (and b!571132 c!65473) b!571131))

(assert (= (and b!571132 (not c!65473)) b!571134))

(assert (= (and b!571134 c!65474) b!571135))

(assert (= (and b!571134 (not c!65474)) b!571136))

(declare-fun m!550071 () Bool)

(assert (=> d!84647 m!550071))

(declare-fun m!550073 () Bool)

(assert (=> d!84647 m!550073))

(assert (=> d!84647 m!549927))

(assert (=> d!84647 m!549919))

(assert (=> b!571136 m!550023))

(assert (=> b!571136 m!550023))

(assert (=> b!571136 m!549901))

(declare-fun m!550075 () Bool)

(assert (=> b!571136 m!550075))

(assert (=> b!570923 d!84647))

(declare-fun b!571143 () Bool)

(declare-fun c!65480 () Bool)

(declare-fun lt!260469 () (_ BitVec 64))

(assert (=> b!571143 (= c!65480 (= lt!260469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328487 () SeekEntryResult!5618)

(declare-fun e!328488 () SeekEntryResult!5618)

(assert (=> b!571143 (= e!328487 e!328488)))

(declare-fun b!571144 () Bool)

(declare-fun e!328486 () SeekEntryResult!5618)

(assert (=> b!571144 (= e!328486 e!328487)))

(declare-fun lt!260470 () SeekEntryResult!5618)

(assert (=> b!571144 (= lt!260469 (select (arr!17162 a!3118) (index!24701 lt!260470)))))

(declare-fun c!65478 () Bool)

(assert (=> b!571144 (= c!65478 (= lt!260469 k!1914))))

(declare-fun b!571145 () Bool)

(assert (=> b!571145 (= e!328488 (MissingZero!5618 (index!24701 lt!260470)))))

(declare-fun b!571146 () Bool)

(assert (=> b!571146 (= e!328486 Undefined!5618)))

(declare-fun b!571147 () Bool)

(assert (=> b!571147 (= e!328487 (Found!5618 (index!24701 lt!260470)))))

(declare-fun b!571148 () Bool)

(assert (=> b!571148 (= e!328488 (seekKeyOrZeroReturnVacant!0 (x!53593 lt!260470) (index!24701 lt!260470) (index!24701 lt!260470) k!1914 a!3118 mask!3119))))

(declare-fun d!84655 () Bool)

(declare-fun lt!260468 () SeekEntryResult!5618)

(assert (=> d!84655 (and (or (is-Undefined!5618 lt!260468) (not (is-Found!5618 lt!260468)) (and (bvsge (index!24700 lt!260468) #b00000000000000000000000000000000) (bvslt (index!24700 lt!260468) (size!17526 a!3118)))) (or (is-Undefined!5618 lt!260468) (is-Found!5618 lt!260468) (not (is-MissingZero!5618 lt!260468)) (and (bvsge (index!24699 lt!260468) #b00000000000000000000000000000000) (bvslt (index!24699 lt!260468) (size!17526 a!3118)))) (or (is-Undefined!5618 lt!260468) (is-Found!5618 lt!260468) (is-MissingZero!5618 lt!260468) (not (is-MissingVacant!5618 lt!260468)) (and (bvsge (index!24702 lt!260468) #b00000000000000000000000000000000) (bvslt (index!24702 lt!260468) (size!17526 a!3118)))) (or (is-Undefined!5618 lt!260468) (ite (is-Found!5618 lt!260468) (= (select (arr!17162 a!3118) (index!24700 lt!260468)) k!1914) (ite (is-MissingZero!5618 lt!260468) (= (select (arr!17162 a!3118) (index!24699 lt!260468)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5618 lt!260468) (= (select (arr!17162 a!3118) (index!24702 lt!260468)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84655 (= lt!260468 e!328486)))

(declare-fun c!65479 () Bool)

(assert (=> d!84655 (= c!65479 (and (is-Intermediate!5618 lt!260470) (undefined!6430 lt!260470)))))

(assert (=> d!84655 (= lt!260470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84655 (validMask!0 mask!3119)))

(assert (=> d!84655 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!260468)))

(assert (= (and d!84655 c!65479) b!571146))

(assert (= (and d!84655 (not c!65479)) b!571144))

(assert (= (and b!571144 c!65478) b!571147))

(assert (= (and b!571144 (not c!65478)) b!571143))

(assert (= (and b!571143 c!65480) b!571145))

(assert (= (and b!571143 (not c!65480)) b!571148))

(declare-fun m!550091 () Bool)

(assert (=> b!571144 m!550091))

(declare-fun m!550093 () Bool)

(assert (=> b!571148 m!550093))

(declare-fun m!550095 () Bool)

(assert (=> d!84655 m!550095))

(declare-fun m!550097 () Bool)

(assert (=> d!84655 m!550097))

(declare-fun m!550099 () Bool)

(assert (=> d!84655 m!550099))

(assert (=> d!84655 m!550099))

(declare-fun m!550101 () Bool)

(assert (=> d!84655 m!550101))

(assert (=> d!84655 m!549919))

(declare-fun m!550103 () Bool)

(assert (=> d!84655 m!550103))

(assert (=> b!570918 d!84655))

(declare-fun b!571211 () Bool)

(declare-fun e!328530 () SeekEntryResult!5618)

(assert (=> b!571211 (= e!328530 (Intermediate!5618 false lt!260384 #b00000000000000000000000000000000))))

(declare-fun b!571212 () Bool)

(declare-fun lt!260504 () SeekEntryResult!5618)

(assert (=> b!571212 (and (bvsge (index!24701 lt!260504) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260504) (size!17526 lt!260381)))))

(declare-fun res!360925 () Bool)

(assert (=> b!571212 (= res!360925 (= (select (arr!17162 lt!260381) (index!24701 lt!260504)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328529 () Bool)

(assert (=> b!571212 (=> res!360925 e!328529)))

(declare-fun d!84659 () Bool)

(declare-fun e!328531 () Bool)

(assert (=> d!84659 e!328531))

(declare-fun c!65501 () Bool)

(assert (=> d!84659 (= c!65501 (and (is-Intermediate!5618 lt!260504) (undefined!6430 lt!260504)))))

(declare-fun e!328533 () SeekEntryResult!5618)

(assert (=> d!84659 (= lt!260504 e!328533)))

(declare-fun c!65502 () Bool)

(assert (=> d!84659 (= c!65502 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!260505 () (_ BitVec 64))

(assert (=> d!84659 (= lt!260505 (select (arr!17162 lt!260381) lt!260384))))

(assert (=> d!84659 (validMask!0 mask!3119)))

(assert (=> d!84659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260384 lt!260379 lt!260381 mask!3119) lt!260504)))

(declare-fun b!571213 () Bool)

(assert (=> b!571213 (and (bvsge (index!24701 lt!260504) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260504) (size!17526 lt!260381)))))

(declare-fun res!360924 () Bool)

(assert (=> b!571213 (= res!360924 (= (select (arr!17162 lt!260381) (index!24701 lt!260504)) lt!260379))))

(assert (=> b!571213 (=> res!360924 e!328529)))

(declare-fun e!328532 () Bool)

(assert (=> b!571213 (= e!328532 e!328529)))

(declare-fun b!571214 () Bool)

(assert (=> b!571214 (and (bvsge (index!24701 lt!260504) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260504) (size!17526 lt!260381)))))

(assert (=> b!571214 (= e!328529 (= (select (arr!17162 lt!260381) (index!24701 lt!260504)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!571215 () Bool)

(assert (=> b!571215 (= e!328530 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!260384 #b00000000000000000000000000000000 mask!3119) lt!260379 lt!260381 mask!3119))))

(declare-fun b!571216 () Bool)

(assert (=> b!571216 (= e!328531 e!328532)))

(declare-fun res!360923 () Bool)

(assert (=> b!571216 (= res!360923 (and (is-Intermediate!5618 lt!260504) (not (undefined!6430 lt!260504)) (bvslt (x!53593 lt!260504) #b01111111111111111111111111111110) (bvsge (x!53593 lt!260504) #b00000000000000000000000000000000) (bvsge (x!53593 lt!260504) #b00000000000000000000000000000000)))))

(assert (=> b!571216 (=> (not res!360923) (not e!328532))))

(declare-fun b!571217 () Bool)

(assert (=> b!571217 (= e!328533 (Intermediate!5618 true lt!260384 #b00000000000000000000000000000000))))

(declare-fun b!571218 () Bool)

(assert (=> b!571218 (= e!328531 (bvsge (x!53593 lt!260504) #b01111111111111111111111111111110))))

(declare-fun b!571219 () Bool)

(assert (=> b!571219 (= e!328533 e!328530)))

(declare-fun c!65503 () Bool)

(assert (=> b!571219 (= c!65503 (or (= lt!260505 lt!260379) (= (bvadd lt!260505 lt!260505) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84659 c!65502) b!571217))

(assert (= (and d!84659 (not c!65502)) b!571219))

(assert (= (and b!571219 c!65503) b!571211))

(assert (= (and b!571219 (not c!65503)) b!571215))

(assert (= (and d!84659 c!65501) b!571218))

(assert (= (and d!84659 (not c!65501)) b!571216))

(assert (= (and b!571216 res!360923) b!571213))

(assert (= (and b!571213 (not res!360924)) b!571212))

(assert (= (and b!571212 (not res!360925)) b!571214))

(declare-fun m!550161 () Bool)

(assert (=> b!571215 m!550161))

(assert (=> b!571215 m!550161))

(declare-fun m!550163 () Bool)

(assert (=> b!571215 m!550163))

(declare-fun m!550165 () Bool)

(assert (=> b!571214 m!550165))

(assert (=> b!571213 m!550165))

(declare-fun m!550167 () Bool)

(assert (=> d!84659 m!550167))

(assert (=> d!84659 m!549919))

(assert (=> b!571212 m!550165))

(assert (=> b!570919 d!84659))

(declare-fun b!571220 () Bool)

(declare-fun e!328535 () SeekEntryResult!5618)

(assert (=> b!571220 (= e!328535 (Intermediate!5618 false lt!260385 #b00000000000000000000000000000000))))

(declare-fun b!571221 () Bool)

(declare-fun lt!260506 () SeekEntryResult!5618)

(assert (=> b!571221 (and (bvsge (index!24701 lt!260506) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260506) (size!17526 a!3118)))))

(declare-fun res!360928 () Bool)

(assert (=> b!571221 (= res!360928 (= (select (arr!17162 a!3118) (index!24701 lt!260506)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!328534 () Bool)

(assert (=> b!571221 (=> res!360928 e!328534)))

(declare-fun d!84681 () Bool)

(declare-fun e!328536 () Bool)

(assert (=> d!84681 e!328536))

(declare-fun c!65504 () Bool)

(assert (=> d!84681 (= c!65504 (and (is-Intermediate!5618 lt!260506) (undefined!6430 lt!260506)))))

(declare-fun e!328538 () SeekEntryResult!5618)

(assert (=> d!84681 (= lt!260506 e!328538)))

(declare-fun c!65505 () Bool)

(assert (=> d!84681 (= c!65505 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!260507 () (_ BitVec 64))

(assert (=> d!84681 (= lt!260507 (select (arr!17162 a!3118) lt!260385))))

(assert (=> d!84681 (validMask!0 mask!3119)))

(assert (=> d!84681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260385 (select (arr!17162 a!3118) j!142) a!3118 mask!3119) lt!260506)))

(declare-fun b!571222 () Bool)

(assert (=> b!571222 (and (bvsge (index!24701 lt!260506) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260506) (size!17526 a!3118)))))

(declare-fun res!360927 () Bool)

(assert (=> b!571222 (= res!360927 (= (select (arr!17162 a!3118) (index!24701 lt!260506)) (select (arr!17162 a!3118) j!142)))))

(assert (=> b!571222 (=> res!360927 e!328534)))

(declare-fun e!328537 () Bool)

(assert (=> b!571222 (= e!328537 e!328534)))

(declare-fun b!571223 () Bool)

(assert (=> b!571223 (and (bvsge (index!24701 lt!260506) #b00000000000000000000000000000000) (bvslt (index!24701 lt!260506) (size!17526 a!3118)))))

(assert (=> b!571223 (= e!328534 (= (select (arr!17162 a!3118) (index!24701 lt!260506)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!571224 () Bool)

(assert (=> b!571224 (= e!328535 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!260385 #b00000000000000000000000000000000 mask!3119) (select (arr!17162 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!571225 () Bool)

(assert (=> b!571225 (= e!328536 e!328537)))

(declare-fun res!360926 () Bool)

(assert (=> b!571225 (= res!360926 (and (is-Intermediate!5618 lt!260506) (not (undefined!6430 lt!260506)) (bvslt (x!53593 lt!260506) #b01111111111111111111111111111110) (bvsge (x!53593 lt!260506) #b00000000000000000000000000000000) (bvsge (x!53593 lt!260506) #b00000000000000000000000000000000)))))

(assert (=> b!571225 (=> (not res!360926) (not e!328537))))

(declare-fun b!571226 () Bool)

(assert (=> b!571226 (= e!328538 (Intermediate!5618 true lt!260385 #b00000000000000000000000000000000))))

(declare-fun b!571227 () Bool)

(assert (=> b!571227 (= e!328536 (bvsge (x!53593 lt!260506) #b01111111111111111111111111111110))))

(declare-fun b!571228 () Bool)

(assert (=> b!571228 (= e!328538 e!328535)))

(declare-fun c!65506 () Bool)

(assert (=> b!571228 (= c!65506 (or (= lt!260507 (select (arr!17162 a!3118) j!142)) (= (bvadd lt!260507 lt!260507) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!84681 c!65505) b!571226))

(assert (= (and d!84681 (not c!65505)) b!571228))

(assert (= (and b!571228 c!65506) b!571220))

(assert (= (and b!571228 (not c!65506)) b!571224))

(assert (= (and d!84681 c!65504) b!571227))

(assert (= (and d!84681 (not c!65504)) b!571225))

(assert (= (and b!571225 res!360926) b!571222))

(assert (= (and b!571222 (not res!360927)) b!571221))

(assert (= (and b!571221 (not res!360928)) b!571223))

(declare-fun m!550169 () Bool)

(assert (=> b!571224 m!550169))

(assert (=> b!571224 m!550169))

(assert (=> b!571224 m!549901))

(declare-fun m!550171 () Bool)

(assert (=> b!571224 m!550171))

(declare-fun m!550173 () Bool)

(assert (=> b!571223 m!550173))

(assert (=> b!571222 m!550173))

(declare-fun m!550175 () Bool)

(assert (=> d!84681 m!550175))

(assert (=> d!84681 m!549919))

(assert (=> b!571221 m!550173))

(assert (=> b!570919 d!84681))

(declare-fun d!84683 () Bool)

(declare-fun lt!260513 () (_ BitVec 32))

(declare-fun lt!260512 () (_ BitVec 32))

(assert (=> d!84683 (= lt!260513 (bvmul (bvxor lt!260512 (bvlshr lt!260512 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84683 (= lt!260512 ((_ extract 31 0) (bvand (bvxor lt!260379 (bvlshr lt!260379 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84683 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360929 (let ((h!12317 ((_ extract 31 0) (bvand (bvxor lt!260379 (bvlshr lt!260379 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53600 (bvmul (bvxor h!12317 (bvlshr h!12317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53600 (bvlshr x!53600 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360929 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360929 #b00000000000000000000000000000000))))))

(assert (=> d!84683 (= (toIndex!0 lt!260379 mask!3119) (bvand (bvxor lt!260513 (bvlshr lt!260513 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!570919 d!84683))

(declare-fun d!84685 () Bool)

(declare-fun lt!260515 () (_ BitVec 32))

(declare-fun lt!260514 () (_ BitVec 32))

(assert (=> d!84685 (= lt!260515 (bvmul (bvxor lt!260514 (bvlshr lt!260514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84685 (= lt!260514 ((_ extract 31 0) (bvand (bvxor (select (arr!17162 a!3118) j!142) (bvlshr (select (arr!17162 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84685 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!360929 (let ((h!12317 ((_ extract 31 0) (bvand (bvxor (select (arr!17162 a!3118) j!142) (bvlshr (select (arr!17162 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53600 (bvmul (bvxor h!12317 (bvlshr h!12317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53600 (bvlshr x!53600 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!360929 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!360929 #b00000000000000000000000000000000))))))

(assert (=> d!84685 (= (toIndex!0 (select (arr!17162 a!3118) j!142) mask!3119) (bvand (bvxor lt!260515 (bvlshr lt!260515 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!570919 d!84685))

(declare-fun b!571247 () Bool)

(declare-fun e!328550 () Bool)

(declare-fun e!328551 () Bool)

(assert (=> b!571247 (= e!328550 e!328551)))

(declare-fun c!65513 () Bool)

(assert (=> b!571247 (= c!65513 (validKeyInArray!0 (select (arr!17162 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!571248 () Bool)

(declare-fun e!328549 () Bool)

(assert (=> b!571248 (= e!328551 e!328549)))

(declare-fun lt!260527 () (_ BitVec 64))

(assert (=> b!571248 (= lt!260527 (select (arr!17162 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!260528 () Unit!17938)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35752 (_ BitVec 64) (_ BitVec 32)) Unit!17938)

(assert (=> b!571248 (= lt!260528 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!260527 #b00000000000000000000000000000000))))

