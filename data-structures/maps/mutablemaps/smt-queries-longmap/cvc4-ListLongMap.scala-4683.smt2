; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65180 () Bool)

(assert start!65180)

(declare-fun b!736482 () Bool)

(declare-fun res!495069 () Bool)

(declare-fun e!412021 () Bool)

(assert (=> b!736482 (=> (not res!495069) (not e!412021))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736482 (= res!495069 (validKeyInArray!0 k!2102))))

(declare-fun b!736483 () Bool)

(declare-fun e!412019 () Bool)

(declare-fun e!412020 () Bool)

(assert (=> b!736483 (= e!412019 (not e!412020))))

(declare-fun res!495084 () Bool)

(assert (=> b!736483 (=> res!495084 e!412020)))

(declare-datatypes ((SeekEntryResult!7370 0))(
  ( (MissingZero!7370 (index!31847 (_ BitVec 32))) (Found!7370 (index!31848 (_ BitVec 32))) (Intermediate!7370 (undefined!8182 Bool) (index!31849 (_ BitVec 32)) (x!62873 (_ BitVec 32))) (Undefined!7370) (MissingVacant!7370 (index!31850 (_ BitVec 32))) )
))
(declare-fun lt!326663 () SeekEntryResult!7370)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!736483 (= res!495084 (or (not (is-Intermediate!7370 lt!326663)) (bvsge x!1131 (x!62873 lt!326663))))))

(declare-fun lt!326669 () SeekEntryResult!7370)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!736483 (= lt!326669 (Found!7370 j!159))))

(declare-fun e!412023 () Bool)

(assert (=> b!736483 e!412023))

(declare-fun res!495073 () Bool)

(assert (=> b!736483 (=> (not res!495073) (not e!412023))))

(declare-datatypes ((array!41306 0))(
  ( (array!41307 (arr!19763 (Array (_ BitVec 32) (_ BitVec 64))) (size!20184 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41306)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41306 (_ BitVec 32)) Bool)

(assert (=> b!736483 (= res!495073 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25098 0))(
  ( (Unit!25099) )
))
(declare-fun lt!326659 () Unit!25098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41306 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25098)

(assert (=> b!736483 (= lt!326659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!412013 () Bool)

(declare-fun lt!326672 () SeekEntryResult!7370)

(declare-fun b!736484 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41306 (_ BitVec 32)) SeekEntryResult!7370)

(assert (=> b!736484 (= e!412013 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326672))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!736485 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41306 (_ BitVec 32)) SeekEntryResult!7370)

(assert (=> b!736485 (= e!412013 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) (Found!7370 j!159)))))

(declare-fun b!736486 () Bool)

(declare-fun res!495072 () Bool)

(declare-fun e!412017 () Bool)

(assert (=> b!736486 (=> (not res!495072) (not e!412017))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!736486 (= res!495072 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20184 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20184 a!3186))))))

(declare-fun b!736487 () Bool)

(declare-fun res!495075 () Bool)

(declare-fun e!412015 () Bool)

(assert (=> b!736487 (=> (not res!495075) (not e!412015))))

(assert (=> b!736487 (= res!495075 e!412013)))

(declare-fun c!81088 () Bool)

(assert (=> b!736487 (= c!81088 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736488 () Bool)

(declare-fun res!495076 () Bool)

(assert (=> b!736488 (=> (not res!495076) (not e!412017))))

(declare-datatypes ((List!13818 0))(
  ( (Nil!13815) (Cons!13814 (h!14886 (_ BitVec 64)) (t!20141 List!13818)) )
))
(declare-fun arrayNoDuplicates!0 (array!41306 (_ BitVec 32) List!13818) Bool)

(assert (=> b!736488 (= res!495076 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13815))))

(declare-fun b!736489 () Bool)

(declare-fun e!412022 () Bool)

(declare-fun lt!326671 () (_ BitVec 32))

(assert (=> b!736489 (= e!412022 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326671 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326672)))))

