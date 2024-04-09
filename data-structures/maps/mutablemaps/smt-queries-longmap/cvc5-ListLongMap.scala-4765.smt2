; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65668 () Bool)

(assert start!65668)

(declare-fun b!751708 () Bool)

(declare-fun e!419352 () Bool)

(declare-datatypes ((SeekEntryResult!7614 0))(
  ( (MissingZero!7614 (index!32823 (_ BitVec 32))) (Found!7614 (index!32824 (_ BitVec 32))) (Intermediate!7614 (undefined!8426 Bool) (index!32825 (_ BitVec 32)) (x!63773 (_ BitVec 32))) (Undefined!7614) (MissingVacant!7614 (index!32826 (_ BitVec 32))) )
))
(declare-fun lt!334356 () SeekEntryResult!7614)

(declare-fun lt!334353 () SeekEntryResult!7614)

(assert (=> b!751708 (= e!419352 (= lt!334356 lt!334353))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41794 0))(
  ( (array!41795 (arr!20007 (Array (_ BitVec 32) (_ BitVec 64))) (size!20428 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41794)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!419353 () Bool)

(declare-fun b!751709 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41794 (_ BitVec 32)) SeekEntryResult!7614)

(assert (=> b!751709 (= e!419353 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20007 a!3186) j!159) a!3186 mask!3328) (Found!7614 j!159)))))

(declare-fun b!751710 () Bool)

(declare-fun res!507668 () Bool)

(declare-fun e!419358 () Bool)

