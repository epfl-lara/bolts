; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66840 () Bool)

(assert start!66840)

(declare-fun b!770945 () Bool)

(declare-fun e!429225 () Bool)

(declare-fun e!429221 () Bool)

(assert (=> b!770945 (= e!429225 e!429221)))

(declare-fun res!521699 () Bool)

(assert (=> b!770945 (=> (not res!521699) (not e!429221))))

(declare-datatypes ((SeekEntryResult!7882 0))(
  ( (MissingZero!7882 (index!33895 (_ BitVec 32))) (Found!7882 (index!33896 (_ BitVec 32))) (Intermediate!7882 (undefined!8694 Bool) (index!33897 (_ BitVec 32)) (x!64846 (_ BitVec 32))) (Undefined!7882) (MissingVacant!7882 (index!33898 (_ BitVec 32))) )
))
(declare-fun lt!343219 () SeekEntryResult!7882)

(declare-fun lt!343214 () SeekEntryResult!7882)

(assert (=> b!770945 (= res!521699 (= lt!343219 lt!343214))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!343212 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42357 0))(
  ( (array!42358 (arr!20275 (Array (_ BitVec 32) (_ BitVec 64))) (size!20696 (_ BitVec 32))) )
))
(declare-fun lt!343221 () array!42357)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42357 (_ BitVec 32)) SeekEntryResult!7882)

(assert (=> b!770945 (= lt!343214 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343212 lt!343221 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770945 (= lt!343219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343212 mask!3328) lt!343212 lt!343221 mask!3328))))

