; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65448 () Bool)

(assert start!65448)

(declare-datatypes ((array!41574 0))(
  ( (array!41575 (arr!19897 (Array (_ BitVec 32) (_ BitVec 64))) (size!20318 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41574)

(declare-datatypes ((SeekEntryResult!7504 0))(
  ( (MissingZero!7504 (index!32383 (_ BitVec 32))) (Found!7504 (index!32384 (_ BitVec 32))) (Intermediate!7504 (undefined!8316 Bool) (index!32385 (_ BitVec 32)) (x!63367 (_ BitVec 32))) (Undefined!7504) (MissingVacant!7504 (index!32386 (_ BitVec 32))) )
))
(declare-fun lt!330959 () SeekEntryResult!7504)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!416113 () Bool)

(declare-fun b!744930 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41574 (_ BitVec 32)) SeekEntryResult!7504)

(assert (=> b!744930 (= e!416113 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19897 a!3186) j!159) a!3186 mask!3328) lt!330959))))

(declare-fun res!501995 () Bool)

(declare-fun e!416112 () Bool)

(assert (=> start!65448 (=> (not res!501995) (not e!416112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65448 (= res!501995 (validMask!0 mask!3328))))

(assert (=> start!65448 e!416112))

(assert (=> start!65448 true))

(declare-fun array_inv!15671 (array!41574) Bool)

(assert (=> start!65448 (array_inv!15671 a!3186)))

(declare-fun b!744931 () Bool)

(declare-fun res!501987 () Bool)

(declare-fun e!416117 () Bool)

(assert (=> b!744931 (=> (not res!501987) (not e!416117))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744931 (= res!501987 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20318 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20318 a!3186))))))

(declare-fun b!744932 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41574 (_ BitVec 32)) SeekEntryResult!7504)

(assert (=> b!744932 (= e!416113 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19897 a!3186) j!159) a!3186 mask!3328) (Found!7504 j!159)))))

(declare-fun b!744933 () Bool)

(declare-fun e!416110 () Bool)

(declare-fun e!416115 () Bool)

(assert (=> b!744933 (= e!416110 e!416115)))

(declare-fun res!502001 () Bool)

(assert (=> b!744933 (=> (not res!502001) (not e!416115))))

(declare-fun lt!330961 () SeekEntryResult!7504)

(declare-fun lt!330960 () SeekEntryResult!7504)

(assert (=> b!744933 (= res!502001 (= lt!330961 lt!330960))))

(declare-fun lt!330965 () array!41574)

(declare-fun lt!330958 () (_ BitVec 64))

