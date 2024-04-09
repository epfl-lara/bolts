; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67708 () Bool)

(assert start!67708)

(declare-fun b!784415 () Bool)

(declare-fun e!436142 () Bool)

(declare-fun e!436139 () Bool)

(assert (=> b!784415 (= e!436142 e!436139)))

(declare-fun res!530961 () Bool)

(assert (=> b!784415 (=> res!530961 e!436139)))

(declare-datatypes ((SeekEntryResult!8043 0))(
  ( (MissingZero!8043 (index!34539 (_ BitVec 32))) (Found!8043 (index!34540 (_ BitVec 32))) (Intermediate!8043 (undefined!8855 Bool) (index!34541 (_ BitVec 32)) (x!65520 (_ BitVec 32))) (Undefined!8043) (MissingVacant!8043 (index!34542 (_ BitVec 32))) )
))
(declare-fun lt!349708 () SeekEntryResult!8043)

(declare-fun lt!349709 () SeekEntryResult!8043)

(assert (=> b!784415 (= res!530961 (not (= lt!349708 lt!349709)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42703 0))(
  ( (array!42704 (arr!20436 (Array (_ BitVec 32) (_ BitVec 64))) (size!20857 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42703)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42703 (_ BitVec 32)) SeekEntryResult!8043)

(assert (=> b!784415 (= lt!349708 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20436 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784416 () Bool)

(declare-datatypes ((Unit!27082 0))(
  ( (Unit!27083) )
))
(declare-fun e!436145 () Unit!27082)

(declare-fun Unit!27084 () Unit!27082)

(assert (=> b!784416 (= e!436145 Unit!27084)))

(declare-fun b!784417 () Bool)

(declare-fun res!530969 () Bool)

(declare-fun e!436146 () Bool)

(assert (=> b!784417 (=> (not res!530969) (not e!436146))))

(declare-fun e!436147 () Bool)

(assert (=> b!784417 (= res!530969 e!436147)))

(declare-fun c!87137 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784417 (= c!87137 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784418 () Bool)

(declare-fun e!436140 () Bool)

(assert (=> b!784418 (= e!436139 e!436140)))

(declare-fun res!530972 () Bool)

(assert (=> b!784418 (=> res!530972 e!436140)))

(declare-fun lt!349714 () (_ BitVec 64))

(declare-fun lt!349715 () (_ BitVec 64))

(assert (=> b!784418 (= res!530972 (= lt!349714 lt!349715))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!784418 (= lt!349714 (select (store (arr!20436 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784419 () Bool)

(declare-fun e!436150 () Bool)

(assert (=> b!784419 (= e!436150 (not e!436142))))

(declare-fun res!530960 () Bool)

(assert (=> b!784419 (=> res!530960 e!436142)))

(declare-fun lt!349707 () SeekEntryResult!8043)

(assert (=> b!784419 (= res!530960 (or (not (is-Intermediate!8043 lt!349707)) (bvslt x!1131 (x!65520 lt!349707)) (not (= x!1131 (x!65520 lt!349707))) (not (= index!1321 (index!34541 lt!349707)))))))

(declare-fun e!436149 () Bool)

(assert (=> b!784419 e!436149))

(declare-fun res!530963 () Bool)

(assert (=> b!784419 (=> (not res!530963) (not e!436149))))

(declare-fun lt!349710 () SeekEntryResult!8043)

(assert (=> b!784419 (= res!530963 (= lt!349710 lt!349709))))

(assert (=> b!784419 (= lt!349709 (Found!8043 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42703 (_ BitVec 32)) SeekEntryResult!8043)

(assert (=> b!784419 (= lt!349710 (seekEntryOrOpen!0 (select (arr!20436 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42703 (_ BitVec 32)) Bool)

(assert (=> b!784419 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349713 () Unit!27082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27082)

(assert (=> b!784419 (= lt!349713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784420 () Bool)

(assert (=> b!784420 (= e!436149 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20436 a!3186) j!159) a!3186 mask!3328) lt!349709))))

(declare-fun b!784421 () Bool)

(declare-fun res!530971 () Bool)

(assert (=> b!784421 (=> (not res!530971) (not e!436146))))

(assert (=> b!784421 (= res!530971 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20436 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!530959 () Bool)

(declare-fun e!436143 () Bool)

(assert (=> start!67708 (=> (not res!530959) (not e!436143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67708 (= res!530959 (validMask!0 mask!3328))))

(assert (=> start!67708 e!436143))

(assert (=> start!67708 true))

(declare-fun array_inv!16210 (array!42703) Bool)

(assert (=> start!67708 (array_inv!16210 a!3186)))

(declare-fun b!784422 () Bool)

(declare-fun res!530967 () Bool)

(declare-fun e!436144 () Bool)

(assert (=> b!784422 (=> (not res!530967) (not e!436144))))

(assert (=> b!784422 (= res!530967 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20857 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20857 a!3186))))))

(declare-fun b!784423 () Bool)

(declare-fun lt!349712 () SeekEntryResult!8043)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42703 (_ BitVec 32)) SeekEntryResult!8043)

(assert (=> b!784423 (= e!436147 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20436 a!3186) j!159) a!3186 mask!3328) lt!349712))))

(declare-fun b!784424 () Bool)

(declare-fun Unit!27085 () Unit!27082)

(assert (=> b!784424 (= e!436145 Unit!27085)))

(assert (=> b!784424 false))

(declare-fun b!784425 () Bool)

(assert (=> b!784425 (= e!436146 e!436150)))

(declare-fun res!530956 () Bool)

(assert (=> b!784425 (=> (not res!530956) (not e!436150))))

(declare-fun lt!349716 () SeekEntryResult!8043)

(assert (=> b!784425 (= res!530956 (= lt!349716 lt!349707))))

(declare-fun lt!349711 () array!42703)

(assert (=> b!784425 (= lt!349707 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349715 lt!349711 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784425 (= lt!349716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349715 mask!3328) lt!349715 lt!349711 mask!3328))))

(assert (=> b!784425 (= lt!349715 (select (store (arr!20436 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784425 (= lt!349711 (array!42704 (store (arr!20436 a!3186) i!1173 k!2102) (size!20857 a!3186)))))

(declare-fun b!784426 () Bool)

(declare-fun e!436148 () Bool)

(assert (=> b!784426 (= e!436148 (= lt!349710 lt!349708))))

(declare-fun b!784427 () Bool)

(assert (=> b!784427 (= e!436144 e!436146)))

(declare-fun res!530973 () Bool)

(assert (=> b!784427 (=> (not res!530973) (not e!436146))))

(assert (=> b!784427 (= res!530973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20436 a!3186) j!159) mask!3328) (select (arr!20436 a!3186) j!159) a!3186 mask!3328) lt!349712))))

(assert (=> b!784427 (= lt!349712 (Intermediate!8043 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784428 () Bool)

(declare-fun res!530965 () Bool)

(assert (=> b!784428 (=> (not res!530965) (not e!436143))))

(declare-fun arrayContainsKey!0 (array!42703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784428 (= res!530965 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784429 () Bool)

(declare-fun res!530970 () Bool)

(assert (=> b!784429 (=> (not res!530970) (not e!436143))))

(assert (=> b!784429 (= res!530970 (and (= (size!20857 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20857 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20857 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784430 () Bool)

(declare-fun res!530958 () Bool)

(assert (=> b!784430 (=> (not res!530958) (not e!436144))))

(declare-datatypes ((List!14491 0))(
  ( (Nil!14488) (Cons!14487 (h!15610 (_ BitVec 64)) (t!20814 List!14491)) )
))
(declare-fun arrayNoDuplicates!0 (array!42703 (_ BitVec 32) List!14491) Bool)

(assert (=> b!784430 (= res!530958 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14488))))

(declare-fun b!784431 () Bool)

(declare-fun res!530962 () Bool)

(assert (=> b!784431 (=> (not res!530962) (not e!436144))))

(assert (=> b!784431 (= res!530962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784432 () Bool)

(assert (=> b!784432 (= e!436140 true)))

(assert (=> b!784432 e!436148))

(declare-fun res!530957 () Bool)

(assert (=> b!784432 (=> (not res!530957) (not e!436148))))

(assert (=> b!784432 (= res!530957 (= lt!349714 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349706 () Unit!27082)

(assert (=> b!784432 (= lt!349706 e!436145)))

(declare-fun c!87138 () Bool)

(assert (=> b!784432 (= c!87138 (= lt!349714 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784433 () Bool)

(assert (=> b!784433 (= e!436147 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20436 a!3186) j!159) a!3186 mask!3328) (Found!8043 j!159)))))

(declare-fun b!784434 () Bool)

(assert (=> b!784434 (= e!436143 e!436144)))

(declare-fun res!530966 () Bool)

(assert (=> b!784434 (=> (not res!530966) (not e!436144))))

(declare-fun lt!349717 () SeekEntryResult!8043)

(assert (=> b!784434 (= res!530966 (or (= lt!349717 (MissingZero!8043 i!1173)) (= lt!349717 (MissingVacant!8043 i!1173))))))

(assert (=> b!784434 (= lt!349717 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784435 () Bool)

(declare-fun res!530964 () Bool)

(assert (=> b!784435 (=> (not res!530964) (not e!436143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784435 (= res!530964 (validKeyInArray!0 (select (arr!20436 a!3186) j!159)))))

(declare-fun b!784436 () Bool)

(declare-fun res!530974 () Bool)

(assert (=> b!784436 (=> (not res!530974) (not e!436143))))

(assert (=> b!784436 (= res!530974 (validKeyInArray!0 k!2102))))

(declare-fun b!784437 () Bool)

(declare-fun res!530968 () Bool)

(assert (=> b!784437 (=> (not res!530968) (not e!436148))))

(assert (=> b!784437 (= res!530968 (= (seekEntryOrOpen!0 lt!349715 lt!349711 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349715 lt!349711 mask!3328)))))

(assert (= (and start!67708 res!530959) b!784429))

(assert (= (and b!784429 res!530970) b!784435))

(assert (= (and b!784435 res!530964) b!784436))

(assert (= (and b!784436 res!530974) b!784428))

(assert (= (and b!784428 res!530965) b!784434))

(assert (= (and b!784434 res!530966) b!784431))

(assert (= (and b!784431 res!530962) b!784430))

(assert (= (and b!784430 res!530958) b!784422))

(assert (= (and b!784422 res!530967) b!784427))

(assert (= (and b!784427 res!530973) b!784421))

(assert (= (and b!784421 res!530971) b!784417))

(assert (= (and b!784417 c!87137) b!784423))

(assert (= (and b!784417 (not c!87137)) b!784433))

(assert (= (and b!784417 res!530969) b!784425))

(assert (= (and b!784425 res!530956) b!784419))

(assert (= (and b!784419 res!530963) b!784420))

(assert (= (and b!784419 (not res!530960)) b!784415))

(assert (= (and b!784415 (not res!530961)) b!784418))

(assert (= (and b!784418 (not res!530972)) b!784432))

(assert (= (and b!784432 c!87138) b!784424))

(assert (= (and b!784432 (not c!87138)) b!784416))

(assert (= (and b!784432 res!530957) b!784437))

(assert (= (and b!784437 res!530968) b!784426))

(declare-fun m!726781 () Bool)

(assert (=> b!784433 m!726781))

(assert (=> b!784433 m!726781))

(declare-fun m!726783 () Bool)

(assert (=> b!784433 m!726783))

(declare-fun m!726785 () Bool)

(assert (=> b!784431 m!726785))

(declare-fun m!726787 () Bool)

(assert (=> b!784428 m!726787))

(declare-fun m!726789 () Bool)

(assert (=> b!784418 m!726789))

(declare-fun m!726791 () Bool)

(assert (=> b!784418 m!726791))

(declare-fun m!726793 () Bool)

(assert (=> b!784421 m!726793))

(assert (=> b!784420 m!726781))

(assert (=> b!784420 m!726781))

(declare-fun m!726795 () Bool)

(assert (=> b!784420 m!726795))

(declare-fun m!726797 () Bool)

(assert (=> b!784425 m!726797))

(assert (=> b!784425 m!726789))

(declare-fun m!726799 () Bool)

(assert (=> b!784425 m!726799))

(declare-fun m!726801 () Bool)

(assert (=> b!784425 m!726801))

(assert (=> b!784425 m!726797))

(declare-fun m!726803 () Bool)

(assert (=> b!784425 m!726803))

(declare-fun m!726805 () Bool)

(assert (=> b!784437 m!726805))

(declare-fun m!726807 () Bool)

(assert (=> b!784437 m!726807))

(assert (=> b!784419 m!726781))

(assert (=> b!784419 m!726781))

(declare-fun m!726809 () Bool)

(assert (=> b!784419 m!726809))

(declare-fun m!726811 () Bool)

(assert (=> b!784419 m!726811))

(declare-fun m!726813 () Bool)

(assert (=> b!784419 m!726813))

(assert (=> b!784423 m!726781))

(assert (=> b!784423 m!726781))

(declare-fun m!726815 () Bool)

(assert (=> b!784423 m!726815))

(assert (=> b!784415 m!726781))

(assert (=> b!784415 m!726781))

(assert (=> b!784415 m!726783))

(declare-fun m!726817 () Bool)

(assert (=> b!784436 m!726817))

(declare-fun m!726819 () Bool)

(assert (=> b!784430 m!726819))

(assert (=> b!784427 m!726781))

(assert (=> b!784427 m!726781))

(declare-fun m!726821 () Bool)

(assert (=> b!784427 m!726821))

(assert (=> b!784427 m!726821))

(assert (=> b!784427 m!726781))

(declare-fun m!726823 () Bool)

(assert (=> b!784427 m!726823))

(assert (=> b!784435 m!726781))

(assert (=> b!784435 m!726781))

(declare-fun m!726825 () Bool)

(assert (=> b!784435 m!726825))

(declare-fun m!726827 () Bool)

(assert (=> start!67708 m!726827))

(declare-fun m!726829 () Bool)

(assert (=> start!67708 m!726829))

(declare-fun m!726831 () Bool)

(assert (=> b!784434 m!726831))

(push 1)