(declare-fun b!736490 () Bool)

(declare-fun e!412016 () Unit!25098)

(declare-fun Unit!25100 () Unit!25098)

(assert (=> b!736490 (= e!412016 Unit!25100)))

(declare-fun lt!326668 () SeekEntryResult!7370)

(assert (=> b!736490 (= lt!326668 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19763 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!736490 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326671 resIntermediateIndex!5 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326669)))

(declare-fun b!736492 () Bool)

(assert (=> b!736492 (= e!412015 e!412019)))

(declare-fun res!495083 () Bool)

(assert (=> b!736492 (=> (not res!495083) (not e!412019))))

(declare-fun lt!326662 () SeekEntryResult!7370)

(assert (=> b!736492 (= res!495083 (= lt!326662 lt!326663))))

(declare-fun lt!326670 () (_ BitVec 64))

(declare-fun lt!326661 () array!41306)

(assert (=> b!736492 (= lt!326663 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326670 lt!326661 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736492 (= lt!326662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326670 mask!3328) lt!326670 lt!326661 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736492 (= lt!326670 (select (store (arr!19763 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736492 (= lt!326661 (array!41307 (store (arr!19763 a!3186) i!1173 k!2102) (size!20184 a!3186)))))

(declare-fun res!495082 () Bool)

(assert (=> start!65180 (=> (not res!495082) (not e!412021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65180 (= res!495082 (validMask!0 mask!3328))))

(assert (=> start!65180 e!412021))

(assert (=> start!65180 true))

(declare-fun array_inv!15537 (array!41306) Bool)

(assert (=> start!65180 (array_inv!15537 a!3186)))

(declare-fun b!736491 () Bool)

(declare-fun res!495080 () Bool)

(assert (=> b!736491 (=> (not res!495080) (not e!412015))))

(assert (=> b!736491 (= res!495080 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19763 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736493 () Bool)

(declare-fun Unit!25101 () Unit!25098)

(assert (=> b!736493 (= e!412016 Unit!25101)))

(assert (=> b!736493 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326671 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326672)))

(declare-fun b!736494 () Bool)

(declare-fun e!412018 () Bool)

(assert (=> b!736494 (= e!412020 e!412018)))

(declare-fun res!495077 () Bool)

(assert (=> b!736494 (=> res!495077 e!412018)))

(assert (=> b!736494 (= res!495077 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326671 #b00000000000000000000000000000000) (bvsge lt!326671 (size!20184 a!3186))))))

(declare-fun lt!326664 () Unit!25098)

(assert (=> b!736494 (= lt!326664 e!412016)))

(declare-fun c!81089 () Bool)

(declare-fun lt!326665 () Bool)

(assert (=> b!736494 (= c!81089 lt!326665)))

(assert (=> b!736494 (= lt!326665 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736494 (= lt!326671 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736495 () Bool)

(assert (=> b!736495 (= e!412018 true)))

(declare-fun lt!326660 () SeekEntryResult!7370)

(assert (=> b!736495 (= lt!326660 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326671 lt!326670 lt!326661 mask!3328))))

(declare-fun b!736496 () Bool)

(declare-fun e!412014 () Bool)

(assert (=> b!736496 (= e!412023 e!412014)))

(declare-fun res!495074 () Bool)

(assert (=> b!736496 (=> (not res!495074) (not e!412014))))

(declare-fun lt!326666 () SeekEntryResult!7370)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41306 (_ BitVec 32)) SeekEntryResult!7370)

(assert (=> b!736496 (= res!495074 (= (seekEntryOrOpen!0 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326666))))

(assert (=> b!736496 (= lt!326666 (Found!7370 j!159))))

(declare-fun b!736497 () Bool)

(declare-fun res!495079 () Bool)

(assert (=> b!736497 (=> (not res!495079) (not e!412021))))

(declare-fun arrayContainsKey!0 (array!41306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736497 (= res!495079 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736498 () Bool)

(declare-fun res!495081 () Bool)

(assert (=> b!736498 (=> (not res!495081) (not e!412021))))

(assert (=> b!736498 (= res!495081 (and (= (size!20184 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20184 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20184 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736499 () Bool)

(declare-fun res!495067 () Bool)

(assert (=> b!736499 (=> (not res!495067) (not e!412021))))

(assert (=> b!736499 (= res!495067 (validKeyInArray!0 (select (arr!19763 a!3186) j!159)))))

(declare-fun b!736500 () Bool)

(declare-fun res!495078 () Bool)

(assert (=> b!736500 (=> res!495078 e!412018)))

(assert (=> b!736500 (= res!495078 e!412022)))

(declare-fun c!81090 () Bool)

(assert (=> b!736500 (= c!81090 lt!326665)))

(declare-fun b!736501 () Bool)

(assert (=> b!736501 (= e!412017 e!412015)))

(declare-fun res!495070 () Bool)

(assert (=> b!736501 (=> (not res!495070) (not e!412015))))

(assert (=> b!736501 (= res!495070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19763 a!3186) j!159) mask!3328) (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326672))))

(assert (=> b!736501 (= lt!326672 (Intermediate!7370 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736502 () Bool)

(assert (=> b!736502 (= e!412022 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326671 resIntermediateIndex!5 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326669)))))

(declare-fun b!736503 () Bool)

(declare-fun res!495071 () Bool)

(assert (=> b!736503 (=> (not res!495071) (not e!412017))))

(assert (=> b!736503 (= res!495071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736504 () Bool)

(assert (=> b!736504 (= e!412021 e!412017)))

(declare-fun res!495068 () Bool)

(assert (=> b!736504 (=> (not res!495068) (not e!412017))))

(declare-fun lt!326667 () SeekEntryResult!7370)

(assert (=> b!736504 (= res!495068 (or (= lt!326667 (MissingZero!7370 i!1173)) (= lt!326667 (MissingVacant!7370 i!1173))))))

(assert (=> b!736504 (= lt!326667 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736505 () Bool)

(assert (=> b!736505 (= e!412014 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19763 a!3186) j!159) a!3186 mask!3328) lt!326666))))

(assert (= (and start!65180 res!495082) b!736498))

(assert (= (and b!736498 res!495081) b!736499))

(assert (= (and b!736499 res!495067) b!736482))

(assert (= (and b!736482 res!495069) b!736497))

(assert (= (and b!736497 res!495079) b!736504))

(assert (= (and b!736504 res!495068) b!736503))

(assert (= (and b!736503 res!495071) b!736488))

(assert (= (and b!736488 res!495076) b!736486))

(assert (= (and b!736486 res!495072) b!736501))

(assert (= (and b!736501 res!495070) b!736491))

(assert (= (and b!736491 res!495080) b!736487))

(assert (= (and b!736487 c!81088) b!736484))

(assert (= (and b!736487 (not c!81088)) b!736485))

(assert (= (and b!736487 res!495075) b!736492))

(assert (= (and b!736492 res!495083) b!736483))

(assert (= (and b!736483 res!495073) b!736496))

(assert (= (and b!736496 res!495074) b!736505))

(assert (= (and b!736483 (not res!495084)) b!736494))

(assert (= (and b!736494 c!81089) b!736493))

(assert (= (and b!736494 (not c!81089)) b!736490))

(assert (= (and b!736494 (not res!495077)) b!736500))

(assert (= (and b!736500 c!81090) b!736489))

(assert (= (and b!736500 (not c!81090)) b!736502))

(assert (= (and b!736500 (not res!495078)) b!736495))

(declare-fun m!688669 () Bool)

(assert (=> b!736490 m!688669))

(assert (=> b!736490 m!688669))

(declare-fun m!688671 () Bool)

(assert (=> b!736490 m!688671))

(assert (=> b!736490 m!688669))

(declare-fun m!688673 () Bool)

(assert (=> b!736490 m!688673))

(declare-fun m!688675 () Bool)

(assert (=> start!65180 m!688675))

(declare-fun m!688677 () Bool)

(assert (=> start!65180 m!688677))

(assert (=> b!736485 m!688669))

(assert (=> b!736485 m!688669))

(assert (=> b!736485 m!688671))

(assert (=> b!736502 m!688669))

(assert (=> b!736502 m!688669))

(assert (=> b!736502 m!688673))

(declare-fun m!688679 () Bool)

(assert (=> b!736495 m!688679))

(declare-fun m!688681 () Bool)

(assert (=> b!736482 m!688681))

(declare-fun m!688683 () Bool)

(assert (=> b!736494 m!688683))

(assert (=> b!736505 m!688669))

(assert (=> b!736505 m!688669))

(declare-fun m!688685 () Bool)

(assert (=> b!736505 m!688685))

(declare-fun m!688687 () Bool)

(assert (=> b!736488 m!688687))

(assert (=> b!736489 m!688669))

(assert (=> b!736489 m!688669))

(declare-fun m!688689 () Bool)

(assert (=> b!736489 m!688689))

(declare-fun m!688691 () Bool)

(assert (=> b!736492 m!688691))

(declare-fun m!688693 () Bool)

(assert (=> b!736492 m!688693))

(declare-fun m!688695 () Bool)

(assert (=> b!736492 m!688695))

(assert (=> b!736492 m!688693))

(declare-fun m!688697 () Bool)

(assert (=> b!736492 m!688697))

(declare-fun m!688699 () Bool)

(assert (=> b!736492 m!688699))

(assert (=> b!736493 m!688669))

(assert (=> b!736493 m!688669))

(assert (=> b!736493 m!688689))

(declare-fun m!688701 () Bool)

(assert (=> b!736497 m!688701))

(declare-fun m!688703 () Bool)

(assert (=> b!736483 m!688703))

(declare-fun m!688705 () Bool)

(assert (=> b!736483 m!688705))

(declare-fun m!688707 () Bool)

(assert (=> b!736503 m!688707))

(declare-fun m!688709 () Bool)

(assert (=> b!736504 m!688709))

(assert (=> b!736499 m!688669))

(assert (=> b!736499 m!688669))

(declare-fun m!688711 () Bool)

(assert (=> b!736499 m!688711))

(assert (=> b!736484 m!688669))

(assert (=> b!736484 m!688669))

(declare-fun m!688713 () Bool)

(assert (=> b!736484 m!688713))

(assert (=> b!736501 m!688669))

(assert (=> b!736501 m!688669))

(declare-fun m!688715 () Bool)

(assert (=> b!736501 m!688715))

(assert (=> b!736501 m!688715))

(assert (=> b!736501 m!688669))

(declare-fun m!688717 () Bool)

(assert (=> b!736501 m!688717))

(declare-fun m!688719 () Bool)

(assert (=> b!736491 m!688719))

(assert (=> b!736496 m!688669))

(assert (=> b!736496 m!688669))

(declare-fun m!688721 () Bool)

(assert (=> b!736496 m!688721))

(push 1)

(assert (not b!736499))

(assert (not b!736489))

(assert (not b!736503))

(assert (not b!736483))

(assert (not b!736495))

(assert (not b!736496))

(assert (not b!736490))

(assert (not b!736505))

(assert (not b!736502))

(assert (not b!736492))

(assert (not b!736485))

(assert (not start!65180))

(assert (not b!736484))

(assert (not b!736482))

(assert (not b!736501))

(assert (not b!736504))

(assert (not b!736497))

(assert (not b!736493))

(assert (not b!736494))

(assert (not b!736488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

