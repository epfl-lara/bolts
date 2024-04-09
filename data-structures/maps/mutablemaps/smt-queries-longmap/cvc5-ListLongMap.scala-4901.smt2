; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67666 () Bool)

(assert start!67666)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42661 0))(
  ( (array!42662 (arr!20415 (Array (_ BitVec 32) (_ BitVec 64))) (size!20836 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42661)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!782991 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!435405 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8022 0))(
  ( (MissingZero!8022 (index!34455 (_ BitVec 32))) (Found!8022 (index!34456 (_ BitVec 32))) (Intermediate!8022 (undefined!8834 Bool) (index!34457 (_ BitVec 32)) (x!65443 (_ BitVec 32))) (Undefined!8022) (MissingVacant!8022 (index!34458 (_ BitVec 32))) )
))
(declare-fun lt!348970 () SeekEntryResult!8022)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42661 (_ BitVec 32)) SeekEntryResult!8022)

(assert (=> b!782991 (= e!435405 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20415 a!3186) j!159) a!3186 mask!3328) lt!348970))))

(declare-fun b!782992 () Bool)

(declare-fun res!529788 () Bool)

(declare-fun e!435409 () Bool)

(assert (=> b!782992 (=> (not res!529788) (not e!435409))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782992 (= res!529788 (validKeyInArray!0 k!2102))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!782993 () Bool)

(declare-fun e!435406 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!782993 (= e!435406 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20415 a!3186) j!159) a!3186 mask!3328) (Found!8022 j!159)))))

(declare-fun b!782994 () Bool)

(declare-fun e!435402 () Bool)

(assert (=> b!782994 (= e!435409 e!435402)))

(declare-fun res!529786 () Bool)

(assert (=> b!782994 (=> (not res!529786) (not e!435402))))

(declare-fun lt!348966 () SeekEntryResult!8022)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!782994 (= res!529786 (or (= lt!348966 (MissingZero!8022 i!1173)) (= lt!348966 (MissingVacant!8022 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42661 (_ BitVec 32)) SeekEntryResult!8022)

(assert (=> b!782994 (= lt!348966 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!782995 () Bool)

(declare-datatypes ((Unit!26998 0))(
  ( (Unit!26999) )
))
(declare-fun e!435408 () Unit!26998)

(declare-fun Unit!27000 () Unit!26998)

(assert (=> b!782995 (= e!435408 Unit!27000)))

(declare-fun b!782996 () Bool)

(declare-fun res!529791 () Bool)

(assert (=> b!782996 (=> (not res!529791) (not e!435402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42661 (_ BitVec 32)) Bool)

(assert (=> b!782996 (= res!529791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782997 () Bool)

(declare-fun res!529795 () Bool)

(declare-fun e!435403 () Bool)

(assert (=> b!782997 (=> res!529795 e!435403)))

(assert (=> b!782997 (= res!529795 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20415 a!3186) j!159) a!3186 mask!3328) lt!348970)))))

(declare-fun b!782998 () Bool)

(declare-fun e!435404 () Bool)

(assert (=> b!782998 (= e!435404 true)))

(declare-fun e!435400 () Bool)

(assert (=> b!782998 e!435400))

(declare-fun res!529784 () Bool)

(assert (=> b!782998 (=> (not res!529784) (not e!435400))))

(declare-fun lt!348969 () (_ BitVec 64))

(assert (=> b!782998 (= res!529784 (= lt!348969 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!348971 () Unit!26998)

(assert (=> b!782998 (= lt!348971 e!435408)))

(declare-fun c!87012 () Bool)

(assert (=> b!782998 (= c!87012 (= lt!348969 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!348975 () SeekEntryResult!8022)

(declare-fun b!782999 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42661 (_ BitVec 32)) SeekEntryResult!8022)

(assert (=> b!782999 (= e!435406 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20415 a!3186) j!159) a!3186 mask!3328) lt!348975))))

(declare-fun b!783001 () Bool)

(declare-fun e!435401 () Bool)

(assert (=> b!783001 (= e!435402 e!435401)))

(declare-fun res!529785 () Bool)

(assert (=> b!783001 (=> (not res!529785) (not e!435401))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783001 (= res!529785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20415 a!3186) j!159) mask!3328) (select (arr!20415 a!3186) j!159) a!3186 mask!3328) lt!348975))))

