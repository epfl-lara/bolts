; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45654 () Bool)

(assert start!45654)

(declare-fun b!503155 () Bool)

(declare-fun res!304623 () Bool)

(declare-fun e!294674 () Bool)

(assert (=> b!503155 (=> res!304623 e!294674)))

(declare-fun e!294670 () Bool)

(assert (=> b!503155 (= res!304623 e!294670)))

(declare-fun res!304618 () Bool)

(assert (=> b!503155 (=> (not res!304618) (not e!294670))))

(declare-datatypes ((SeekEntryResult!4036 0))(
  ( (MissingZero!4036 (index!18332 (_ BitVec 32))) (Found!4036 (index!18333 (_ BitVec 32))) (Intermediate!4036 (undefined!4848 Bool) (index!18334 (_ BitVec 32)) (x!47384 (_ BitVec 32))) (Undefined!4036) (MissingVacant!4036 (index!18335 (_ BitVec 32))) )
))
(declare-fun lt!228934 () SeekEntryResult!4036)

(assert (=> b!503155 (= res!304618 (bvsgt #b00000000000000000000000000000000 (x!47384 lt!228934)))))

(declare-fun b!503156 () Bool)

(declare-fun res!304624 () Bool)

(declare-fun e!294669 () Bool)

(assert (=> b!503156 (=> (not res!304624) (not e!294669))))

(declare-datatypes ((array!32370 0))(
  ( (array!32371 (arr!15562 (Array (_ BitVec 32) (_ BitVec 64))) (size!15926 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32370)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32370 (_ BitVec 32)) Bool)

(assert (=> b!503156 (= res!304624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503157 () Bool)

(declare-fun res!304622 () Bool)

(declare-fun e!294668 () Bool)

(assert (=> b!503157 (=> (not res!304622) (not e!294668))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503157 (= res!304622 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503158 () Bool)

(declare-fun e!294676 () Bool)

(assert (=> b!503158 (= e!294669 (not e!294676))))

(declare-fun res!304621 () Bool)

(assert (=> b!503158 (=> res!304621 e!294676)))

(declare-fun lt!228937 () (_ BitVec 32))

(declare-fun lt!228931 () array!32370)

(declare-fun lt!228930 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32370 (_ BitVec 32)) SeekEntryResult!4036)

(assert (=> b!503158 (= res!304621 (= lt!228934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228937 lt!228930 lt!228931 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!228935 () (_ BitVec 32))

(assert (=> b!503158 (= lt!228934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228935 (select (arr!15562 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503158 (= lt!228937 (toIndex!0 lt!228930 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503158 (= lt!228930 (select (store (arr!15562 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503158 (= lt!228935 (toIndex!0 (select (arr!15562 a!3235) j!176) mask!3524))))

(assert (=> b!503158 (= lt!228931 (array!32371 (store (arr!15562 a!3235) i!1204 k0!2280) (size!15926 a!3235)))))

(declare-fun e!294673 () Bool)

(assert (=> b!503158 e!294673))

(declare-fun res!304614 () Bool)

(assert (=> b!503158 (=> (not res!304614) (not e!294673))))

(assert (=> b!503158 (= res!304614 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15234 0))(
  ( (Unit!15235) )
))
(declare-fun lt!228933 () Unit!15234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32370 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15234)

(assert (=> b!503158 (= lt!228933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503159 () Bool)

(declare-fun res!304615 () Bool)

(assert (=> b!503159 (=> (not res!304615) (not e!294668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503159 (= res!304615 (validKeyInArray!0 (select (arr!15562 a!3235) j!176)))))

(declare-fun b!503160 () Bool)

(declare-fun e!294671 () Unit!15234)

(declare-fun Unit!15236 () Unit!15234)

(assert (=> b!503160 (= e!294671 Unit!15236)))

(declare-fun b!503161 () Bool)

(declare-fun res!304628 () Bool)

(assert (=> b!503161 (=> (not res!304628) (not e!294669))))

(declare-datatypes ((List!9773 0))(
  ( (Nil!9770) (Cons!9769 (h!10646 (_ BitVec 64)) (t!16009 List!9773)) )
))
(declare-fun arrayNoDuplicates!0 (array!32370 (_ BitVec 32) List!9773) Bool)

(assert (=> b!503161 (= res!304628 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9770))))

(declare-fun b!503162 () Bool)

(declare-fun res!304625 () Bool)

(assert (=> b!503162 (=> (not res!304625) (not e!294668))))

(assert (=> b!503162 (= res!304625 (validKeyInArray!0 k0!2280))))

(declare-fun b!503163 () Bool)

(declare-fun e!294672 () Bool)

(assert (=> b!503163 (= e!294672 false)))

(declare-fun b!503164 () Bool)

(declare-fun res!304619 () Bool)

(assert (=> b!503164 (=> res!304619 e!294676)))

(get-info :version)

(assert (=> b!503164 (= res!304619 (or (undefined!4848 lt!228934) (not ((_ is Intermediate!4036) lt!228934))))))

(declare-fun b!503165 () Bool)

(declare-fun res!304616 () Bool)

(assert (=> b!503165 (=> (not res!304616) (not e!294668))))

(assert (=> b!503165 (= res!304616 (and (= (size!15926 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15926 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15926 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503167 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32370 (_ BitVec 32)) SeekEntryResult!4036)

(assert (=> b!503167 (= e!294673 (= (seekEntryOrOpen!0 (select (arr!15562 a!3235) j!176) a!3235 mask!3524) (Found!4036 j!176)))))

(declare-fun b!503168 () Bool)

(assert (=> b!503168 (= e!294668 e!294669)))

(declare-fun res!304620 () Bool)

(assert (=> b!503168 (=> (not res!304620) (not e!294669))))

(declare-fun lt!228932 () SeekEntryResult!4036)

(assert (=> b!503168 (= res!304620 (or (= lt!228932 (MissingZero!4036 i!1204)) (= lt!228932 (MissingVacant!4036 i!1204))))))

(assert (=> b!503168 (= lt!228932 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503169 () Bool)

(declare-fun Unit!15237 () Unit!15234)

(assert (=> b!503169 (= e!294671 Unit!15237)))

(declare-fun lt!228938 () Unit!15234)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32370 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15234)

(assert (=> b!503169 (= lt!228938 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228935 #b00000000000000000000000000000000 (index!18334 lt!228934) (x!47384 lt!228934) mask!3524))))

(declare-fun res!304617 () Bool)

(assert (=> b!503169 (= res!304617 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228935 lt!228930 lt!228931 mask!3524) (Intermediate!4036 false (index!18334 lt!228934) (x!47384 lt!228934))))))

(assert (=> b!503169 (=> (not res!304617) (not e!294672))))

(assert (=> b!503169 e!294672))

(declare-fun res!304626 () Bool)

(assert (=> start!45654 (=> (not res!304626) (not e!294668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45654 (= res!304626 (validMask!0 mask!3524))))

(assert (=> start!45654 e!294668))

(assert (=> start!45654 true))

(declare-fun array_inv!11336 (array!32370) Bool)

(assert (=> start!45654 (array_inv!11336 a!3235)))

(declare-fun b!503166 () Bool)

(assert (=> b!503166 (= e!294674 true)))

(declare-fun lt!228936 () SeekEntryResult!4036)

(assert (=> b!503166 (= lt!228936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228935 lt!228930 lt!228931 mask!3524))))

(declare-fun b!503170 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32370 (_ BitVec 32)) SeekEntryResult!4036)

(assert (=> b!503170 (= e!294670 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228935 (index!18334 lt!228934) (select (arr!15562 a!3235) j!176) a!3235 mask!3524) (Found!4036 j!176))))))

(declare-fun b!503171 () Bool)

(assert (=> b!503171 (= e!294676 e!294674)))

(declare-fun res!304627 () Bool)

(assert (=> b!503171 (=> res!304627 e!294674)))

(assert (=> b!503171 (= res!304627 (or (bvsgt (x!47384 lt!228934) #b01111111111111111111111111111110) (bvslt lt!228935 #b00000000000000000000000000000000) (bvsge lt!228935 (size!15926 a!3235)) (bvslt (index!18334 lt!228934) #b00000000000000000000000000000000) (bvsge (index!18334 lt!228934) (size!15926 a!3235)) (not (= lt!228934 (Intermediate!4036 false (index!18334 lt!228934) (x!47384 lt!228934))))))))

(assert (=> b!503171 (= (index!18334 lt!228934) i!1204)))

(declare-fun lt!228928 () Unit!15234)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32370 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15234)

(assert (=> b!503171 (= lt!228928 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228935 #b00000000000000000000000000000000 (index!18334 lt!228934) (x!47384 lt!228934) mask!3524))))

(assert (=> b!503171 (and (or (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228929 () Unit!15234)

(assert (=> b!503171 (= lt!228929 e!294671)))

(declare-fun c!59549 () Bool)

(assert (=> b!503171 (= c!59549 (= (select (arr!15562 a!3235) (index!18334 lt!228934)) (select (arr!15562 a!3235) j!176)))))

(assert (=> b!503171 (and (bvslt (x!47384 lt!228934) #b01111111111111111111111111111110) (or (= (select (arr!15562 a!3235) (index!18334 lt!228934)) (select (arr!15562 a!3235) j!176)) (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15562 a!3235) (index!18334 lt!228934)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45654 res!304626) b!503165))

(assert (= (and b!503165 res!304616) b!503159))

(assert (= (and b!503159 res!304615) b!503162))

(assert (= (and b!503162 res!304625) b!503157))

(assert (= (and b!503157 res!304622) b!503168))

(assert (= (and b!503168 res!304620) b!503156))

(assert (= (and b!503156 res!304624) b!503161))

(assert (= (and b!503161 res!304628) b!503158))

(assert (= (and b!503158 res!304614) b!503167))

(assert (= (and b!503158 (not res!304621)) b!503164))

(assert (= (and b!503164 (not res!304619)) b!503171))

(assert (= (and b!503171 c!59549) b!503169))

(assert (= (and b!503171 (not c!59549)) b!503160))

(assert (= (and b!503169 res!304617) b!503163))

(assert (= (and b!503171 (not res!304627)) b!503155))

(assert (= (and b!503155 res!304618) b!503170))

(assert (= (and b!503155 (not res!304623)) b!503166))

(declare-fun m!484037 () Bool)

(assert (=> b!503169 m!484037))

(declare-fun m!484039 () Bool)

(assert (=> b!503169 m!484039))

(declare-fun m!484041 () Bool)

(assert (=> b!503159 m!484041))

(assert (=> b!503159 m!484041))

(declare-fun m!484043 () Bool)

(assert (=> b!503159 m!484043))

(declare-fun m!484045 () Bool)

(assert (=> start!45654 m!484045))

(declare-fun m!484047 () Bool)

(assert (=> start!45654 m!484047))

(declare-fun m!484049 () Bool)

(assert (=> b!503158 m!484049))

(declare-fun m!484051 () Bool)

(assert (=> b!503158 m!484051))

(declare-fun m!484053 () Bool)

(assert (=> b!503158 m!484053))

(declare-fun m!484055 () Bool)

(assert (=> b!503158 m!484055))

(declare-fun m!484057 () Bool)

(assert (=> b!503158 m!484057))

(assert (=> b!503158 m!484041))

(declare-fun m!484059 () Bool)

(assert (=> b!503158 m!484059))

(assert (=> b!503158 m!484041))

(declare-fun m!484061 () Bool)

(assert (=> b!503158 m!484061))

(assert (=> b!503158 m!484041))

(declare-fun m!484063 () Bool)

(assert (=> b!503158 m!484063))

(assert (=> b!503170 m!484041))

(assert (=> b!503170 m!484041))

(declare-fun m!484065 () Bool)

(assert (=> b!503170 m!484065))

(declare-fun m!484067 () Bool)

(assert (=> b!503156 m!484067))

(declare-fun m!484069 () Bool)

(assert (=> b!503162 m!484069))

(assert (=> b!503167 m!484041))

(assert (=> b!503167 m!484041))

(declare-fun m!484071 () Bool)

(assert (=> b!503167 m!484071))

(declare-fun m!484073 () Bool)

(assert (=> b!503168 m!484073))

(declare-fun m!484075 () Bool)

(assert (=> b!503157 m!484075))

(declare-fun m!484077 () Bool)

(assert (=> b!503171 m!484077))

(declare-fun m!484079 () Bool)

(assert (=> b!503171 m!484079))

(assert (=> b!503171 m!484041))

(assert (=> b!503166 m!484039))

(declare-fun m!484081 () Bool)

(assert (=> b!503161 m!484081))

(check-sat (not b!503166) (not b!503168) (not b!503162) (not b!503156) (not start!45654) (not b!503161) (not b!503169) (not b!503158) (not b!503170) (not b!503171) (not b!503157) (not b!503159) (not b!503167))
(check-sat)