(assert (=> b!744933 (= lt!330960 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330958 lt!330965 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744933 (= lt!330961 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330958 mask!3328) lt!330958 lt!330965 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!744933 (= lt!330958 (select (store (arr!19897 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744933 (= lt!330965 (array!41575 (store (arr!19897 a!3186) i!1173 k0!2102) (size!20318 a!3186)))))

(declare-fun b!744934 () Bool)

(declare-fun res!501991 () Bool)

(assert (=> b!744934 (=> (not res!501991) (not e!416112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744934 (= res!501991 (validKeyInArray!0 (select (arr!19897 a!3186) j!159)))))

(declare-fun b!744935 () Bool)

(declare-fun res!501990 () Bool)

(assert (=> b!744935 (=> (not res!501990) (not e!416112))))

(declare-fun arrayContainsKey!0 (array!41574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744935 (= res!501990 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744936 () Bool)

(declare-fun res!501992 () Bool)

(assert (=> b!744936 (=> (not res!501992) (not e!416117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41574 (_ BitVec 32)) Bool)

(assert (=> b!744936 (= res!501992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744937 () Bool)

(declare-fun res!502000 () Bool)

(assert (=> b!744937 (=> (not res!502000) (not e!416110))))

(assert (=> b!744937 (= res!502000 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19897 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!416111 () Bool)

(declare-fun lt!330962 () SeekEntryResult!7504)

(declare-fun b!744938 () Bool)

(assert (=> b!744938 (= e!416111 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19897 a!3186) j!159) a!3186 mask!3328) lt!330962))))

(declare-fun b!744939 () Bool)

(declare-fun res!501994 () Bool)

(assert (=> b!744939 (=> (not res!501994) (not e!416112))))

(assert (=> b!744939 (= res!501994 (and (= (size!20318 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20318 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20318 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744940 () Bool)

(declare-fun e!416114 () Bool)

(assert (=> b!744940 (= e!416114 true)))

(declare-fun lt!330964 () SeekEntryResult!7504)

(assert (=> b!744940 (= lt!330964 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19897 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744941 () Bool)

(declare-fun res!502002 () Bool)

(assert (=> b!744941 (=> (not res!502002) (not e!416112))))

(assert (=> b!744941 (= res!502002 (validKeyInArray!0 k0!2102))))

(declare-fun b!744942 () Bool)

(assert (=> b!744942 (= e!416115 (not e!416114))))

(declare-fun res!501988 () Bool)

(assert (=> b!744942 (=> res!501988 e!416114)))

(get-info :version)

(assert (=> b!744942 (= res!501988 (or (not ((_ is Intermediate!7504) lt!330960)) (bvslt x!1131 (x!63367 lt!330960)) (not (= x!1131 (x!63367 lt!330960))) (not (= index!1321 (index!32385 lt!330960)))))))

(declare-fun e!416116 () Bool)

(assert (=> b!744942 e!416116))

(declare-fun res!501998 () Bool)

(assert (=> b!744942 (=> (not res!501998) (not e!416116))))

(assert (=> b!744942 (= res!501998 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25488 0))(
  ( (Unit!25489) )
))
(declare-fun lt!330957 () Unit!25488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41574 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25488)

(assert (=> b!744942 (= lt!330957 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744943 () Bool)

(assert (=> b!744943 (= e!416116 e!416111)))

(declare-fun res!501989 () Bool)

(assert (=> b!744943 (=> (not res!501989) (not e!416111))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41574 (_ BitVec 32)) SeekEntryResult!7504)

(assert (=> b!744943 (= res!501989 (= (seekEntryOrOpen!0 (select (arr!19897 a!3186) j!159) a!3186 mask!3328) lt!330962))))

(assert (=> b!744943 (= lt!330962 (Found!7504 j!159))))

(declare-fun b!744944 () Bool)

(assert (=> b!744944 (= e!416117 e!416110)))

(declare-fun res!501999 () Bool)

(assert (=> b!744944 (=> (not res!501999) (not e!416110))))

(assert (=> b!744944 (= res!501999 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19897 a!3186) j!159) mask!3328) (select (arr!19897 a!3186) j!159) a!3186 mask!3328) lt!330959))))

(assert (=> b!744944 (= lt!330959 (Intermediate!7504 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744945 () Bool)

(declare-fun res!501996 () Bool)

(assert (=> b!744945 (=> (not res!501996) (not e!416117))))

(declare-datatypes ((List!13952 0))(
  ( (Nil!13949) (Cons!13948 (h!15020 (_ BitVec 64)) (t!20275 List!13952)) )
))
(declare-fun arrayNoDuplicates!0 (array!41574 (_ BitVec 32) List!13952) Bool)

(assert (=> b!744945 (= res!501996 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13949))))

(declare-fun b!744946 () Bool)

(assert (=> b!744946 (= e!416112 e!416117)))

(declare-fun res!501993 () Bool)

(assert (=> b!744946 (=> (not res!501993) (not e!416117))))

(declare-fun lt!330963 () SeekEntryResult!7504)

(assert (=> b!744946 (= res!501993 (or (= lt!330963 (MissingZero!7504 i!1173)) (= lt!330963 (MissingVacant!7504 i!1173))))))

(assert (=> b!744946 (= lt!330963 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!744947 () Bool)

(declare-fun res!501997 () Bool)

(assert (=> b!744947 (=> (not res!501997) (not e!416110))))

(assert (=> b!744947 (= res!501997 e!416113)))

(declare-fun c!81852 () Bool)

(assert (=> b!744947 (= c!81852 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65448 res!501995) b!744939))

(assert (= (and b!744939 res!501994) b!744934))

(assert (= (and b!744934 res!501991) b!744941))

(assert (= (and b!744941 res!502002) b!744935))

(assert (= (and b!744935 res!501990) b!744946))

(assert (= (and b!744946 res!501993) b!744936))

(assert (= (and b!744936 res!501992) b!744945))

(assert (= (and b!744945 res!501996) b!744931))

(assert (= (and b!744931 res!501987) b!744944))

(assert (= (and b!744944 res!501999) b!744937))

(assert (= (and b!744937 res!502000) b!744947))

(assert (= (and b!744947 c!81852) b!744930))

(assert (= (and b!744947 (not c!81852)) b!744932))

(assert (= (and b!744947 res!501997) b!744933))

(assert (= (and b!744933 res!502001) b!744942))

(assert (= (and b!744942 res!501998) b!744943))

(assert (= (and b!744943 res!501989) b!744938))

(assert (= (and b!744942 (not res!501988)) b!744940))

(declare-fun m!695465 () Bool)

(assert (=> b!744943 m!695465))

(assert (=> b!744943 m!695465))

(declare-fun m!695467 () Bool)

(assert (=> b!744943 m!695467))

(assert (=> b!744940 m!695465))

(assert (=> b!744940 m!695465))

(declare-fun m!695469 () Bool)

(assert (=> b!744940 m!695469))

(declare-fun m!695471 () Bool)

(assert (=> b!744945 m!695471))

(declare-fun m!695473 () Bool)

(assert (=> start!65448 m!695473))

(declare-fun m!695475 () Bool)

(assert (=> start!65448 m!695475))

(declare-fun m!695477 () Bool)

(assert (=> b!744942 m!695477))

(declare-fun m!695479 () Bool)

(assert (=> b!744942 m!695479))

(declare-fun m!695481 () Bool)

(assert (=> b!744941 m!695481))

(assert (=> b!744932 m!695465))

(assert (=> b!744932 m!695465))

(assert (=> b!744932 m!695469))

(assert (=> b!744938 m!695465))

(assert (=> b!744938 m!695465))

(declare-fun m!695483 () Bool)

(assert (=> b!744938 m!695483))

(declare-fun m!695485 () Bool)

(assert (=> b!744935 m!695485))

(declare-fun m!695487 () Bool)

(assert (=> b!744946 m!695487))

(assert (=> b!744934 m!695465))

(assert (=> b!744934 m!695465))

(declare-fun m!695489 () Bool)

(assert (=> b!744934 m!695489))

(assert (=> b!744944 m!695465))

(assert (=> b!744944 m!695465))

(declare-fun m!695491 () Bool)

(assert (=> b!744944 m!695491))

(assert (=> b!744944 m!695491))

(assert (=> b!744944 m!695465))

(declare-fun m!695493 () Bool)

(assert (=> b!744944 m!695493))

(declare-fun m!695495 () Bool)

(assert (=> b!744936 m!695495))

(declare-fun m!695497 () Bool)

(assert (=> b!744937 m!695497))

(assert (=> b!744930 m!695465))

(assert (=> b!744930 m!695465))

(declare-fun m!695499 () Bool)

(assert (=> b!744930 m!695499))

(declare-fun m!695501 () Bool)

(assert (=> b!744933 m!695501))

(declare-fun m!695503 () Bool)

(assert (=> b!744933 m!695503))

(declare-fun m!695505 () Bool)

(assert (=> b!744933 m!695505))

(declare-fun m!695507 () Bool)

(assert (=> b!744933 m!695507))

(assert (=> b!744933 m!695503))

(declare-fun m!695509 () Bool)

(assert (=> b!744933 m!695509))

(check-sat (not b!744945) (not b!744934) (not b!744938) (not b!744933) (not b!744944) (not b!744932) (not b!744940) (not b!744936) (not b!744942) (not start!65448) (not b!744946) (not b!744930) (not b!744943) (not b!744935) (not b!744941))
(check-sat)