(assert (=> b!751710 (=> (not res!507668) (not e!419358))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751710 (= res!507668 (and (= (size!20428 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20428 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20428 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!334349 () SeekEntryResult!7614)

(declare-fun e!419347 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!751711 () Bool)

(assert (=> b!751711 (= e!419347 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20007 a!3186) j!159) a!3186 mask!3328) lt!334349))))

(declare-fun b!751712 () Bool)

(declare-fun e!419356 () Bool)

(declare-fun e!419357 () Bool)

(assert (=> b!751712 (= e!419356 e!419357)))

(declare-fun res!507657 () Bool)

(assert (=> b!751712 (=> res!507657 e!419357)))

(declare-fun lt!334348 () (_ BitVec 64))

(declare-fun lt!334358 () (_ BitVec 64))

(assert (=> b!751712 (= res!507657 (= lt!334348 lt!334358))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!751712 (= lt!334348 (select (store (arr!20007 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!751713 () Bool)

(declare-fun e!419348 () Bool)

(assert (=> b!751713 (= e!419358 e!419348)))

(declare-fun res!507662 () Bool)

(assert (=> b!751713 (=> (not res!507662) (not e!419348))))

(declare-fun lt!334347 () SeekEntryResult!7614)

(assert (=> b!751713 (= res!507662 (or (= lt!334347 (MissingZero!7614 i!1173)) (= lt!334347 (MissingVacant!7614 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41794 (_ BitVec 32)) SeekEntryResult!7614)

(assert (=> b!751713 (= lt!334347 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751714 () Bool)

(declare-fun res!507665 () Bool)

(assert (=> b!751714 (=> (not res!507665) (not e!419358))))

(declare-fun arrayContainsKey!0 (array!41794 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751714 (= res!507665 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751715 () Bool)

(declare-fun res!507660 () Bool)

(declare-fun e!419354 () Bool)

(assert (=> b!751715 (=> (not res!507660) (not e!419354))))

(assert (=> b!751715 (= res!507660 e!419353)))

(declare-fun c!82410 () Bool)

(assert (=> b!751715 (= c!82410 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751716 () Bool)

(declare-fun res!507655 () Bool)

(assert (=> b!751716 (=> (not res!507655) (not e!419348))))

(declare-datatypes ((List!14062 0))(
  ( (Nil!14059) (Cons!14058 (h!15130 (_ BitVec 64)) (t!20385 List!14062)) )
))
(declare-fun arrayNoDuplicates!0 (array!41794 (_ BitVec 32) List!14062) Bool)

(assert (=> b!751716 (= res!507655 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14059))))

(declare-fun lt!334355 () SeekEntryResult!7614)

(declare-fun b!751717 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41794 (_ BitVec 32)) SeekEntryResult!7614)

(assert (=> b!751717 (= e!419353 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20007 a!3186) j!159) a!3186 mask!3328) lt!334355))))

(declare-fun b!751718 () Bool)

(declare-fun res!507656 () Bool)

(assert (=> b!751718 (=> (not res!507656) (not e!419358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751718 (= res!507656 (validKeyInArray!0 (select (arr!20007 a!3186) j!159)))))

(declare-fun b!751719 () Bool)

(declare-datatypes ((Unit!25858 0))(
  ( (Unit!25859) )
))
(declare-fun e!419351 () Unit!25858)

(declare-fun Unit!25860 () Unit!25858)

(assert (=> b!751719 (= e!419351 Unit!25860)))

(assert (=> b!751719 false))

(declare-fun b!751720 () Bool)

(declare-fun Unit!25861 () Unit!25858)

(assert (=> b!751720 (= e!419351 Unit!25861)))

(declare-fun b!751721 () Bool)

(declare-fun res!507653 () Bool)

(assert (=> b!751721 (=> (not res!507653) (not e!419348))))

(assert (=> b!751721 (= res!507653 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20428 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20428 a!3186))))))

(declare-fun b!751722 () Bool)

(declare-fun e!419355 () Bool)

(assert (=> b!751722 (= e!419354 e!419355)))

(declare-fun res!507667 () Bool)

(assert (=> b!751722 (=> (not res!507667) (not e!419355))))

(declare-fun lt!334351 () SeekEntryResult!7614)

(declare-fun lt!334357 () SeekEntryResult!7614)

(assert (=> b!751722 (= res!507667 (= lt!334351 lt!334357))))

(declare-fun lt!334354 () array!41794)

(assert (=> b!751722 (= lt!334357 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334358 lt!334354 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751722 (= lt!334351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334358 mask!3328) lt!334358 lt!334354 mask!3328))))

(assert (=> b!751722 (= lt!334358 (select (store (arr!20007 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751722 (= lt!334354 (array!41795 (store (arr!20007 a!3186) i!1173 k!2102) (size!20428 a!3186)))))

(declare-fun b!751723 () Bool)

(declare-fun res!507658 () Bool)

(assert (=> b!751723 (=> (not res!507658) (not e!419354))))

(assert (=> b!751723 (= res!507658 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20007 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751724 () Bool)

(assert (=> b!751724 (= e!419357 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!751724 e!419352))

(declare-fun res!507654 () Bool)

(assert (=> b!751724 (=> (not res!507654) (not e!419352))))

(assert (=> b!751724 (= res!507654 (= lt!334348 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334350 () Unit!25858)

(assert (=> b!751724 (= lt!334350 e!419351)))

(declare-fun c!82409 () Bool)

(assert (=> b!751724 (= c!82409 (= lt!334348 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!507669 () Bool)

(assert (=> start!65668 (=> (not res!507669) (not e!419358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65668 (= res!507669 (validMask!0 mask!3328))))

(assert (=> start!65668 e!419358))

(assert (=> start!65668 true))

(declare-fun array_inv!15781 (array!41794) Bool)

(assert (=> start!65668 (array_inv!15781 a!3186)))

(declare-fun b!751725 () Bool)

(assert (=> b!751725 (= e!419348 e!419354)))

(declare-fun res!507659 () Bool)

(assert (=> b!751725 (=> (not res!507659) (not e!419354))))

(assert (=> b!751725 (= res!507659 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20007 a!3186) j!159) mask!3328) (select (arr!20007 a!3186) j!159) a!3186 mask!3328) lt!334355))))

(assert (=> b!751725 (= lt!334355 (Intermediate!7614 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751726 () Bool)

(declare-fun e!419350 () Bool)

(assert (=> b!751726 (= e!419350 e!419356)))

(declare-fun res!507661 () Bool)

(assert (=> b!751726 (=> res!507661 e!419356)))

(assert (=> b!751726 (= res!507661 (not (= lt!334353 lt!334349)))))

(assert (=> b!751726 (= lt!334353 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20007 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751727 () Bool)

(declare-fun res!507663 () Bool)

(assert (=> b!751727 (=> (not res!507663) (not e!419352))))

(assert (=> b!751727 (= res!507663 (= (seekEntryOrOpen!0 lt!334358 lt!334354 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334358 lt!334354 mask!3328)))))

(declare-fun b!751728 () Bool)

(assert (=> b!751728 (= e!419355 (not e!419350))))

(declare-fun res!507652 () Bool)

(assert (=> b!751728 (=> res!507652 e!419350)))

(assert (=> b!751728 (= res!507652 (or (not (is-Intermediate!7614 lt!334357)) (bvslt x!1131 (x!63773 lt!334357)) (not (= x!1131 (x!63773 lt!334357))) (not (= index!1321 (index!32825 lt!334357)))))))

(assert (=> b!751728 e!419347))

(declare-fun res!507666 () Bool)

(assert (=> b!751728 (=> (not res!507666) (not e!419347))))

(assert (=> b!751728 (= res!507666 (= lt!334356 lt!334349))))

(assert (=> b!751728 (= lt!334349 (Found!7614 j!159))))

(assert (=> b!751728 (= lt!334356 (seekEntryOrOpen!0 (select (arr!20007 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41794 (_ BitVec 32)) Bool)

(assert (=> b!751728 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334352 () Unit!25858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41794 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25858)

(assert (=> b!751728 (= lt!334352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751729 () Bool)

(declare-fun res!507664 () Bool)

(assert (=> b!751729 (=> (not res!507664) (not e!419358))))

(assert (=> b!751729 (= res!507664 (validKeyInArray!0 k!2102))))

(declare-fun b!751730 () Bool)

(declare-fun res!507651 () Bool)

(assert (=> b!751730 (=> (not res!507651) (not e!419348))))

(assert (=> b!751730 (= res!507651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65668 res!507669) b!751710))

(assert (= (and b!751710 res!507668) b!751718))

(assert (= (and b!751718 res!507656) b!751729))

(assert (= (and b!751729 res!507664) b!751714))

(assert (= (and b!751714 res!507665) b!751713))

(assert (= (and b!751713 res!507662) b!751730))

(assert (= (and b!751730 res!507651) b!751716))

(assert (= (and b!751716 res!507655) b!751721))

(assert (= (and b!751721 res!507653) b!751725))

(assert (= (and b!751725 res!507659) b!751723))

(assert (= (and b!751723 res!507658) b!751715))

(assert (= (and b!751715 c!82410) b!751717))

(assert (= (and b!751715 (not c!82410)) b!751709))

(assert (= (and b!751715 res!507660) b!751722))

(assert (= (and b!751722 res!507667) b!751728))

(assert (= (and b!751728 res!507666) b!751711))

(assert (= (and b!751728 (not res!507652)) b!751726))

(assert (= (and b!751726 (not res!507661)) b!751712))

(assert (= (and b!751712 (not res!507657)) b!751724))

(assert (= (and b!751724 c!82409) b!751719))

(assert (= (and b!751724 (not c!82409)) b!751720))

(assert (= (and b!751724 res!507654) b!751727))

(assert (= (and b!751727 res!507663) b!751708))

(declare-fun m!700897 () Bool)

(assert (=> b!751717 m!700897))

(assert (=> b!751717 m!700897))

(declare-fun m!700899 () Bool)

(assert (=> b!751717 m!700899))

(assert (=> b!751725 m!700897))

(assert (=> b!751725 m!700897))

(declare-fun m!700901 () Bool)

(assert (=> b!751725 m!700901))

(assert (=> b!751725 m!700901))

(assert (=> b!751725 m!700897))

(declare-fun m!700903 () Bool)

(assert (=> b!751725 m!700903))

(declare-fun m!700905 () Bool)

(assert (=> b!751729 m!700905))

(assert (=> b!751709 m!700897))

(assert (=> b!751709 m!700897))

(declare-fun m!700907 () Bool)

(assert (=> b!751709 m!700907))

(declare-fun m!700909 () Bool)

(assert (=> b!751723 m!700909))

(declare-fun m!700911 () Bool)

(assert (=> b!751712 m!700911))

(declare-fun m!700913 () Bool)

(assert (=> b!751712 m!700913))

(declare-fun m!700915 () Bool)

(assert (=> b!751730 m!700915))

(declare-fun m!700917 () Bool)

(assert (=> b!751714 m!700917))

(assert (=> b!751728 m!700897))

(assert (=> b!751728 m!700897))

(declare-fun m!700919 () Bool)

(assert (=> b!751728 m!700919))

(declare-fun m!700921 () Bool)

(assert (=> b!751728 m!700921))

(declare-fun m!700923 () Bool)

(assert (=> b!751728 m!700923))

(declare-fun m!700925 () Bool)

(assert (=> start!65668 m!700925))

(declare-fun m!700927 () Bool)

(assert (=> start!65668 m!700927))

(declare-fun m!700929 () Bool)

(assert (=> b!751713 m!700929))

(assert (=> b!751726 m!700897))

(assert (=> b!751726 m!700897))

(assert (=> b!751726 m!700907))

(declare-fun m!700931 () Bool)

(assert (=> b!751716 m!700931))

(assert (=> b!751718 m!700897))

(assert (=> b!751718 m!700897))

(declare-fun m!700933 () Bool)

(assert (=> b!751718 m!700933))

(assert (=> b!751722 m!700911))

(declare-fun m!700935 () Bool)

(assert (=> b!751722 m!700935))

(declare-fun m!700937 () Bool)

(assert (=> b!751722 m!700937))

(declare-fun m!700939 () Bool)

(assert (=> b!751722 m!700939))

(assert (=> b!751722 m!700939))

(declare-fun m!700941 () Bool)

(assert (=> b!751722 m!700941))

(declare-fun m!700943 () Bool)

(assert (=> b!751727 m!700943))

(declare-fun m!700945 () Bool)

(assert (=> b!751727 m!700945))

(assert (=> b!751711 m!700897))

(assert (=> b!751711 m!700897))

(declare-fun m!700947 () Bool)

(assert (=> b!751711 m!700947))

(push 1)

