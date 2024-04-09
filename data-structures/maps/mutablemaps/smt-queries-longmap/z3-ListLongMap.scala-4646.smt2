; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64668 () Bool)

(assert start!64668)

(declare-datatypes ((array!41070 0))(
  ( (array!41071 (arr!19651 (Array (_ BitVec 32) (_ BitVec 64))) (size!20072 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41070)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728178 () Bool)

(declare-fun e!407653 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7258 0))(
  ( (MissingZero!7258 (index!31399 (_ BitVec 32))) (Found!7258 (index!31400 (_ BitVec 32))) (Intermediate!7258 (undefined!8070 Bool) (index!31401 (_ BitVec 32)) (x!62417 (_ BitVec 32))) (Undefined!7258) (MissingVacant!7258 (index!31402 (_ BitVec 32))) )
))
(declare-fun lt!322563 () SeekEntryResult!7258)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41070 (_ BitVec 32)) SeekEntryResult!7258)

(assert (=> b!728178 (= e!407653 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19651 a!3186) j!159) a!3186 mask!3328) lt!322563))))

(declare-fun b!728179 () Bool)

(declare-fun res!488854 () Bool)

(declare-fun e!407655 () Bool)

(assert (=> b!728179 (=> (not res!488854) (not e!407655))))

(declare-datatypes ((List!13706 0))(
  ( (Nil!13703) (Cons!13702 (h!14762 (_ BitVec 64)) (t!20029 List!13706)) )
))
(declare-fun arrayNoDuplicates!0 (array!41070 (_ BitVec 32) List!13706) Bool)

(assert (=> b!728179 (= res!488854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13703))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!728180 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41070 (_ BitVec 32)) SeekEntryResult!7258)

(assert (=> b!728180 (= e!407653 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19651 a!3186) j!159) a!3186 mask!3328) (Found!7258 j!159)))))

(declare-fun b!728181 () Bool)

(declare-fun res!488849 () Bool)

(declare-fun e!407657 () Bool)