(declare-fun a!3186 () array!42357)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!770945 (= lt!343212 (select (store (arr!20275 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770945 (= lt!343221 (array!42358 (store (arr!20275 a!3186) i!1173 k0!2102) (size!20696 a!3186)))))

(declare-fun b!770946 () Bool)

(declare-fun res!521705 () Bool)

(declare-fun e!429220 () Bool)

(assert (=> b!770946 (=> (not res!521705) (not e!429220))))

(declare-fun arrayContainsKey!0 (array!42357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770946 (= res!521705 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!770947 () Bool)

(declare-fun e!429228 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42357 (_ BitVec 32)) SeekEntryResult!7882)

(assert (=> b!770947 (= e!429228 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) (Found!7882 j!159)))))

(declare-fun b!770948 () Bool)

(declare-fun res!521701 () Bool)

(assert (=> b!770948 (=> (not res!521701) (not e!429220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770948 (= res!521701 (validKeyInArray!0 (select (arr!20275 a!3186) j!159)))))

(declare-fun lt!343218 () SeekEntryResult!7882)

(declare-fun b!770949 () Bool)

(assert (=> b!770949 (= e!429228 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) lt!343218))))

(declare-fun res!521692 () Bool)

(assert (=> start!66840 (=> (not res!521692) (not e!429220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66840 (= res!521692 (validMask!0 mask!3328))))

(assert (=> start!66840 e!429220))

(assert (=> start!66840 true))

(declare-fun array_inv!16049 (array!42357) Bool)

(assert (=> start!66840 (array_inv!16049 a!3186)))

(declare-fun b!770950 () Bool)

(declare-datatypes ((Unit!26564 0))(
  ( (Unit!26565) )
))
(declare-fun e!429227 () Unit!26564)

(declare-fun Unit!26566 () Unit!26564)

(assert (=> b!770950 (= e!429227 Unit!26566)))

(declare-fun lt!343215 () SeekEntryResult!7882)

(assert (=> b!770950 (= lt!343215 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20275 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343216 () (_ BitVec 32))

(assert (=> b!770950 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343216 resIntermediateIndex!5 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) (Found!7882 j!159))))

(declare-fun b!770951 () Bool)

(declare-fun res!521698 () Bool)

(declare-fun e!429229 () Bool)

(assert (=> b!770951 (=> (not res!521698) (not e!429229))))

(declare-datatypes ((List!14330 0))(
  ( (Nil!14327) (Cons!14326 (h!15425 (_ BitVec 64)) (t!20653 List!14330)) )
))
(declare-fun arrayNoDuplicates!0 (array!42357 (_ BitVec 32) List!14330) Bool)

(assert (=> b!770951 (= res!521698 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14327))))

(declare-fun b!770952 () Bool)

(declare-fun res!521695 () Bool)

(assert (=> b!770952 (=> (not res!521695) (not e!429229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42357 (_ BitVec 32)) Bool)

(assert (=> b!770952 (= res!521695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770953 () Bool)

(declare-fun e!429224 () Bool)

(declare-fun e!429223 () Bool)

(assert (=> b!770953 (= e!429224 e!429223)))

(declare-fun res!521697 () Bool)

(assert (=> b!770953 (=> (not res!521697) (not e!429223))))

(declare-fun lt!343213 () SeekEntryResult!7882)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42357 (_ BitVec 32)) SeekEntryResult!7882)

(assert (=> b!770953 (= res!521697 (= (seekEntryOrOpen!0 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) lt!343213))))

(assert (=> b!770953 (= lt!343213 (Found!7882 j!159))))

(declare-fun b!770954 () Bool)

(declare-fun res!521700 () Bool)

(assert (=> b!770954 (=> (not res!521700) (not e!429220))))

(assert (=> b!770954 (= res!521700 (and (= (size!20696 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20696 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20696 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770955 () Bool)

(declare-fun Unit!26567 () Unit!26564)

(assert (=> b!770955 (= e!429227 Unit!26567)))

(assert (=> b!770955 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343216 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) lt!343218)))

(declare-fun b!770956 () Bool)

(declare-fun res!521702 () Bool)

(assert (=> b!770956 (=> (not res!521702) (not e!429225))))

(assert (=> b!770956 (= res!521702 e!429228)))

(declare-fun c!85023 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770956 (= c!85023 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770957 () Bool)

(declare-fun e!429222 () Bool)

(assert (=> b!770957 (= e!429221 (not e!429222))))

(declare-fun res!521693 () Bool)

(assert (=> b!770957 (=> res!521693 e!429222)))

(get-info :version)

(assert (=> b!770957 (= res!521693 (or (not ((_ is Intermediate!7882) lt!343214)) (bvsge x!1131 (x!64846 lt!343214))))))

(assert (=> b!770957 e!429224))

(declare-fun res!521703 () Bool)

(assert (=> b!770957 (=> (not res!521703) (not e!429224))))

(assert (=> b!770957 (= res!521703 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343220 () Unit!26564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26564)

(assert (=> b!770957 (= lt!343220 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770958 () Bool)

(assert (=> b!770958 (= e!429222 true)))

(declare-fun lt!343217 () Unit!26564)

(assert (=> b!770958 (= lt!343217 e!429227)))

(declare-fun c!85022 () Bool)

(assert (=> b!770958 (= c!85022 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770958 (= lt!343216 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770959 () Bool)

(assert (=> b!770959 (= e!429229 e!429225)))

(declare-fun res!521696 () Bool)

(assert (=> b!770959 (=> (not res!521696) (not e!429225))))

(assert (=> b!770959 (= res!521696 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20275 a!3186) j!159) mask!3328) (select (arr!20275 a!3186) j!159) a!3186 mask!3328) lt!343218))))

(assert (=> b!770959 (= lt!343218 (Intermediate!7882 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770960 () Bool)

(declare-fun res!521694 () Bool)

(assert (=> b!770960 (=> (not res!521694) (not e!429229))))

(assert (=> b!770960 (= res!521694 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20696 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20696 a!3186))))))

(declare-fun b!770961 () Bool)

(declare-fun res!521707 () Bool)

(assert (=> b!770961 (=> (not res!521707) (not e!429220))))

(assert (=> b!770961 (= res!521707 (validKeyInArray!0 k0!2102))))

(declare-fun b!770962 () Bool)

(declare-fun res!521704 () Bool)

(assert (=> b!770962 (=> (not res!521704) (not e!429225))))

(assert (=> b!770962 (= res!521704 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20275 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770963 () Bool)

(assert (=> b!770963 (= e!429223 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20275 a!3186) j!159) a!3186 mask!3328) lt!343213))))

(declare-fun b!770964 () Bool)

(assert (=> b!770964 (= e!429220 e!429229)))

(declare-fun res!521706 () Bool)

(assert (=> b!770964 (=> (not res!521706) (not e!429229))))

(declare-fun lt!343222 () SeekEntryResult!7882)

(assert (=> b!770964 (= res!521706 (or (= lt!343222 (MissingZero!7882 i!1173)) (= lt!343222 (MissingVacant!7882 i!1173))))))

(assert (=> b!770964 (= lt!343222 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!66840 res!521692) b!770954))

(assert (= (and b!770954 res!521700) b!770948))

(assert (= (and b!770948 res!521701) b!770961))

(assert (= (and b!770961 res!521707) b!770946))

(assert (= (and b!770946 res!521705) b!770964))

(assert (= (and b!770964 res!521706) b!770952))

(assert (= (and b!770952 res!521695) b!770951))

(assert (= (and b!770951 res!521698) b!770960))

(assert (= (and b!770960 res!521694) b!770959))

(assert (= (and b!770959 res!521696) b!770962))

(assert (= (and b!770962 res!521704) b!770956))

(assert (= (and b!770956 c!85023) b!770949))

(assert (= (and b!770956 (not c!85023)) b!770947))

(assert (= (and b!770956 res!521702) b!770945))

(assert (= (and b!770945 res!521699) b!770957))

(assert (= (and b!770957 res!521703) b!770953))

(assert (= (and b!770953 res!521697) b!770963))

(assert (= (and b!770957 (not res!521693)) b!770958))

(assert (= (and b!770958 c!85022) b!770955))

(assert (= (and b!770958 (not c!85022)) b!770950))

(declare-fun m!716219 () Bool)

(assert (=> b!770950 m!716219))

(assert (=> b!770950 m!716219))

(declare-fun m!716221 () Bool)

(assert (=> b!770950 m!716221))

(assert (=> b!770950 m!716219))

(declare-fun m!716223 () Bool)

(assert (=> b!770950 m!716223))

(assert (=> b!770948 m!716219))

(assert (=> b!770948 m!716219))

(declare-fun m!716225 () Bool)

(assert (=> b!770948 m!716225))

(declare-fun m!716227 () Bool)

(assert (=> b!770957 m!716227))

(declare-fun m!716229 () Bool)

(assert (=> b!770957 m!716229))

(declare-fun m!716231 () Bool)

(assert (=> b!770962 m!716231))

(assert (=> b!770955 m!716219))

(assert (=> b!770955 m!716219))

(declare-fun m!716233 () Bool)

(assert (=> b!770955 m!716233))

(assert (=> b!770963 m!716219))

(assert (=> b!770963 m!716219))

(declare-fun m!716235 () Bool)

(assert (=> b!770963 m!716235))

(assert (=> b!770959 m!716219))

(assert (=> b!770959 m!716219))

(declare-fun m!716237 () Bool)

(assert (=> b!770959 m!716237))

(assert (=> b!770959 m!716237))

(assert (=> b!770959 m!716219))

(declare-fun m!716239 () Bool)

(assert (=> b!770959 m!716239))

(declare-fun m!716241 () Bool)

(assert (=> b!770961 m!716241))

(declare-fun m!716243 () Bool)

(assert (=> b!770945 m!716243))

(declare-fun m!716245 () Bool)

(assert (=> b!770945 m!716245))

(declare-fun m!716247 () Bool)

(assert (=> b!770945 m!716247))

(declare-fun m!716249 () Bool)

(assert (=> b!770945 m!716249))

(assert (=> b!770945 m!716243))

(declare-fun m!716251 () Bool)

(assert (=> b!770945 m!716251))

(declare-fun m!716253 () Bool)

(assert (=> start!66840 m!716253))

(declare-fun m!716255 () Bool)

(assert (=> start!66840 m!716255))

(declare-fun m!716257 () Bool)

(assert (=> b!770951 m!716257))

(assert (=> b!770949 m!716219))

(assert (=> b!770949 m!716219))

(declare-fun m!716259 () Bool)

(assert (=> b!770949 m!716259))

(declare-fun m!716261 () Bool)

(assert (=> b!770964 m!716261))

(declare-fun m!716263 () Bool)

(assert (=> b!770952 m!716263))

(assert (=> b!770953 m!716219))

(assert (=> b!770953 m!716219))

(declare-fun m!716265 () Bool)

(assert (=> b!770953 m!716265))

(declare-fun m!716267 () Bool)

(assert (=> b!770958 m!716267))

(assert (=> b!770947 m!716219))

(assert (=> b!770947 m!716219))

(assert (=> b!770947 m!716221))

(declare-fun m!716269 () Bool)

(assert (=> b!770946 m!716269))

(check-sat (not b!770959) (not b!770951) (not b!770952) (not b!770961) (not start!66840) (not b!770947) (not b!770964) (not b!770958) (not b!770953) (not b!770957) (not b!770946) (not b!770949) (not b!770948) (not b!770945) (not b!770955) (not b!770963) (not b!770950))
(check-sat)