(assert (=> b!783001 (= lt!348975 (Intermediate!8022 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783002 () Bool)

(assert (=> b!783002 (= e!435403 e!435404)))

(declare-fun res!529801 () Bool)

(assert (=> b!783002 (=> res!529801 e!435404)))

(declare-fun lt!348974 () (_ BitVec 64))

(assert (=> b!783002 (= res!529801 (= lt!348969 lt!348974))))

(assert (=> b!783002 (= lt!348969 (select (store (arr!20415 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783003 () Bool)

(declare-fun res!529789 () Bool)

(assert (=> b!783003 (=> (not res!529789) (not e!435401))))

(assert (=> b!783003 (= res!529789 e!435406)))

(declare-fun c!87011 () Bool)

(assert (=> b!783003 (= c!87011 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783004 () Bool)

(declare-fun Unit!27001 () Unit!26998)

(assert (=> b!783004 (= e!435408 Unit!27001)))

(assert (=> b!783004 false))

(declare-fun b!783005 () Bool)

(declare-fun res!529798 () Bool)

(assert (=> b!783005 (=> (not res!529798) (not e!435402))))

(assert (=> b!783005 (= res!529798 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20836 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20836 a!3186))))))

(declare-fun b!783006 () Bool)

(declare-fun e!435399 () Bool)

(assert (=> b!783006 (= e!435401 e!435399)))

(declare-fun res!529800 () Bool)

(assert (=> b!783006 (=> (not res!529800) (not e!435399))))

(declare-fun lt!348973 () SeekEntryResult!8022)

(declare-fun lt!348967 () SeekEntryResult!8022)

(assert (=> b!783006 (= res!529800 (= lt!348973 lt!348967))))

(declare-fun lt!348976 () array!42661)

(assert (=> b!783006 (= lt!348967 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348974 lt!348976 mask!3328))))

(assert (=> b!783006 (= lt!348973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348974 mask!3328) lt!348974 lt!348976 mask!3328))))

(assert (=> b!783006 (= lt!348974 (select (store (arr!20415 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783006 (= lt!348976 (array!42662 (store (arr!20415 a!3186) i!1173 k!2102) (size!20836 a!3186)))))

(declare-fun b!783007 () Bool)

(assert (=> b!783007 (= e!435399 (not e!435403))))

(declare-fun res!529796 () Bool)

(assert (=> b!783007 (=> res!529796 e!435403)))

(assert (=> b!783007 (= res!529796 (or (not (is-Intermediate!8022 lt!348967)) (bvslt x!1131 (x!65443 lt!348967)) (not (= x!1131 (x!65443 lt!348967))) (not (= index!1321 (index!34457 lt!348967)))))))

(assert (=> b!783007 e!435405))

(declare-fun res!529790 () Bool)

(assert (=> b!783007 (=> (not res!529790) (not e!435405))))

(declare-fun lt!348968 () SeekEntryResult!8022)

(assert (=> b!783007 (= res!529790 (= lt!348968 lt!348970))))

(assert (=> b!783007 (= lt!348970 (Found!8022 j!159))))

(assert (=> b!783007 (= lt!348968 (seekEntryOrOpen!0 (select (arr!20415 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783007 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348972 () Unit!26998)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42661 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26998)

(assert (=> b!783007 (= lt!348972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783008 () Bool)

(declare-fun res!529792 () Bool)

(assert (=> b!783008 (=> (not res!529792) (not e!435402))))

(declare-datatypes ((List!14470 0))(
  ( (Nil!14467) (Cons!14466 (h!15589 (_ BitVec 64)) (t!20793 List!14470)) )
))
(declare-fun arrayNoDuplicates!0 (array!42661 (_ BitVec 32) List!14470) Bool)

(assert (=> b!783008 (= res!529792 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14467))))

(declare-fun b!783009 () Bool)

(declare-fun res!529794 () Bool)

(assert (=> b!783009 (=> (not res!529794) (not e!435409))))

(declare-fun arrayContainsKey!0 (array!42661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783009 (= res!529794 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783010 () Bool)

(declare-fun res!529787 () Bool)

(assert (=> b!783010 (=> (not res!529787) (not e!435409))))

(assert (=> b!783010 (= res!529787 (validKeyInArray!0 (select (arr!20415 a!3186) j!159)))))

(declare-fun b!783011 () Bool)

(declare-fun res!529793 () Bool)

(assert (=> b!783011 (=> (not res!529793) (not e!435409))))

(assert (=> b!783011 (= res!529793 (and (= (size!20836 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20836 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20836 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783012 () Bool)

(declare-fun res!529797 () Bool)

(assert (=> b!783012 (=> (not res!529797) (not e!435401))))

(assert (=> b!783012 (= res!529797 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20415 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!529799 () Bool)

(assert (=> start!67666 (=> (not res!529799) (not e!435409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67666 (= res!529799 (validMask!0 mask!3328))))

(assert (=> start!67666 e!435409))

(assert (=> start!67666 true))

(declare-fun array_inv!16189 (array!42661) Bool)

(assert (=> start!67666 (array_inv!16189 a!3186)))

(declare-fun b!783000 () Bool)

(assert (=> b!783000 (= e!435400 (= (seekEntryOrOpen!0 lt!348974 lt!348976 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!348974 lt!348976 mask!3328)))))

(assert (= (and start!67666 res!529799) b!783011))

(assert (= (and b!783011 res!529793) b!783010))

(assert (= (and b!783010 res!529787) b!782992))

(assert (= (and b!782992 res!529788) b!783009))

(assert (= (and b!783009 res!529794) b!782994))

(assert (= (and b!782994 res!529786) b!782996))

(assert (= (and b!782996 res!529791) b!783008))

(assert (= (and b!783008 res!529792) b!783005))

(assert (= (and b!783005 res!529798) b!783001))

(assert (= (and b!783001 res!529785) b!783012))

(assert (= (and b!783012 res!529797) b!783003))

(assert (= (and b!783003 c!87011) b!782999))

(assert (= (and b!783003 (not c!87011)) b!782993))

(assert (= (and b!783003 res!529789) b!783006))

(assert (= (and b!783006 res!529800) b!783007))

(assert (= (and b!783007 res!529790) b!782991))

(assert (= (and b!783007 (not res!529796)) b!782997))

(assert (= (and b!782997 (not res!529795)) b!783002))

(assert (= (and b!783002 (not res!529801)) b!782998))

(assert (= (and b!782998 c!87012) b!783004))

(assert (= (and b!782998 (not c!87012)) b!782995))

(assert (= (and b!782998 res!529784) b!783000))

(declare-fun m!725689 () Bool)

(assert (=> start!67666 m!725689))

(declare-fun m!725691 () Bool)

(assert (=> start!67666 m!725691))

(declare-fun m!725693 () Bool)

(assert (=> b!783010 m!725693))

(assert (=> b!783010 m!725693))

(declare-fun m!725695 () Bool)

(assert (=> b!783010 m!725695))

(declare-fun m!725697 () Bool)

(assert (=> b!782994 m!725697))

(declare-fun m!725699 () Bool)

(assert (=> b!783006 m!725699))

(declare-fun m!725701 () Bool)

(assert (=> b!783006 m!725701))

(declare-fun m!725703 () Bool)

(assert (=> b!783006 m!725703))

(declare-fun m!725705 () Bool)

(assert (=> b!783006 m!725705))

(assert (=> b!783006 m!725699))

(declare-fun m!725707 () Bool)

(assert (=> b!783006 m!725707))

(assert (=> b!783001 m!725693))

(assert (=> b!783001 m!725693))

(declare-fun m!725709 () Bool)

(assert (=> b!783001 m!725709))

(assert (=> b!783001 m!725709))

(assert (=> b!783001 m!725693))

(declare-fun m!725711 () Bool)

(assert (=> b!783001 m!725711))

(declare-fun m!725713 () Bool)

(assert (=> b!783009 m!725713))

(assert (=> b!783002 m!725701))

(declare-fun m!725715 () Bool)

(assert (=> b!783002 m!725715))

(assert (=> b!782999 m!725693))

(assert (=> b!782999 m!725693))

(declare-fun m!725717 () Bool)

(assert (=> b!782999 m!725717))

(declare-fun m!725719 () Bool)

(assert (=> b!782992 m!725719))

(assert (=> b!782991 m!725693))

(assert (=> b!782991 m!725693))

(declare-fun m!725721 () Bool)

(assert (=> b!782991 m!725721))

(declare-fun m!725723 () Bool)

(assert (=> b!783000 m!725723))

(declare-fun m!725725 () Bool)

(assert (=> b!783000 m!725725))

(declare-fun m!725727 () Bool)

(assert (=> b!783008 m!725727))

(assert (=> b!783007 m!725693))

(assert (=> b!783007 m!725693))

(declare-fun m!725729 () Bool)

(assert (=> b!783007 m!725729))

(declare-fun m!725731 () Bool)

(assert (=> b!783007 m!725731))

(declare-fun m!725733 () Bool)

(assert (=> b!783007 m!725733))

(assert (=> b!782997 m!725693))

(assert (=> b!782997 m!725693))

(declare-fun m!725735 () Bool)

(assert (=> b!782997 m!725735))

(assert (=> b!782993 m!725693))

(assert (=> b!782993 m!725693))

(assert (=> b!782993 m!725735))

(declare-fun m!725737 () Bool)

(assert (=> b!782996 m!725737))

(declare-fun m!725739 () Bool)

(assert (=> b!783012 m!725739))

(push 1)

