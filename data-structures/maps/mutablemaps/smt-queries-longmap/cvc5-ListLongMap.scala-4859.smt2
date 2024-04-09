; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67012 () Bool)

(assert start!67012)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42391 0))(
  ( (array!42392 (arr!20289 (Array (_ BitVec 32) (_ BitVec 64))) (size!20710 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42391)

(declare-fun b!772709 () Bool)

(declare-fun e!430199 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7896 0))(
  ( (MissingZero!7896 (index!33951 (_ BitVec 32))) (Found!7896 (index!33952 (_ BitVec 32))) (Intermediate!7896 (undefined!8708 Bool) (index!33953 (_ BitVec 32)) (x!64924 (_ BitVec 32))) (Undefined!7896) (MissingVacant!7896 (index!33954 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42391 (_ BitVec 32)) SeekEntryResult!7896)

(assert (=> b!772709 (= e!430199 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) (Found!7896 j!159)))))

(declare-fun b!772710 () Bool)

(declare-fun e!430192 () Bool)

(declare-fun e!430201 () Bool)

(assert (=> b!772710 (= e!430192 (not e!430201))))

(declare-fun res!522647 () Bool)

(assert (=> b!772710 (=> res!522647 e!430201)))

(declare-fun lt!344049 () SeekEntryResult!7896)

(assert (=> b!772710 (= res!522647 (or (not (is-Intermediate!7896 lt!344049)) (bvsge x!1131 (x!64924 lt!344049))))))

(declare-fun e!430197 () Bool)

(assert (=> b!772710 e!430197))

(declare-fun res!522642 () Bool)

(assert (=> b!772710 (=> (not res!522642) (not e!430197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42391 (_ BitVec 32)) Bool)

(assert (=> b!772710 (= res!522642 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26620 0))(
  ( (Unit!26621) )
))
(declare-fun lt!344048 () Unit!26620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42391 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26620)

(assert (=> b!772710 (= lt!344048 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772711 () Bool)

(declare-fun res!522641 () Bool)

(declare-fun e!430195 () Bool)

(assert (=> b!772711 (=> (not res!522641) (not e!430195))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772711 (= res!522641 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772712 () Bool)

(assert (=> b!772712 (= e!430201 true)))

(declare-fun lt!344046 () Unit!26620)

(declare-fun e!430200 () Unit!26620)

(assert (=> b!772712 (= lt!344046 e!430200)))

(declare-fun c!85436 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772712 (= c!85436 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!344047 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772712 (= lt!344047 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772713 () Bool)

(declare-fun e!430196 () Bool)

(assert (=> b!772713 (= e!430195 e!430196)))

(declare-fun res!522648 () Bool)

(assert (=> b!772713 (=> (not res!522648) (not e!430196))))

(declare-fun lt!344055 () SeekEntryResult!7896)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772713 (= res!522648 (or (= lt!344055 (MissingZero!7896 i!1173)) (= lt!344055 (MissingVacant!7896 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42391 (_ BitVec 32)) SeekEntryResult!7896)

(assert (=> b!772713 (= lt!344055 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!344051 () SeekEntryResult!7896)

(declare-fun b!772715 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42391 (_ BitVec 32)) SeekEntryResult!7896)

(assert (=> b!772715 (= e!430199 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) lt!344051))))

(declare-fun b!772716 () Bool)

(declare-fun res!522644 () Bool)

(assert (=> b!772716 (=> (not res!522644) (not e!430195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772716 (= res!522644 (validKeyInArray!0 k!2102))))

(declare-fun b!772717 () Bool)

(declare-fun Unit!26622 () Unit!26620)

(assert (=> b!772717 (= e!430200 Unit!26622)))

(assert (=> b!772717 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344047 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) lt!344051)))

(declare-fun b!772718 () Bool)

(declare-fun res!522643 () Bool)

(assert (=> b!772718 (=> (not res!522643) (not e!430195))))

(assert (=> b!772718 (= res!522643 (and (= (size!20710 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20710 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20710 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!344052 () SeekEntryResult!7896)

(declare-fun b!772719 () Bool)

(declare-fun e!430194 () Bool)

(assert (=> b!772719 (= e!430194 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) lt!344052))))

(declare-fun b!772720 () Bool)

(declare-fun e!430198 () Bool)

(assert (=> b!772720 (= e!430196 e!430198)))

(declare-fun res!522635 () Bool)

(assert (=> b!772720 (=> (not res!522635) (not e!430198))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772720 (= res!522635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20289 a!3186) j!159) mask!3328) (select (arr!20289 a!3186) j!159) a!3186 mask!3328) lt!344051))))

(assert (=> b!772720 (= lt!344051 (Intermediate!7896 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772721 () Bool)

(declare-fun res!522637 () Bool)

(assert (=> b!772721 (=> (not res!522637) (not e!430195))))

(assert (=> b!772721 (= res!522637 (validKeyInArray!0 (select (arr!20289 a!3186) j!159)))))

(declare-fun b!772722 () Bool)

(declare-fun res!522639 () Bool)

(assert (=> b!772722 (=> (not res!522639) (not e!430196))))

(assert (=> b!772722 (= res!522639 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20710 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20710 a!3186))))))

(declare-fun b!772723 () Bool)

(assert (=> b!772723 (= e!430197 e!430194)))

(declare-fun res!522649 () Bool)

(assert (=> b!772723 (=> (not res!522649) (not e!430194))))

(assert (=> b!772723 (= res!522649 (= (seekEntryOrOpen!0 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) lt!344052))))

(assert (=> b!772723 (= lt!344052 (Found!7896 j!159))))

(declare-fun b!772724 () Bool)

(declare-fun res!522634 () Bool)

(assert (=> b!772724 (=> (not res!522634) (not e!430198))))

(assert (=> b!772724 (= res!522634 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20289 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772725 () Bool)

(declare-fun Unit!26623 () Unit!26620)

(assert (=> b!772725 (= e!430200 Unit!26623)))

(declare-fun lt!344050 () SeekEntryResult!7896)

(assert (=> b!772725 (= lt!344050 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20289 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!772725 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344047 resIntermediateIndex!5 (select (arr!20289 a!3186) j!159) a!3186 mask!3328) (Found!7896 j!159))))

(declare-fun b!772726 () Bool)

(declare-fun res!522640 () Bool)

(assert (=> b!772726 (=> (not res!522640) (not e!430198))))

(assert (=> b!772726 (= res!522640 e!430199)))

(declare-fun c!85437 () Bool)

(assert (=> b!772726 (= c!85437 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772714 () Bool)

(declare-fun res!522645 () Bool)

(assert (=> b!772714 (=> (not res!522645) (not e!430196))))

(declare-datatypes ((List!14344 0))(
  ( (Nil!14341) (Cons!14340 (h!15445 (_ BitVec 64)) (t!20667 List!14344)) )
))
(declare-fun arrayNoDuplicates!0 (array!42391 (_ BitVec 32) List!14344) Bool)

(assert (=> b!772714 (= res!522645 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14341))))

(declare-fun res!522646 () Bool)

(assert (=> start!67012 (=> (not res!522646) (not e!430195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67012 (= res!522646 (validMask!0 mask!3328))))

(assert (=> start!67012 e!430195))

(assert (=> start!67012 true))

(declare-fun array_inv!16063 (array!42391) Bool)

(assert (=> start!67012 (array_inv!16063 a!3186)))

(declare-fun b!772727 () Bool)

(declare-fun res!522636 () Bool)

(assert (=> b!772727 (=> (not res!522636) (not e!430196))))

(assert (=> b!772727 (= res!522636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772728 () Bool)

(assert (=> b!772728 (= e!430198 e!430192)))

(declare-fun res!522638 () Bool)

(assert (=> b!772728 (=> (not res!522638) (not e!430192))))

(declare-fun lt!344054 () SeekEntryResult!7896)

(assert (=> b!772728 (= res!522638 (= lt!344054 lt!344049))))

(declare-fun lt!344056 () array!42391)

(declare-fun lt!344053 () (_ BitVec 64))

(assert (=> b!772728 (= lt!344049 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344053 lt!344056 mask!3328))))

(assert (=> b!772728 (= lt!344054 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344053 mask!3328) lt!344053 lt!344056 mask!3328))))

(assert (=> b!772728 (= lt!344053 (select (store (arr!20289 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772728 (= lt!344056 (array!42392 (store (arr!20289 a!3186) i!1173 k!2102) (size!20710 a!3186)))))

(assert (= (and start!67012 res!522646) b!772718))

(assert (= (and b!772718 res!522643) b!772721))

(assert (= (and b!772721 res!522637) b!772716))

(assert (= (and b!772716 res!522644) b!772711))

(assert (= (and b!772711 res!522641) b!772713))

(assert (= (and b!772713 res!522648) b!772727))

(assert (= (and b!772727 res!522636) b!772714))

(assert (= (and b!772714 res!522645) b!772722))

(assert (= (and b!772722 res!522639) b!772720))

(assert (= (and b!772720 res!522635) b!772724))

(assert (= (and b!772724 res!522634) b!772726))

(assert (= (and b!772726 c!85437) b!772715))

(assert (= (and b!772726 (not c!85437)) b!772709))

(assert (= (and b!772726 res!522640) b!772728))

(assert (= (and b!772728 res!522638) b!772710))

(assert (= (and b!772710 res!522642) b!772723))

(assert (= (and b!772723 res!522649) b!772719))

(assert (= (and b!772710 (not res!522647)) b!772712))

(assert (= (and b!772712 c!85436) b!772717))

(assert (= (and b!772712 (not c!85436)) b!772725))

(declare-fun m!717595 () Bool)

(assert (=> b!772723 m!717595))

(assert (=> b!772723 m!717595))

(declare-fun m!717597 () Bool)

(assert (=> b!772723 m!717597))

(declare-fun m!717599 () Bool)

(assert (=> b!772710 m!717599))

(declare-fun m!717601 () Bool)

(assert (=> b!772710 m!717601))

(assert (=> b!772725 m!717595))

(assert (=> b!772725 m!717595))

(declare-fun m!717603 () Bool)

(assert (=> b!772725 m!717603))

(assert (=> b!772725 m!717595))

(declare-fun m!717605 () Bool)

(assert (=> b!772725 m!717605))

(declare-fun m!717607 () Bool)

(assert (=> b!772711 m!717607))

(assert (=> b!772715 m!717595))

(assert (=> b!772715 m!717595))

(declare-fun m!717609 () Bool)

(assert (=> b!772715 m!717609))

(assert (=> b!772709 m!717595))

(assert (=> b!772709 m!717595))

(assert (=> b!772709 m!717603))

(assert (=> b!772721 m!717595))

(assert (=> b!772721 m!717595))

(declare-fun m!717611 () Bool)

(assert (=> b!772721 m!717611))

(assert (=> b!772717 m!717595))

(assert (=> b!772717 m!717595))

(declare-fun m!717613 () Bool)

(assert (=> b!772717 m!717613))

(assert (=> b!772720 m!717595))

(assert (=> b!772720 m!717595))

(declare-fun m!717615 () Bool)

(assert (=> b!772720 m!717615))

(assert (=> b!772720 m!717615))

(assert (=> b!772720 m!717595))

(declare-fun m!717617 () Bool)

(assert (=> b!772720 m!717617))

(declare-fun m!717619 () Bool)

(assert (=> b!772712 m!717619))

(declare-fun m!717621 () Bool)

(assert (=> b!772724 m!717621))

(assert (=> b!772719 m!717595))

(assert (=> b!772719 m!717595))

(declare-fun m!717623 () Bool)

(assert (=> b!772719 m!717623))

(declare-fun m!717625 () Bool)

(assert (=> b!772728 m!717625))

(assert (=> b!772728 m!717625))

(declare-fun m!717627 () Bool)

(assert (=> b!772728 m!717627))

(declare-fun m!717629 () Bool)

(assert (=> b!772728 m!717629))

(declare-fun m!717631 () Bool)

(assert (=> b!772728 m!717631))

(declare-fun m!717633 () Bool)

(assert (=> b!772728 m!717633))

(declare-fun m!717635 () Bool)

(assert (=> b!772713 m!717635))

(declare-fun m!717637 () Bool)

(assert (=> b!772716 m!717637))

(declare-fun m!717639 () Bool)

(assert (=> b!772714 m!717639))

(declare-fun m!717641 () Bool)

(assert (=> b!772727 m!717641))

(declare-fun m!717643 () Bool)

(assert (=> start!67012 m!717643))

(declare-fun m!717645 () Bool)

(assert (=> start!67012 m!717645))

(push 1)