(assert (=> b!728181 (=> (not res!488849) (not e!407657))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728181 (= res!488849 (and (= (size!20072 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20072 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20072 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728182 () Bool)

(declare-fun res!488851 () Bool)

(declare-fun e!407650 () Bool)

(assert (=> b!728182 (=> (not res!488851) (not e!407650))))

(assert (=> b!728182 (= res!488851 e!407653)))

(declare-fun c!80040 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728182 (= c!80040 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728183 () Bool)

(declare-fun e!407654 () Bool)

(declare-fun e!407656 () Bool)

(assert (=> b!728183 (= e!407654 (not e!407656))))

(declare-fun res!488847 () Bool)

(assert (=> b!728183 (=> res!488847 e!407656)))

(declare-fun lt!322561 () SeekEntryResult!7258)

(get-info :version)

(assert (=> b!728183 (= res!488847 (or (not ((_ is Intermediate!7258) lt!322561)) (bvsge x!1131 (x!62417 lt!322561))))))

(declare-fun e!407652 () Bool)

(assert (=> b!728183 e!407652))

(declare-fun res!488862 () Bool)

(assert (=> b!728183 (=> (not res!488862) (not e!407652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41070 (_ BitVec 32)) Bool)

(assert (=> b!728183 (= res!488862 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24834 0))(
  ( (Unit!24835) )
))
(declare-fun lt!322564 () Unit!24834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41070 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24834)

(assert (=> b!728183 (= lt!322564 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728184 () Bool)

(assert (=> b!728184 (= e!407657 e!407655)))

(declare-fun res!488856 () Bool)

(assert (=> b!728184 (=> (not res!488856) (not e!407655))))

(declare-fun lt!322565 () SeekEntryResult!7258)

(assert (=> b!728184 (= res!488856 (or (= lt!322565 (MissingZero!7258 i!1173)) (= lt!322565 (MissingVacant!7258 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41070 (_ BitVec 32)) SeekEntryResult!7258)

(assert (=> b!728184 (= lt!322565 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!728185 () Bool)

(declare-fun res!488848 () Bool)

(assert (=> b!728185 (=> (not res!488848) (not e!407657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728185 (= res!488848 (validKeyInArray!0 (select (arr!19651 a!3186) j!159)))))

(declare-fun b!728186 () Bool)

(assert (=> b!728186 (= e!407656 true)))

(declare-fun lt!322558 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728186 (= lt!322558 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!322557 () SeekEntryResult!7258)

(declare-fun e!407651 () Bool)

(declare-fun b!728187 () Bool)

(assert (=> b!728187 (= e!407651 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19651 a!3186) j!159) a!3186 mask!3328) lt!322557))))

(declare-fun res!488857 () Bool)

(assert (=> start!64668 (=> (not res!488857) (not e!407657))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64668 (= res!488857 (validMask!0 mask!3328))))

(assert (=> start!64668 e!407657))

(assert (=> start!64668 true))

(declare-fun array_inv!15425 (array!41070) Bool)

(assert (=> start!64668 (array_inv!15425 a!3186)))

(declare-fun b!728188 () Bool)

(declare-fun res!488859 () Bool)

(assert (=> b!728188 (=> (not res!488859) (not e!407655))))

(assert (=> b!728188 (= res!488859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728189 () Bool)

(declare-fun res!488855 () Bool)

(assert (=> b!728189 (=> (not res!488855) (not e!407655))))

(assert (=> b!728189 (= res!488855 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20072 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20072 a!3186))))))

(declare-fun b!728190 () Bool)

(assert (=> b!728190 (= e!407650 e!407654)))

(declare-fun res!488853 () Bool)

(assert (=> b!728190 (=> (not res!488853) (not e!407654))))

(declare-fun lt!322559 () SeekEntryResult!7258)

(assert (=> b!728190 (= res!488853 (= lt!322559 lt!322561))))

(declare-fun lt!322560 () (_ BitVec 64))

(declare-fun lt!322562 () array!41070)

(assert (=> b!728190 (= lt!322561 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322560 lt!322562 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728190 (= lt!322559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322560 mask!3328) lt!322560 lt!322562 mask!3328))))

(assert (=> b!728190 (= lt!322560 (select (store (arr!19651 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728190 (= lt!322562 (array!41071 (store (arr!19651 a!3186) i!1173 k0!2102) (size!20072 a!3186)))))

(declare-fun b!728191 () Bool)

(assert (=> b!728191 (= e!407655 e!407650)))

(declare-fun res!488860 () Bool)

(assert (=> b!728191 (=> (not res!488860) (not e!407650))))

(assert (=> b!728191 (= res!488860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19651 a!3186) j!159) mask!3328) (select (arr!19651 a!3186) j!159) a!3186 mask!3328) lt!322563))))

(assert (=> b!728191 (= lt!322563 (Intermediate!7258 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728192 () Bool)

(declare-fun res!488850 () Bool)

(assert (=> b!728192 (=> (not res!488850) (not e!407657))))

(assert (=> b!728192 (= res!488850 (validKeyInArray!0 k0!2102))))

(declare-fun b!728193 () Bool)

(declare-fun res!488852 () Bool)

(assert (=> b!728193 (=> (not res!488852) (not e!407657))))

(declare-fun arrayContainsKey!0 (array!41070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728193 (= res!488852 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728194 () Bool)

(assert (=> b!728194 (= e!407652 e!407651)))

(declare-fun res!488858 () Bool)

(assert (=> b!728194 (=> (not res!488858) (not e!407651))))

(assert (=> b!728194 (= res!488858 (= (seekEntryOrOpen!0 (select (arr!19651 a!3186) j!159) a!3186 mask!3328) lt!322557))))

(assert (=> b!728194 (= lt!322557 (Found!7258 j!159))))

(declare-fun b!728195 () Bool)

(declare-fun res!488861 () Bool)

(assert (=> b!728195 (=> (not res!488861) (not e!407650))))

(assert (=> b!728195 (= res!488861 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19651 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64668 res!488857) b!728181))

(assert (= (and b!728181 res!488849) b!728185))

(assert (= (and b!728185 res!488848) b!728192))

(assert (= (and b!728192 res!488850) b!728193))

(assert (= (and b!728193 res!488852) b!728184))

(assert (= (and b!728184 res!488856) b!728188))

(assert (= (and b!728188 res!488859) b!728179))

(assert (= (and b!728179 res!488854) b!728189))

(assert (= (and b!728189 res!488855) b!728191))

(assert (= (and b!728191 res!488860) b!728195))

(assert (= (and b!728195 res!488861) b!728182))

(assert (= (and b!728182 c!80040) b!728178))

(assert (= (and b!728182 (not c!80040)) b!728180))

(assert (= (and b!728182 res!488851) b!728190))

(assert (= (and b!728190 res!488853) b!728183))

(assert (= (and b!728183 res!488862) b!728194))

(assert (= (and b!728194 res!488858) b!728187))

(assert (= (and b!728183 (not res!488847)) b!728186))

(declare-fun m!682045 () Bool)

(assert (=> b!728188 m!682045))

(declare-fun m!682047 () Bool)

(assert (=> b!728185 m!682047))

(assert (=> b!728185 m!682047))

(declare-fun m!682049 () Bool)

(assert (=> b!728185 m!682049))

(declare-fun m!682051 () Bool)

(assert (=> start!64668 m!682051))

(declare-fun m!682053 () Bool)

(assert (=> start!64668 m!682053))

(assert (=> b!728191 m!682047))

(assert (=> b!728191 m!682047))

(declare-fun m!682055 () Bool)

(assert (=> b!728191 m!682055))

(assert (=> b!728191 m!682055))

(assert (=> b!728191 m!682047))

(declare-fun m!682057 () Bool)

(assert (=> b!728191 m!682057))

(assert (=> b!728180 m!682047))

(assert (=> b!728180 m!682047))

(declare-fun m!682059 () Bool)

(assert (=> b!728180 m!682059))

(declare-fun m!682061 () Bool)

(assert (=> b!728183 m!682061))

(declare-fun m!682063 () Bool)

(assert (=> b!728183 m!682063))

(declare-fun m!682065 () Bool)

(assert (=> b!728195 m!682065))

(declare-fun m!682067 () Bool)

(assert (=> b!728193 m!682067))

(declare-fun m!682069 () Bool)

(assert (=> b!728184 m!682069))

(declare-fun m!682071 () Bool)

(assert (=> b!728186 m!682071))

(assert (=> b!728194 m!682047))

(assert (=> b!728194 m!682047))

(declare-fun m!682073 () Bool)

(assert (=> b!728194 m!682073))

(declare-fun m!682075 () Bool)

(assert (=> b!728179 m!682075))

(assert (=> b!728178 m!682047))

(assert (=> b!728178 m!682047))

(declare-fun m!682077 () Bool)

(assert (=> b!728178 m!682077))

(declare-fun m!682079 () Bool)

(assert (=> b!728192 m!682079))

(assert (=> b!728187 m!682047))

(assert (=> b!728187 m!682047))

(declare-fun m!682081 () Bool)

(assert (=> b!728187 m!682081))

(declare-fun m!682083 () Bool)

(assert (=> b!728190 m!682083))

(declare-fun m!682085 () Bool)

(assert (=> b!728190 m!682085))

(declare-fun m!682087 () Bool)

(assert (=> b!728190 m!682087))

(assert (=> b!728190 m!682083))

(declare-fun m!682089 () Bool)

(assert (=> b!728190 m!682089))

(declare-fun m!682091 () Bool)

(assert (=> b!728190 m!682091))

(check-sat (not b!728191) (not b!728194) (not b!728183) (not b!728190) (not b!728187) (not b!728186) (not start!64668) (not b!728178) (not b!728184) (not b!728193) (not b!728180) (not b!728185) (not b!728192) (not b!728179) (not b!728188))
(check-sat)
