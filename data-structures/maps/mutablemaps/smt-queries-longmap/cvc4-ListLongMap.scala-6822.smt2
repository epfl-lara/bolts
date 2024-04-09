; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85828 () Bool)

(assert start!85828)

(declare-fun b!995028 () Bool)

(declare-fun res!665620 () Bool)

(declare-fun e!561504 () Bool)

(assert (=> b!995028 (=> (not res!665620) (not e!561504))))

(declare-datatypes ((array!62952 0))(
  ( (array!62953 (arr!30309 (Array (_ BitVec 32) (_ BitVec 64))) (size!30812 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62952)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995028 (= res!665620 (validKeyInArray!0 (select (arr!30309 a!3219) j!170)))))

(declare-fun b!995029 () Bool)

(declare-fun e!561506 () Bool)

(declare-datatypes ((List!21111 0))(
  ( (Nil!21108) (Cons!21107 (h!22269 (_ BitVec 64)) (t!30120 List!21111)) )
))
(declare-fun noDuplicate!1465 (List!21111) Bool)

(assert (=> b!995029 (= e!561506 (not (noDuplicate!1465 Nil!21108)))))

(declare-fun res!665621 () Bool)

(assert (=> start!85828 (=> (not res!665621) (not e!561504))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85828 (= res!665621 (validMask!0 mask!3464))))

(assert (=> start!85828 e!561504))

(declare-fun array_inv!23299 (array!62952) Bool)

(assert (=> start!85828 (array_inv!23299 a!3219)))

(assert (=> start!85828 true))

(declare-fun b!995030 () Bool)

(declare-fun res!665626 () Bool)

(assert (=> b!995030 (=> (not res!665626) (not e!561504))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995030 (= res!665626 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995031 () Bool)

(declare-fun res!665619 () Bool)

(assert (=> b!995031 (=> (not res!665619) (not e!561504))))

(assert (=> b!995031 (= res!665619 (validKeyInArray!0 k!2224))))

(declare-fun b!995032 () Bool)

(declare-fun res!665623 () Bool)

(assert (=> b!995032 (=> (not res!665623) (not e!561506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62952 (_ BitVec 32)) Bool)

(assert (=> b!995032 (= res!665623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995033 () Bool)

(declare-fun res!665624 () Bool)

(assert (=> b!995033 (=> (not res!665624) (not e!561504))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995033 (= res!665624 (and (= (size!30812 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30812 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30812 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995034 () Bool)

(declare-fun res!665622 () Bool)

(assert (=> b!995034 (=> (not res!665622) (not e!561506))))

(assert (=> b!995034 (= res!665622 (and (bvsle #b00000000000000000000000000000000 (size!30812 a!3219)) (bvslt (size!30812 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!995035 () Bool)

(assert (=> b!995035 (= e!561504 e!561506)))

(declare-fun res!665625 () Bool)

(assert (=> b!995035 (=> (not res!665625) (not e!561506))))

(declare-datatypes ((SeekEntryResult!9241 0))(
  ( (MissingZero!9241 (index!39334 (_ BitVec 32))) (Found!9241 (index!39335 (_ BitVec 32))) (Intermediate!9241 (undefined!10053 Bool) (index!39336 (_ BitVec 32)) (x!86803 (_ BitVec 32))) (Undefined!9241) (MissingVacant!9241 (index!39337 (_ BitVec 32))) )
))
(declare-fun lt!440808 () SeekEntryResult!9241)

(assert (=> b!995035 (= res!665625 (or (= lt!440808 (MissingVacant!9241 i!1194)) (= lt!440808 (MissingZero!9241 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62952 (_ BitVec 32)) SeekEntryResult!9241)

(assert (=> b!995035 (= lt!440808 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85828 res!665621) b!995033))

(assert (= (and b!995033 res!665624) b!995028))

(assert (= (and b!995028 res!665620) b!995031))

(assert (= (and b!995031 res!665619) b!995030))

(assert (= (and b!995030 res!665626) b!995035))

(assert (= (and b!995035 res!665625) b!995032))

(assert (= (and b!995032 res!665623) b!995034))

(assert (= (and b!995034 res!665622) b!995029))

(declare-fun m!922619 () Bool)

(assert (=> b!995030 m!922619))

(declare-fun m!922621 () Bool)

(assert (=> start!85828 m!922621))

(declare-fun m!922623 () Bool)

(assert (=> start!85828 m!922623))

(declare-fun m!922625 () Bool)

(assert (=> b!995029 m!922625))

(declare-fun m!922627 () Bool)

(assert (=> b!995028 m!922627))

(assert (=> b!995028 m!922627))

(declare-fun m!922629 () Bool)

(assert (=> b!995028 m!922629))

(declare-fun m!922631 () Bool)

(assert (=> b!995035 m!922631))

(declare-fun m!922633 () Bool)

(assert (=> b!995032 m!922633))

(declare-fun m!922635 () Bool)

(assert (=> b!995031 m!922635))

(push 1)

(assert (not b!995028))

(assert (not b!995032))

(assert (not b!995029))

(assert (not b!995030))

(assert (not b!995031))

(assert (not start!85828))

(assert (not b!995035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118741 () Bool)

(assert (=> d!118741 (= (validKeyInArray!0 (select (arr!30309 a!3219) j!170)) (and (not (= (select (arr!30309 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30309 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995028 d!118741))

(declare-fun d!118743 () Bool)

(assert (=> d!118743 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85828 d!118743))

(declare-fun d!118745 () Bool)

(assert (=> d!118745 (= (array_inv!23299 a!3219) (bvsge (size!30812 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85828 d!118745))

(declare-fun d!118747 () Bool)

(declare-fun res!665631 () Bool)

(declare-fun e!561517 () Bool)

(assert (=> d!118747 (=> res!665631 e!561517)))

(assert (=> d!118747 (= res!665631 (is-Nil!21108 Nil!21108))))

(assert (=> d!118747 (= (noDuplicate!1465 Nil!21108) e!561517)))

(declare-fun b!995052 () Bool)

(declare-fun e!561518 () Bool)

(assert (=> b!995052 (= e!561517 e!561518)))

(declare-fun res!665632 () Bool)

(assert (=> b!995052 (=> (not res!665632) (not e!561518))))

(declare-fun contains!5866 (List!21111 (_ BitVec 64)) Bool)

(assert (=> b!995052 (= res!665632 (not (contains!5866 (t!30120 Nil!21108) (h!22269 Nil!21108))))))

(declare-fun b!995053 () Bool)

(assert (=> b!995053 (= e!561518 (noDuplicate!1465 (t!30120 Nil!21108)))))

(assert (= (and d!118747 (not res!665631)) b!995052))

(assert (= (and b!995052 res!665632) b!995053))

(declare-fun m!922637 () Bool)

(assert (=> b!995052 m!922637))

(declare-fun m!922639 () Bool)

(assert (=> b!995053 m!922639))

(assert (=> b!995029 d!118747))

(declare-fun b!995114 () Bool)

(declare-fun e!561560 () SeekEntryResult!9241)

(declare-fun e!561559 () SeekEntryResult!9241)

(assert (=> b!995114 (= e!561560 e!561559)))

(declare-fun lt!440844 () (_ BitVec 64))

(declare-fun lt!440842 () SeekEntryResult!9241)

(assert (=> b!995114 (= lt!440844 (select (arr!30309 a!3219) (index!39336 lt!440842)))))

(declare-fun c!100875 () Bool)

(assert (=> b!995114 (= c!100875 (= lt!440844 k!2224))))

(declare-fun b!995115 () Bool)

(assert (=> b!995115 (= e!561560 Undefined!9241)))

(declare-fun b!995116 () Bool)

(declare-fun e!561558 () SeekEntryResult!9241)

(assert (=> b!995116 (= e!561558 (MissingZero!9241 (index!39336 lt!440842)))))

(declare-fun b!995117 () Bool)

(declare-fun c!100873 () Bool)

(assert (=> b!995117 (= c!100873 (= lt!440844 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!995117 (= e!561559 e!561558)))

(declare-fun b!995118 () Bool)

(assert (=> b!995118 (= e!561559 (Found!9241 (index!39336 lt!440842)))))

(declare-fun b!995119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62952 (_ BitVec 32)) SeekEntryResult!9241)

(assert (=> b!995119 (= e!561558 (seekKeyOrZeroReturnVacant!0 (x!86803 lt!440842) (index!39336 lt!440842) (index!39336 lt!440842) k!2224 a!3219 mask!3464))))

(declare-fun d!118749 () Bool)

(declare-fun lt!440843 () SeekEntryResult!9241)

(assert (=> d!118749 (and (or (is-Undefined!9241 lt!440843) (not (is-Found!9241 lt!440843)) (and (bvsge (index!39335 lt!440843) #b00000000000000000000000000000000) (bvslt (index!39335 lt!440843) (size!30812 a!3219)))) (or (is-Undefined!9241 lt!440843) (is-Found!9241 lt!440843) (not (is-MissingZero!9241 lt!440843)) (and (bvsge (index!39334 lt!440843) #b00000000000000000000000000000000) (bvslt (index!39334 lt!440843) (size!30812 a!3219)))) (or (is-Undefined!9241 lt!440843) (is-Found!9241 lt!440843) (is-MissingZero!9241 lt!440843) (not (is-MissingVacant!9241 lt!440843)) (and (bvsge (index!39337 lt!440843) #b00000000000000000000000000000000) (bvslt (index!39337 lt!440843) (size!30812 a!3219)))) (or (is-Undefined!9241 lt!440843) (ite (is-Found!9241 lt!440843) (= (select (arr!30309 a!3219) (index!39335 lt!440843)) k!2224) (ite (is-MissingZero!9241 lt!440843) (= (select (arr!30309 a!3219) (index!39334 lt!440843)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9241 lt!440843) (= (select (arr!30309 a!3219) (index!39337 lt!440843)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118749 (= lt!440843 e!561560)))

(declare-fun c!100874 () Bool)

(assert (=> d!118749 (= c!100874 (and (is-Intermediate!9241 lt!440842) (undefined!10053 lt!440842)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62952 (_ BitVec 32)) SeekEntryResult!9241)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118749 (= lt!440842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118749 (validMask!0 mask!3464)))

(assert (=> d!118749 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!440843)))

(assert (= (and d!118749 c!100874) b!995115))

(assert (= (and d!118749 (not c!100874)) b!995114))

(assert (= (and b!995114 c!100875) b!995118))

(assert (= (and b!995114 (not c!100875)) b!995117))

(assert (= (and b!995117 c!100873) b!995116))

(assert (= (and b!995117 (not c!100873)) b!995119))

(declare-fun m!922689 () Bool)

(assert (=> b!995114 m!922689))

(declare-fun m!922691 () Bool)

(assert (=> b!995119 m!922691))

(declare-fun m!922693 () Bool)

(assert (=> d!118749 m!922693))

(declare-fun m!922695 () Bool)

(assert (=> d!118749 m!922695))

(assert (=> d!118749 m!922621))

(declare-fun m!922697 () Bool)

(assert (=> d!118749 m!922697))

(declare-fun m!922699 () Bool)

(assert (=> d!118749 m!922699))

(assert (=> d!118749 m!922699))

(declare-fun m!922701 () Bool)

(assert (=> d!118749 m!922701))

(assert (=> b!995035 d!118749))

(declare-fun d!118767 () Bool)

(declare-fun res!665661 () Bool)

(declare-fun e!561571 () Bool)

(assert (=> d!118767 (=> res!665661 e!561571)))

(assert (=> d!118767 (= res!665661 (= (select (arr!30309 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118767 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!561571)))

(declare-fun b!995130 () Bool)

(declare-fun e!561572 () Bool)

(assert (=> b!995130 (= e!561571 e!561572)))

(declare-fun res!665662 () Bool)

(assert (=> b!995130 (=> (not res!665662) (not e!561572))))

(assert (=> b!995130 (= res!665662 (bvslt (bvadd 