; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64724 () Bool)

(assert start!64724)

(declare-fun b!729690 () Bool)

(declare-fun e!408410 () Bool)

(assert (=> b!729690 (= e!408410 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323317 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729690 (= lt!323317 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729691 () Bool)

(declare-fun res!490192 () Bool)

(declare-fun e!408414 () Bool)

(assert (=> b!729691 (=> (not res!490192) (not e!408414))))

(declare-datatypes ((array!41126 0))(
  ( (array!41127 (arr!19679 (Array (_ BitVec 32) (_ BitVec 64))) (size!20100 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41126)

(declare-datatypes ((List!13734 0))(
  ( (Nil!13731) (Cons!13730 (h!14790 (_ BitVec 64)) (t!20057 List!13734)) )
))
(declare-fun arrayNoDuplicates!0 (array!41126 (_ BitVec 32) List!13734) Bool)

(assert (=> b!729691 (= res!490192 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13731))))

(declare-fun b!729692 () Bool)

(declare-fun res!490194 () Bool)

(assert (=> b!729692 (=> (not res!490194) (not e!408414))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729692 (= res!490194 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20100 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20100 a!3186))))))

(declare-fun b!729693 () Bool)

(declare-fun e!408409 () Bool)

(assert (=> b!729693 (= e!408409 (not e!408410))))

(declare-fun res!490202 () Bool)

(assert (=> b!729693 (=> res!490202 e!408410)))

(declare-datatypes ((SeekEntryResult!7286 0))(
  ( (MissingZero!7286 (index!31511 (_ BitVec 32))) (Found!7286 (index!31512 (_ BitVec 32))) (Intermediate!7286 (undefined!8098 Bool) (index!31513 (_ BitVec 32)) (x!62517 (_ BitVec 32))) (Undefined!7286) (MissingVacant!7286 (index!31514 (_ BitVec 32))) )
))
(declare-fun lt!323313 () SeekEntryResult!7286)

(assert (=> b!729693 (= res!490202 (or (not (is-Intermediate!7286 lt!323313)) (bvsge x!1131 (x!62517 lt!323313))))))

(declare-fun e!408413 () Bool)

(assert (=> b!729693 e!408413))

(declare-fun res!490196 () Bool)

(assert (=> b!729693 (=> (not res!490196) (not e!408413))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41126 (_ BitVec 32)) Bool)

(assert (=> b!729693 (= res!490196 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24890 0))(
  ( (Unit!24891) )
))
(declare-fun lt!323321 () Unit!24890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24890)

(assert (=> b!729693 (= lt!323321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729694 () Bool)

(declare-fun res!490201 () Bool)

(declare-fun e!408406 () Bool)

(assert (=> b!729694 (=> (not res!490201) (not e!408406))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729694 (= res!490201 (and (= (size!20100 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20100 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20100 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729696 () Bool)

(declare-fun e!408412 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41126 (_ BitVec 32)) SeekEntryResult!7286)

(assert (=> b!729696 (= e!408412 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19679 a!3186) j!159) a!3186 mask!3328) (Found!7286 j!159)))))

(declare-fun b!729697 () Bool)

(declare-fun res!490198 () Bool)

(assert (=> b!729697 (=> (not res!490198) (not e!408406))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729697 (= res!490198 (validKeyInArray!0 k!2102))))

(declare-fun b!729698 () Bool)

(declare-fun res!490195 () Bool)

(declare-fun e!408407 () Bool)

(assert (=> b!729698 (=> (not res!490195) (not e!408407))))

(assert (=> b!729698 (= res!490195 e!408412)))

(declare-fun c!80124 () Bool)

(assert (=> b!729698 (= c!80124 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729699 () Bool)

(declare-fun res!490204 () Bool)

(assert (=> b!729699 (=> (not res!490204) (not e!408406))))

(assert (=> b!729699 (= res!490204 (validKeyInArray!0 (select (arr!19679 a!3186) j!159)))))

(declare-fun b!729700 () Bool)

(declare-fun res!490206 () Bool)

(assert (=> b!729700 (=> (not res!490206) (not e!408406))))

(declare-fun arrayContainsKey!0 (array!41126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729700 (= res!490206 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!323315 () SeekEntryResult!7286)

(declare-fun b!729701 () Bool)

(declare-fun e!408411 () Bool)

(assert (=> b!729701 (= e!408411 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19679 a!3186) j!159) a!3186 mask!3328) lt!323315))))

(declare-fun b!729702 () Bool)

(declare-fun res!490205 () Bool)

(assert (=> b!729702 (=> (not res!490205) (not e!408414))))

(assert (=> b!729702 (= res!490205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729703 () Bool)

(assert (=> b!729703 (= e!408407 e!408409)))

(declare-fun res!490200 () Bool)

(assert (=> b!729703 (=> (not res!490200) (not e!408409))))

(declare-fun lt!323314 () SeekEntryResult!7286)

(assert (=> b!729703 (= res!490200 (= lt!323314 lt!323313))))

(declare-fun lt!323320 () (_ BitVec 64))

(declare-fun lt!323319 () array!41126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41126 (_ BitVec 32)) SeekEntryResult!7286)

(assert (=> b!729703 (= lt!323313 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323320 lt!323319 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729703 (= lt!323314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323320 mask!3328) lt!323320 lt!323319 mask!3328))))

(assert (=> b!729703 (= lt!323320 (select (store (arr!19679 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729703 (= lt!323319 (array!41127 (store (arr!19679 a!3186) i!1173 k!2102) (size!20100 a!3186)))))

(declare-fun b!729704 () Bool)

(assert (=> b!729704 (= e!408413 e!408411)))

(declare-fun res!490193 () Bool)

(assert (=> b!729704 (=> (not res!490193) (not e!408411))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41126 (_ BitVec 32)) SeekEntryResult!7286)

(assert (=> b!729704 (= res!490193 (= (seekEntryOrOpen!0 (select (arr!19679 a!3186) j!159) a!3186 mask!3328) lt!323315))))

(assert (=> b!729704 (= lt!323315 (Found!7286 j!159))))

(declare-fun b!729705 () Bool)

(declare-fun lt!323318 () SeekEntryResult!7286)

(assert (=> b!729705 (= e!408412 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19679 a!3186) j!159) a!3186 mask!3328) lt!323318))))

(declare-fun res!490203 () Bool)

(assert (=> start!64724 (=> (not res!490203) (not e!408406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64724 (= res!490203 (validMask!0 mask!3328))))

(assert (=> start!64724 e!408406))

(assert (=> start!64724 true))

(declare-fun array_inv!15453 (array!41126) Bool)

(assert (=> start!64724 (array_inv!15453 a!3186)))

(declare-fun b!729695 () Bool)

(assert (=> b!729695 (= e!408406 e!408414)))

(declare-fun res!490199 () Bool)

(assert (=> b!729695 (=> (not res!490199) (not e!408414))))

(declare-fun lt!323316 () SeekEntryResult!7286)

(assert (=> b!729695 (= res!490199 (or (= lt!323316 (MissingZero!7286 i!1173)) (= lt!323316 (MissingVacant!7286 i!1173))))))

(assert (=> b!729695 (= lt!323316 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729706 () Bool)

(assert (=> b!729706 (= e!408414 e!408407)))

(declare-fun res!490191 () Bool)

(assert (=> b!729706 (=> (not res!490191) (not e!408407))))

(assert (=> b!729706 (= res!490191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19679 a!3186) j!159) mask!3328) (select (arr!19679 a!3186) j!159) a!3186 mask!3328) lt!323318))))

(assert (=> b!729706 (= lt!323318 (Intermediate!7286 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729707 () Bool)

(declare-fun res!490197 () Bool)

(assert (=> b!729707 (=> (not res!490197) (not e!408407))))

(assert (=> b!729707 (= res!490197 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19679 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64724 res!490203) b!729694))

(assert (= (and b!729694 res!490201) b!729699))

(assert (= (and b!729699 res!490204) b!729697))

(assert (= (and b!729697 res!490198) b!729700))

(assert (= (and b!729700 res!490206) b!729695))

(assert (= (and b!729695 res!490199) b!729702))

(assert (= (and b!729702 res!490205) b!729691))

(assert (= (and b!729691 res!490192) b!729692))

(assert (= (and b!729692 res!490194) b!729706))

(assert (= (and b!729706 res!490191) b!729707))

(assert (= (and b!729707 res!490197) b!729698))

(assert (= (and b!729698 c!80124) b!729705))

(assert (= (and b!729698 (not c!80124)) b!729696))

(assert (= (and b!729698 res!490195) b!729703))

(assert (= (and b!729703 res!490200) b!729693))

(assert (= (and b!729693 res!490196) b!729704))

(assert (= (and b!729704 res!490193) b!729701))

(assert (= (and b!729693 (not res!490202)) b!729690))

(declare-fun m!683389 () Bool)

(assert (=> b!729703 m!683389))

(declare-fun m!683391 () Bool)

(assert (=> b!729703 m!683391))

(declare-fun m!683393 () Bool)

(assert (=> b!729703 m!683393))

(declare-fun m!683395 () Bool)

(assert (=> b!729703 m!683395))

(assert (=> b!729703 m!683389))

(declare-fun m!683397 () Bool)

(assert (=> b!729703 m!683397))

(declare-fun m!683399 () Bool)

(assert (=> b!729701 m!683399))

(assert (=> b!729701 m!683399))

(declare-fun m!683401 () Bool)

(assert (=> b!729701 m!683401))

(declare-fun m!683403 () Bool)

(assert (=> b!729693 m!683403))

(declare-fun m!683405 () Bool)

(assert (=> b!729693 m!683405))

(declare-fun m!683407 () Bool)

(assert (=> b!729690 m!683407))

(declare-fun m!683409 () Bool)

(assert (=> b!729707 m!683409))

(declare-fun m!683411 () Bool)

(assert (=> b!729700 m!683411))

(assert (=> b!729706 m!683399))

(assert (=> b!729706 m!683399))

(declare-fun m!683413 () Bool)

(assert (=> b!729706 m!683413))

(assert (=> b!729706 m!683413))

(assert (=> b!729706 m!683399))

(declare-fun m!683415 () Bool)

(assert (=> b!729706 m!683415))

(assert (=> b!729705 m!683399))

(assert (=> b!729705 m!683399))

(declare-fun m!683417 () Bool)

(assert (=> b!729705 m!683417))

(declare-fun m!683419 () Bool)

(assert (=> start!64724 m!683419))

(declare-fun m!683421 () Bool)

(assert (=> start!64724 m!683421))

(declare-fun m!683423 () Bool)

(assert (=> b!729691 m!683423))

(assert (=> b!729699 m!683399))

(assert (=> b!729699 m!683399))

(declare-fun m!683425 () Bool)

(assert (=> b!729699 m!683425))

(declare-fun m!683427 () Bool)

(assert (=> b!729702 m!683427))

(declare-fun m!683429 () Bool)

(assert (=> b!729695 m!683429))

(declare-fun m!683431 () Bool)

(assert (=> b!729697 m!683431))

(assert (=> b!729696 m!683399))

(assert (=> b!729696 m!683399))

(declare-fun m!683433 () Bool)

(assert (=> b!729696 m!683433))

(assert (=> b!729704 m!683399))

(assert (=> b!729704 m!683399))

(declare-fun m!683435 () Bool)

(assert (=> b!729704 m!683435))

(push 1)

