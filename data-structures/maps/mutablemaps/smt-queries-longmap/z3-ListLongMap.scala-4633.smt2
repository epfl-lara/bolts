; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64518 () Bool)

(assert start!64518)

(declare-fun b!725695 () Bool)

(declare-fun res!486893 () Bool)

(declare-fun e!406391 () Bool)

(assert (=> b!725695 (=> (not res!486893) (not e!406391))))

(declare-datatypes ((array!40989 0))(
  ( (array!40990 (arr!19612 (Array (_ BitVec 32) (_ BitVec 64))) (size!20033 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40989)

(declare-datatypes ((List!13667 0))(
  ( (Nil!13664) (Cons!13663 (h!14720 (_ BitVec 64)) (t!19990 List!13667)) )
))
(declare-fun arrayNoDuplicates!0 (array!40989 (_ BitVec 32) List!13667) Bool)

(assert (=> b!725695 (= res!486893 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13664))))

(declare-fun b!725697 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!406392 () Bool)

(declare-datatypes ((SeekEntryResult!7219 0))(
  ( (MissingZero!7219 (index!31243 (_ BitVec 32))) (Found!7219 (index!31244 (_ BitVec 32))) (Intermediate!7219 (undefined!8031 Bool) (index!31245 (_ BitVec 32)) (x!62262 (_ BitVec 32))) (Undefined!7219) (MissingVacant!7219 (index!31246 (_ BitVec 32))) )
))
(declare-fun lt!321441 () SeekEntryResult!7219)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40989 (_ BitVec 32)) SeekEntryResult!7219)

(assert (=> b!725697 (= e!406392 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19612 a!3186) j!159) a!3186 mask!3328) lt!321441))))

(declare-fun b!725698 () Bool)

(declare-fun res!486895 () Bool)

(declare-fun e!406387 () Bool)

(assert (=> b!725698 (=> (not res!486895) (not e!406387))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725698 (= res!486895 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19612 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725699 () Bool)

(declare-fun lt!321444 () SeekEntryResult!7219)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!406386 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40989 (_ BitVec 32)) SeekEntryResult!7219)

(assert (=> b!725699 (= e!406386 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19612 a!3186) j!159) a!3186 mask!3328) lt!321444))))

(declare-fun b!725700 () Bool)

(assert (=> b!725700 (= e!406391 e!406387)))

(declare-fun res!486896 () Bool)

(assert (=> b!725700 (=> (not res!486896) (not e!406387))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725700 (= res!486896 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19612 a!3186) j!159) mask!3328) (select (arr!19612 a!3186) j!159) a!3186 mask!3328) lt!321441))))

(assert (=> b!725700 (= lt!321441 (Intermediate!7219 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725701 () Bool)

(declare-fun res!486898 () Bool)

(declare-fun e!406388 () Bool)

(assert (=> b!725701 (=> (not res!486898) (not e!406388))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725701 (= res!486898 (validKeyInArray!0 k0!2102))))

(declare-fun b!725702 () Bool)

(assert (=> b!725702 (= e!406392 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19612 a!3186) j!159) a!3186 mask!3328) (Found!7219 j!159)))))

(declare-fun b!725703 () Bool)

(declare-fun e!406389 () Bool)

(assert (=> b!725703 (= e!406387 e!406389)))

(declare-fun res!486903 () Bool)

(assert (=> b!725703 (=> (not res!486903) (not e!406389))))

(declare-fun lt!321442 () array!40989)

(declare-fun lt!321446 () (_ BitVec 64))

(assert (=> b!725703 (= res!486903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321446 mask!3328) lt!321446 lt!321442 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321446 lt!321442 mask!3328)))))

