; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66778 () Bool)

(assert start!66778)

(declare-fun b!769085 () Bool)

(declare-fun e!428297 () Bool)

(declare-fun e!428298 () Bool)

(assert (=> b!769085 (= e!428297 e!428298)))

(declare-fun res!520215 () Bool)

(assert (=> b!769085 (=> (not res!520215) (not e!428298))))

(declare-datatypes ((SeekEntryResult!7851 0))(
  ( (MissingZero!7851 (index!33771 (_ BitVec 32))) (Found!7851 (index!33772 (_ BitVec 32))) (Intermediate!7851 (undefined!8663 Bool) (index!33773 (_ BitVec 32)) (x!64735 (_ BitVec 32))) (Undefined!7851) (MissingVacant!7851 (index!33774 (_ BitVec 32))) )
))
(declare-fun lt!342195 () SeekEntryResult!7851)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769085 (= res!520215 (or (= lt!342195 (MissingZero!7851 i!1173)) (= lt!342195 (MissingVacant!7851 i!1173))))))

(declare-datatypes ((array!42295 0))(
  ( (array!42296 (arr!20244 (Array (_ BitVec 32) (_ BitVec 64))) (size!20665 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42295)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42295 (_ BitVec 32)) SeekEntryResult!7851)

(assert (=> b!769085 (= lt!342195 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769086 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342199 () SeekEntryResult!7851)

(declare-fun e!428296 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42295 (_ BitVec 32)) SeekEntryResult!7851)

(assert (=> b!769086 (= e!428296 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) lt!342199))))

(declare-fun b!769087 () Bool)

(declare-fun res!520213 () Bool)

(assert (=> b!769087 (=> (not res!520213) (not e!428297))))

(declare-fun arrayContainsKey!0 (array!42295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769087 (= res!520213 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!769088 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42295 (_ BitVec 32)) SeekEntryResult!7851)

(assert (=> b!769088 (= e!428296 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) (Found!7851 j!159)))))

(declare-fun b!769089 () Bool)

(declare-fun res!520218 () Bool)

(assert (=> b!769089 (=> (not res!520218) (not e!428298))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769089 (= res!520218 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20665 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20665 a!3186))))))

(declare-fun b!769090 () Bool)

(declare-fun res!520211 () Bool)

