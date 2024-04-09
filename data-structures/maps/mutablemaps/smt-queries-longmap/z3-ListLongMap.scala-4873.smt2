; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67170 () Bool)

(assert start!67170)

(declare-fun b!775993 () Bool)

(declare-fun res!525006 () Bool)

(declare-fun e!431865 () Bool)

(assert (=> b!775993 (=> (not res!525006) (not e!431865))))

(declare-datatypes ((array!42480 0))(
  ( (array!42481 (arr!20332 (Array (_ BitVec 32) (_ BitVec 64))) (size!20753 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42480)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!775993 (= res!525006 (and (= (size!20753 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20753 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20753 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775994 () Bool)

(declare-fun res!524996 () Bool)

(declare-fun e!431858 () Bool)

(assert (=> b!775994 (=> (not res!524996) (not e!431858))))

(declare-datatypes ((List!14387 0))(
  ( (Nil!14384) (Cons!14383 (h!15491 (_ BitVec 64)) (t!20710 List!14387)) )
))
(declare-fun arrayNoDuplicates!0 (array!42480 (_ BitVec 32) List!14387) Bool)

(assert (=> b!775994 (= res!524996 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14384))))

(declare-fun b!775995 () Bool)

(declare-fun res!525008 () Bool)

(assert (=> b!775995 (=> (not res!525008) (not e!431858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42480 (_ BitVec 32)) Bool)

(assert (=> b!775995 (= res!525008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!431864 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7939 0))(
  ( (MissingZero!7939 (index!34123 (_ BitVec 32))) (Found!7939 (index!34124 (_ BitVec 32))) (Intermediate!7939 (undefined!8751 Bool) (index!34125 (_ BitVec 32)) (x!65091 (_ BitVec 32))) (Undefined!7939) (MissingVacant!7939 (index!34126 (_ BitVec 32))) )
))
(declare-fun lt!345733 () SeekEntryResult!7939)

(declare-fun b!775996 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42480 (_ BitVec 32)) SeekEntryResult!7939)

(assert (=> b!775996 (= e!431864 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20332 a!3186) j!159) a!3186 mask!3328) lt!345733))))

(declare-fun b!775998 () Bool)

(assert (=> b!775998 (= e!431865 e!431858)))

(declare-fun res!525001 () Bool)

(assert (=> b!775998 (=> (not res!525001) (not e!431858))))

(declare-fun lt!345730 () SeekEntryResult!7939)

(assert (=> b!775998 (= res!525001 (or (= lt!345730 (MissingZero!7939 i!1173)) (= lt!345730 (MissingVacant!7939 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42480 (_ BitVec 32)) SeekEntryResult!7939)

(assert (=> b!775998 (= lt!345730 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!775999 () Bool)

(declare-fun res!525009 () Bool)

(declare-fun e!431862 () Bool)

(assert (=> b!775999 (=> (not res!525009) (not e!431862))))

(declare-fun e!431866 () Bool)

(assert (=> b!775999 (= res!525009 e!431866)))

(declare-fun c!85899 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!775999 (= c!85899 (bvsle x!1131 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!776000 () Bool)

(assert (=> b!776000 (= e!431866 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20332 a!3186) j!159) a!3186 mask!3328) (Found!7939 j!159)))))

(declare-fun b!776001 () Bool)

(declare-fun res!525010 () Bool)

(assert (=> b!776001 (=> (not res!525010) (not e!431865))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776001 (= res!525010 (validKeyInArray!0 (select (arr!20332 a!3186) j!159)))))

(declare-fun b!776002 () Bool)

(declare-fun res!525007 () Bool)

(assert (=> b!776002 (=> (not res!525007) (not e!431865))))

(declare-fun arrayContainsKey!0 (array!42480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776002 (= res!525007 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776003 () Bool)

(declare-fun e!431861 () Bool)

(declare-fun e!431860 () Bool)

(assert (=> b!776003 (= e!431861 (not e!431860))))

(declare-fun res!524995 () Bool)

(assert (=> b!776003 (=> res!524995 e!431860)))

(declare-fun lt!345736 () SeekEntryResult!7939)

(get-info :version)

(assert (=> b!776003 (= res!524995 (or (not ((_ is Intermediate!7939) lt!345736)) (bvslt x!1131 (x!65091 lt!345736)) (not (= x!1131 (x!65091 lt!345736))) (not (= index!1321 (index!34125 lt!345736)))))))

(declare-fun e!431859 () Bool)

(assert (=> b!776003 e!431859))

(declare-fun res!524998 () Bool)

(assert (=> b!776003 (=> (not res!524998) (not e!431859))))

(assert (=> b!776003 (= res!524998 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26772 0))(
  ( (Unit!26773) )
))
(declare-fun lt!345732 () Unit!26772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26772)

(assert (=> b!776003 (= lt!345732 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776004 () Bool)

(declare-fun res!525005 () Bool)

(assert (=> b!776004 (=> (not res!525005) (not e!431858))))

(assert (=> b!776004 (= res!525005 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20753 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20753 a!3186))))))

(declare-fun b!776005 () Bool)

(declare-fun res!524999 () Bool)

(assert (=> b!776005 (=> (not res!524999) (not e!431862))))

(assert (=> b!776005 (= res!524999 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20332 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776006 () Bool)

(assert (=> b!776006 (= e!431860 true)))

(declare-fun lt!345731 () SeekEntryResult!7939)

(assert (=> b!776006 (= lt!345731 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20332 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775997 () Bool)

(declare-fun lt!345729 () SeekEntryResult!7939)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42480 (_ BitVec 32)) SeekEntryResult!7939)

(assert (=> b!775997 (= e!431866 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20332 a!3186) j!159) a!3186 mask!3328) lt!345729))))

(declare-fun res!525000 () Bool)

(assert (=> start!67170 (=> (not res!525000) (not e!431865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67170 (= res!525000 (validMask!0 mask!3328))))

(assert (=> start!67170 e!431865))

(assert (=> start!67170 true))

(declare-fun array_inv!16106 (array!42480) Bool)

(assert (=> start!67170 (array_inv!16106 a!3186)))

(declare-fun b!776007 () Bool)

(declare-fun res!525003 () Bool)

(assert (=> b!776007 (=> (not res!525003) (not e!431865))))

(assert (=> b!776007 (= res!525003 (validKeyInArray!0 k0!2102))))

(declare-fun b!776008 () Bool)

(assert (=> b!776008 (= e!431858 e!431862)))

(declare-fun res!525002 () Bool)

(assert (=> b!776008 (=> (not res!525002) (not e!431862))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776008 (= res!525002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20332 a!3186) j!159) mask!3328) (select (arr!20332 a!3186) j!159) a!3186 mask!3328) lt!345729))))

(assert (=> b!776008 (= lt!345729 (Intermediate!7939 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776009 () Bool)

(assert (=> b!776009 (= e!431862 e!431861)))

(declare-fun res!525004 () Bool)

(assert (=> b!776009 (=> (not res!525004) (not e!431861))))

(declare-fun lt!345735 () SeekEntryResult!7939)

(assert (=> b!776009 (= res!525004 (= lt!345735 lt!345736))))

(declare-fun lt!345734 () array!42480)

(declare-fun lt!345728 () (_ BitVec 64))

(assert (=> b!776009 (= lt!345736 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345728 lt!345734 mask!3328))))

(assert (=> b!776009 (= lt!345735 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345728 mask!3328) lt!345728 lt!345734 mask!3328))))

(assert (=> b!776009 (= lt!345728 (select (store (arr!20332 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776009 (= lt!345734 (array!42481 (store (arr!20332 a!3186) i!1173 k0!2102) (size!20753 a!3186)))))

(declare-fun b!776010 () Bool)

(assert (=> b!776010 (= e!431859 e!431864)))

(declare-fun res!524997 () Bool)

(assert (=> b!776010 (=> (not res!524997) (not e!431864))))

(assert (=> b!776010 (= res!524997 (= (seekEntryOrOpen!0 (select (arr!20332 a!3186) j!159) a!3186 mask!3328) lt!345733))))

(assert (=> b!776010 (= lt!345733 (Found!7939 j!159))))

(assert (= (and start!67170 res!525000) b!775993))

(assert (= (and b!775993 res!525006) b!776001))

(assert (= (and b!776001 res!525010) b!776007))

(assert (= (and b!776007 res!525003) b!776002))

(assert (= (and b!776002 res!525007) b!775998))

(assert (= (and b!775998 res!525001) b!775995))

(assert (= (and b!775995 res!525008) b!775994))

(assert (= (and b!775994 res!524996) b!776004))

(assert (= (and b!776004 res!525005) b!776008))

(assert (= (and b!776008 res!525002) b!776005))

(assert (= (and b!776005 res!524999) b!775999))

(assert (= (and b!775999 c!85899) b!775997))

(assert (= (and b!775999 (not c!85899)) b!776000))

(assert (= (and b!775999 res!525009) b!776009))

(assert (= (and b!776009 res!525004) b!776003))

(assert (= (and b!776003 res!524998) b!776010))

(assert (= (and b!776010 res!524997) b!775996))

(assert (= (and b!776003 (not res!524995)) b!776006))

(declare-fun m!720197 () Bool)

(assert (=> b!775996 m!720197))

(assert (=> b!775996 m!720197))

(declare-fun m!720199 () Bool)

(assert (=> b!775996 m!720199))

(declare-fun m!720201 () Bool)

(assert (=> start!67170 m!720201))

(declare-fun m!720203 () Bool)

(assert (=> start!67170 m!720203))

(declare-fun m!720205 () Bool)

(assert (=> b!775994 m!720205))

(assert (=> b!776008 m!720197))

(assert (=> b!776008 m!720197))

(declare-fun m!720207 () Bool)

(assert (=> b!776008 m!720207))

(assert (=> b!776008 m!720207))

(assert (=> b!776008 m!720197))

(declare-fun m!720209 () Bool)

(assert (=> b!776008 m!720209))

(declare-fun m!720211 () Bool)

(assert (=> b!776003 m!720211))

(declare-fun m!720213 () Bool)

(assert (=> b!776003 m!720213))

(declare-fun m!720215 () Bool)

(assert (=> b!775998 m!720215))

(assert (=> b!776000 m!720197))

(assert (=> b!776000 m!720197))

(declare-fun m!720217 () Bool)

(assert (=> b!776000 m!720217))

(declare-fun m!720219 () Bool)

(assert (=> b!776007 m!720219))

(declare-fun m!720221 () Bool)

(assert (=> b!776009 m!720221))

(declare-fun m!720223 () Bool)

(assert (=> b!776009 m!720223))

(assert (=> b!776009 m!720221))

(declare-fun m!720225 () Bool)

(assert (=> b!776009 m!720225))

(declare-fun m!720227 () Bool)

(assert (=> b!776009 m!720227))

(declare-fun m!720229 () Bool)

(assert (=> b!776009 m!720229))

(assert (=> b!775997 m!720197))

(assert (=> b!775997 m!720197))

(declare-fun m!720231 () Bool)

(assert (=> b!775997 m!720231))

(assert (=> b!776006 m!720197))

(assert (=> b!776006 m!720197))

(assert (=> b!776006 m!720217))

(assert (=> b!776010 m!720197))

(assert (=> b!776010 m!720197))

(declare-fun m!720233 () Bool)

(assert (=> b!776010 m!720233))

(declare-fun m!720235 () Bool)

(assert (=> b!775995 m!720235))

(assert (=> b!776001 m!720197))

(assert (=> b!776001 m!720197))

(declare-fun m!720237 () Bool)

(assert (=> b!776001 m!720237))

(declare-fun m!720239 () Bool)

(assert (=> b!776002 m!720239))

(declare-fun m!720241 () Bool)

(assert (=> b!776005 m!720241))

(check-sat (not b!775998) (not b!776010) (not b!776007) (not b!775995) (not b!776001) (not b!775994) (not b!776002) (not b!776003) (not start!67170) (not b!776006) (not b!776009) (not b!775997) (not b!775996) (not b!776000) (not b!776008))
(check-sat)