(assert (=> b!725703 (= lt!321446 (select (store (arr!19612 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!725703 (= lt!321442 (array!40990 (store (arr!19612 a!3186) i!1173 k0!2102) (size!20033 a!3186)))))

(declare-fun b!725704 () Bool)

(declare-fun res!486894 () Bool)

(assert (=> b!725704 (=> (not res!486894) (not e!406391))))

(assert (=> b!725704 (= res!486894 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20033 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20033 a!3186))))))

(declare-fun b!725705 () Bool)

(assert (=> b!725705 (= e!406388 e!406391)))

(declare-fun res!486890 () Bool)

(assert (=> b!725705 (=> (not res!486890) (not e!406391))))

(declare-fun lt!321443 () SeekEntryResult!7219)

(assert (=> b!725705 (= res!486890 (or (= lt!321443 (MissingZero!7219 i!1173)) (= lt!321443 (MissingVacant!7219 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40989 (_ BitVec 32)) SeekEntryResult!7219)

(assert (=> b!725705 (= lt!321443 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!486897 () Bool)

(assert (=> start!64518 (=> (not res!486897) (not e!406388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64518 (= res!486897 (validMask!0 mask!3328))))

(assert (=> start!64518 e!406388))

(assert (=> start!64518 true))

(declare-fun array_inv!15386 (array!40989) Bool)

(assert (=> start!64518 (array_inv!15386 a!3186)))

(declare-fun b!725696 () Bool)

(declare-fun res!486889 () Bool)

(assert (=> b!725696 (=> (not res!486889) (not e!406391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40989 (_ BitVec 32)) Bool)

(assert (=> b!725696 (= res!486889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725706 () Bool)

(declare-fun e!406390 () Bool)

(assert (=> b!725706 (= e!406390 e!406386)))

(declare-fun res!486902 () Bool)

(assert (=> b!725706 (=> (not res!486902) (not e!406386))))

(assert (=> b!725706 (= res!486902 (= (seekEntryOrOpen!0 (select (arr!19612 a!3186) j!159) a!3186 mask!3328) lt!321444))))

(assert (=> b!725706 (= lt!321444 (Found!7219 j!159))))

(declare-fun b!725707 () Bool)

(declare-fun res!486900 () Bool)

(assert (=> b!725707 (=> (not res!486900) (not e!406387))))

(assert (=> b!725707 (= res!486900 e!406392)))

(declare-fun c!79776 () Bool)

(assert (=> b!725707 (= c!79776 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725708 () Bool)

(declare-fun res!486899 () Bool)

(assert (=> b!725708 (=> (not res!486899) (not e!406388))))

(assert (=> b!725708 (= res!486899 (and (= (size!20033 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20033 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20033 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725709 () Bool)

(assert (=> b!725709 (= e!406389 (not true))))

(assert (=> b!725709 e!406390))

(declare-fun res!486901 () Bool)

(assert (=> b!725709 (=> (not res!486901) (not e!406390))))

(assert (=> b!725709 (= res!486901 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24756 0))(
  ( (Unit!24757) )
))
(declare-fun lt!321445 () Unit!24756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40989 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24756)

(assert (=> b!725709 (= lt!321445 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725710 () Bool)

(declare-fun res!486892 () Bool)

(assert (=> b!725710 (=> (not res!486892) (not e!406388))))

(declare-fun arrayContainsKey!0 (array!40989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725710 (= res!486892 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725711 () Bool)

(declare-fun res!486891 () Bool)

(assert (=> b!725711 (=> (not res!486891) (not e!406388))))

(assert (=> b!725711 (= res!486891 (validKeyInArray!0 (select (arr!19612 a!3186) j!159)))))

(assert (= (and start!64518 res!486897) b!725708))

(assert (= (and b!725708 res!486899) b!725711))

(assert (= (and b!725711 res!486891) b!725701))

(assert (= (and b!725701 res!486898) b!725710))

(assert (= (and b!725710 res!486892) b!725705))

(assert (= (and b!725705 res!486890) b!725696))

(assert (= (and b!725696 res!486889) b!725695))

(assert (= (and b!725695 res!486893) b!725704))

(assert (= (and b!725704 res!486894) b!725700))

(assert (= (and b!725700 res!486896) b!725698))

(assert (= (and b!725698 res!486895) b!725707))

(assert (= (and b!725707 c!79776) b!725697))

(assert (= (and b!725707 (not c!79776)) b!725702))

(assert (= (and b!725707 res!486900) b!725703))

(assert (= (and b!725703 res!486903) b!725709))

(assert (= (and b!725709 res!486901) b!725706))

(assert (= (and b!725706 res!486902) b!725699))

(declare-fun m!679919 () Bool)

(assert (=> b!725709 m!679919))

(declare-fun m!679921 () Bool)

(assert (=> b!725709 m!679921))

(declare-fun m!679923 () Bool)

(assert (=> b!725705 m!679923))

(declare-fun m!679925 () Bool)

(assert (=> b!725696 m!679925))

(declare-fun m!679927 () Bool)

(assert (=> b!725698 m!679927))

(declare-fun m!679929 () Bool)

(assert (=> start!64518 m!679929))

(declare-fun m!679931 () Bool)

(assert (=> start!64518 m!679931))

(declare-fun m!679933 () Bool)

(assert (=> b!725700 m!679933))

(assert (=> b!725700 m!679933))

(declare-fun m!679935 () Bool)

(assert (=> b!725700 m!679935))

(assert (=> b!725700 m!679935))

(assert (=> b!725700 m!679933))

(declare-fun m!679937 () Bool)

(assert (=> b!725700 m!679937))

(declare-fun m!679939 () Bool)

(assert (=> b!725701 m!679939))

(declare-fun m!679941 () Bool)

(assert (=> b!725695 m!679941))

(declare-fun m!679943 () Bool)

(assert (=> b!725703 m!679943))

(declare-fun m!679945 () Bool)

(assert (=> b!725703 m!679945))

(declare-fun m!679947 () Bool)

(assert (=> b!725703 m!679947))

(declare-fun m!679949 () Bool)

(assert (=> b!725703 m!679949))

(assert (=> b!725703 m!679949))

(declare-fun m!679951 () Bool)

(assert (=> b!725703 m!679951))

(assert (=> b!725711 m!679933))

(assert (=> b!725711 m!679933))

(declare-fun m!679953 () Bool)

(assert (=> b!725711 m!679953))

(declare-fun m!679955 () Bool)

(assert (=> b!725710 m!679955))

(assert (=> b!725702 m!679933))

(assert (=> b!725702 m!679933))

(declare-fun m!679957 () Bool)

(assert (=> b!725702 m!679957))

(assert (=> b!725699 m!679933))

(assert (=> b!725699 m!679933))

(declare-fun m!679959 () Bool)

(assert (=> b!725699 m!679959))

(assert (=> b!725706 m!679933))

(assert (=> b!725706 m!679933))

(declare-fun m!679961 () Bool)

(assert (=> b!725706 m!679961))

(assert (=> b!725697 m!679933))

(assert (=> b!725697 m!679933))

(declare-fun m!679963 () Bool)

(assert (=> b!725697 m!679963))

(check-sat (not b!725697) (not b!725695) (not b!725705) (not start!64518) (not b!725702) (not b!725701) (not b!725700) (not b!725699) (not b!725706) (not b!725696) (not b!725709) (not b!725703) (not b!725711) (not b!725710))
(check-sat)