(assert (=> b!769090 (=> (not res!520211) (not e!428297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769090 (= res!520211 (validKeyInArray!0 (select (arr!20244 a!3186) j!159)))))

(declare-fun b!769091 () Bool)

(declare-fun e!428291 () Bool)

(declare-fun e!428292 () Bool)

(assert (=> b!769091 (= e!428291 (not e!428292))))

(declare-fun res!520212 () Bool)

(assert (=> b!769091 (=> res!520212 e!428292)))

(declare-fun lt!342190 () SeekEntryResult!7851)

(assert (=> b!769091 (= res!520212 (or (not (is-Intermediate!7851 lt!342190)) (bvsge x!1131 (x!64735 lt!342190))))))

(declare-fun e!428294 () Bool)

(assert (=> b!769091 e!428294))

(declare-fun res!520204 () Bool)

(assert (=> b!769091 (=> (not res!520204) (not e!428294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42295 (_ BitVec 32)) Bool)

(assert (=> b!769091 (= res!520204 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26440 0))(
  ( (Unit!26441) )
))
(declare-fun lt!342189 () Unit!26440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26440)

(assert (=> b!769091 (= lt!342189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769092 () Bool)

(declare-fun lt!342192 () SeekEntryResult!7851)

(declare-fun e!428299 () Bool)

(assert (=> b!769092 (= e!428299 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) lt!342192))))

(declare-fun b!769093 () Bool)

(declare-fun res!520210 () Bool)

(declare-fun e!428293 () Bool)

(assert (=> b!769093 (=> (not res!520210) (not e!428293))))

(assert (=> b!769093 (= res!520210 e!428296)))

(declare-fun c!84837 () Bool)

(assert (=> b!769093 (= c!84837 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769094 () Bool)

(declare-fun res!520219 () Bool)

(assert (=> b!769094 (=> (not res!520219) (not e!428297))))

(assert (=> b!769094 (= res!520219 (and (= (size!20665 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20665 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20665 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769095 () Bool)

(assert (=> b!769095 (= e!428298 e!428293)))

(declare-fun res!520209 () Bool)

(assert (=> b!769095 (=> (not res!520209) (not e!428293))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769095 (= res!520209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20244 a!3186) j!159) mask!3328) (select (arr!20244 a!3186) j!159) a!3186 mask!3328) lt!342199))))

(assert (=> b!769095 (= lt!342199 (Intermediate!7851 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!520205 () Bool)

(assert (=> start!66778 (=> (not res!520205) (not e!428297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66778 (= res!520205 (validMask!0 mask!3328))))

(assert (=> start!66778 e!428297))

(assert (=> start!66778 true))

(declare-fun array_inv!16018 (array!42295) Bool)

(assert (=> start!66778 (array_inv!16018 a!3186)))

(declare-fun b!769096 () Bool)

(declare-fun res!520217 () Bool)

(assert (=> b!769096 (=> (not res!520217) (not e!428297))))

(assert (=> b!769096 (= res!520217 (validKeyInArray!0 k!2102))))

(declare-fun b!769097 () Bool)

(declare-fun res!520216 () Bool)

(assert (=> b!769097 (=> (not res!520216) (not e!428298))))

(declare-datatypes ((List!14299 0))(
  ( (Nil!14296) (Cons!14295 (h!15394 (_ BitVec 64)) (t!20622 List!14299)) )
))
(declare-fun arrayNoDuplicates!0 (array!42295 (_ BitVec 32) List!14299) Bool)

(assert (=> b!769097 (= res!520216 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14296))))

(declare-fun b!769098 () Bool)

(declare-fun e!428295 () Unit!26440)

(declare-fun Unit!26442 () Unit!26440)

(assert (=> b!769098 (= e!428295 Unit!26442)))

(declare-fun lt!342197 () (_ BitVec 32))

(assert (=> b!769098 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342197 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) lt!342199)))

(declare-fun b!769099 () Bool)

(assert (=> b!769099 (= e!428294 e!428299)))

(declare-fun res!520208 () Bool)

(assert (=> b!769099 (=> (not res!520208) (not e!428299))))

(assert (=> b!769099 (= res!520208 (= (seekEntryOrOpen!0 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) lt!342192))))

(assert (=> b!769099 (= lt!342192 (Found!7851 j!159))))

(declare-fun b!769100 () Bool)

(declare-fun res!520214 () Bool)

(assert (=> b!769100 (=> (not res!520214) (not e!428293))))

(assert (=> b!769100 (= res!520214 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20244 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769101 () Bool)

(declare-fun Unit!26443 () Unit!26440)

(assert (=> b!769101 (= e!428295 Unit!26443)))

(declare-fun lt!342198 () SeekEntryResult!7851)

(assert (=> b!769101 (= lt!342198 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20244 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769101 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342197 resIntermediateIndex!5 (select (arr!20244 a!3186) j!159) a!3186 mask!3328) (Found!7851 j!159))))

(declare-fun b!769102 () Bool)

(declare-fun res!520206 () Bool)

(assert (=> b!769102 (=> (not res!520206) (not e!428298))))

(assert (=> b!769102 (= res!520206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769103 () Bool)

(assert (=> b!769103 (= e!428293 e!428291)))

(declare-fun res!520207 () Bool)

(assert (=> b!769103 (=> (not res!520207) (not e!428291))))

(declare-fun lt!342193 () SeekEntryResult!7851)

(assert (=> b!769103 (= res!520207 (= lt!342193 lt!342190))))

(declare-fun lt!342194 () array!42295)

(declare-fun lt!342191 () (_ BitVec 64))

(assert (=> b!769103 (= lt!342190 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342191 lt!342194 mask!3328))))

(assert (=> b!769103 (= lt!342193 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342191 mask!3328) lt!342191 lt!342194 mask!3328))))

(assert (=> b!769103 (= lt!342191 (select (store (arr!20244 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769103 (= lt!342194 (array!42296 (store (arr!20244 a!3186) i!1173 k!2102) (size!20665 a!3186)))))

(declare-fun b!769104 () Bool)

(assert (=> b!769104 (= e!428292 true)))

(declare-fun lt!342196 () Unit!26440)

(assert (=> b!769104 (= lt!342196 e!428295)))

(declare-fun c!84836 () Bool)

(assert (=> b!769104 (= c!84836 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769104 (= lt!342197 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!66778 res!520205) b!769094))

(assert (= (and b!769094 res!520219) b!769090))

(assert (= (and b!769090 res!520211) b!769096))

(assert (= (and b!769096 res!520217) b!769087))

(assert (= (and b!769087 res!520213) b!769085))

(assert (= (and b!769085 res!520215) b!769102))

(assert (= (and b!769102 res!520206) b!769097))

(assert (= (and b!769097 res!520216) b!769089))

(assert (= (and b!769089 res!520218) b!769095))

(assert (= (and b!769095 res!520209) b!769100))

(assert (= (and b!769100 res!520214) b!769093))

(assert (= (and b!769093 c!84837) b!769086))

(assert (= (and b!769093 (not c!84837)) b!769088))

(assert (= (and b!769093 res!520210) b!769103))

(assert (= (and b!769103 res!520207) b!769091))

(assert (= (and b!769091 res!520204) b!769099))

(assert (= (and b!769099 res!520208) b!769092))

(assert (= (and b!769091 (not res!520212)) b!769104))

(assert (= (and b!769104 c!84836) b!769098))

(assert (= (and b!769104 (not c!84836)) b!769101))

(declare-fun m!714607 () Bool)

(assert (=> b!769086 m!714607))

(assert (=> b!769086 m!714607))

(declare-fun m!714609 () Bool)

(assert (=> b!769086 m!714609))

(assert (=> b!769090 m!714607))

(assert (=> b!769090 m!714607))

(declare-fun m!714611 () Bool)

(assert (=> b!769090 m!714611))

(assert (=> b!769092 m!714607))

(assert (=> b!769092 m!714607))

(declare-fun m!714613 () Bool)

(assert (=> b!769092 m!714613))

(declare-fun m!714615 () Bool)

(assert (=> start!66778 m!714615))

(declare-fun m!714617 () Bool)

(assert (=> start!66778 m!714617))

(declare-fun m!714619 () Bool)

(assert (=> b!769087 m!714619))

(assert (=> b!769095 m!714607))

(assert (=> b!769095 m!714607))

(declare-fun m!714621 () Bool)

(assert (=> b!769095 m!714621))

(assert (=> b!769095 m!714621))

(assert (=> b!769095 m!714607))

(declare-fun m!714623 () Bool)

(assert (=> b!769095 m!714623))

(declare-fun m!714625 () Bool)

(assert (=> b!769102 m!714625))

(assert (=> b!769101 m!714607))

(assert (=> b!769101 m!714607))

(declare-fun m!714627 () Bool)

(assert (=> b!769101 m!714627))

(assert (=> b!769101 m!714607))

(declare-fun m!714629 () Bool)

(assert (=> b!769101 m!714629))

(declare-fun m!714631 () Bool)

(assert (=> b!769096 m!714631))

(declare-fun m!714633 () Bool)

(assert (=> b!769091 m!714633))

(declare-fun m!714635 () Bool)

(assert (=> b!769091 m!714635))

(declare-fun m!714637 () Bool)

(assert (=> b!769097 m!714637))

(declare-fun m!714639 () Bool)

(assert (=> b!769085 m!714639))

(assert (=> b!769088 m!714607))

(assert (=> b!769088 m!714607))

(assert (=> b!769088 m!714627))

(declare-fun m!714641 () Bool)

(assert (=> b!769104 m!714641))

(assert (=> b!769098 m!714607))

(assert (=> b!769098 m!714607))

(declare-fun m!714643 () Bool)

(assert (=> b!769098 m!714643))

(assert (=> b!769099 m!714607))

(assert (=> b!769099 m!714607))

(declare-fun m!714645 () Bool)

(assert (=> b!769099 m!714645))

(declare-fun m!714647 () Bool)

(assert (=> b!769103 m!714647))

(declare-fun m!714649 () Bool)

(assert (=> b!769103 m!714649))

(declare-fun m!714651 () Bool)

(assert (=> b!769103 m!714651))

(declare-fun m!714653 () Bool)

(assert (=> b!769103 m!714653))

(assert (=> b!769103 m!714651))

(declare-fun m!714655 () Bool)

(assert (=> b!769103 m!714655))

(declare-fun m!714657 () Bool)

(assert (=> b!769100 m!714657))

(push 1)

