; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85876 () Bool)

(assert start!85876)

(declare-fun b!995242 () Bool)

(declare-fun res!665767 () Bool)

(declare-fun e!561631 () Bool)

(assert (=> b!995242 (=> (not res!665767) (not e!561631))))

(declare-datatypes ((array!62961 0))(
  ( (array!62962 (arr!30312 (Array (_ BitVec 32) (_ BitVec 64))) (size!30815 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62961)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995242 (= res!665767 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!665765 () Bool)

(assert (=> start!85876 (=> (not res!665765) (not e!561631))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85876 (= res!665765 (validMask!0 mask!3464))))

(assert (=> start!85876 e!561631))

(declare-fun array_inv!23302 (array!62961) Bool)

(assert (=> start!85876 (array_inv!23302 a!3219)))

(assert (=> start!85876 true))

(declare-fun b!995243 () Bool)

(declare-fun e!561629 () Bool)

(assert (=> b!995243 (= e!561631 e!561629)))

(declare-fun res!665770 () Bool)

(assert (=> b!995243 (=> (not res!665770) (not e!561629))))

(declare-datatypes ((SeekEntryResult!9244 0))(
  ( (MissingZero!9244 (index!39346 (_ BitVec 32))) (Found!9244 (index!39347 (_ BitVec 32))) (Intermediate!9244 (undefined!10056 Bool) (index!39348 (_ BitVec 32)) (x!86814 (_ BitVec 32))) (Undefined!9244) (MissingVacant!9244 (index!39349 (_ BitVec 32))) )
))
(declare-fun lt!440871 () SeekEntryResult!9244)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995243 (= res!665770 (or (= lt!440871 (MissingVacant!9244 i!1194)) (= lt!440871 (MissingZero!9244 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62961 (_ BitVec 32)) SeekEntryResult!9244)

(assert (=> b!995243 (= lt!440871 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995244 () Bool)

(declare-fun res!665764 () Bool)

(assert (=> b!995244 (=> (not res!665764) (not e!561629))))

(declare-datatypes ((List!21114 0))(
  ( (Nil!21111) (Cons!21110 (h!22272 (_ BitVec 64)) (t!30123 List!21114)) )
))
(declare-fun noDuplicate!1468 (List!21114) Bool)

(assert (=> b!995244 (= res!665764 (noDuplicate!1468 Nil!21111))))

(declare-fun b!995245 () Bool)

(declare-fun res!665762 () Bool)

(assert (=> b!995245 (=> (not res!665762) (not e!561631))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995245 (= res!665762 (validKeyInArray!0 (select (arr!30312 a!3219) j!170)))))

(declare-fun b!995246 () Bool)

(declare-fun res!665768 () Bool)

(assert (=> b!995246 (=> (not res!665768) (not e!561631))))

(assert (=> b!995246 (= res!665768 (and (= (size!30815 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30815 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30815 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995247 () Bool)

(declare-fun res!665761 () Bool)

(assert (=> b!995247 (=> (not res!665761) (not e!561629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62961 (_ BitVec 32)) Bool)

(assert (=> b!995247 (= res!665761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995248 () Bool)

(declare-fun res!665763 () Bool)

(assert (=> b!995248 (=> (not res!665763) (not e!561631))))

(assert (=> b!995248 (= res!665763 (validKeyInArray!0 k!2224))))

(declare-fun b!995249 () Bool)

(declare-fun e!561630 () Bool)

(assert (=> b!995249 (= e!561629 e!561630)))

(declare-fun res!665769 () Bool)

(assert (=> b!995249 (=> res!665769 e!561630)))

(declare-fun contains!5871 (List!21114 (_ BitVec 64)) Bool)

(assert (=> b!995249 (= res!665769 (contains!5871 Nil!21111 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995250 () Bool)

(declare-fun res!665766 () Bool)

(assert (=> b!995250 (=> (not res!665766) (not e!561629))))

(assert (=> b!995250 (= res!665766 (and (bvsle #b00000000000000000000000000000000 (size!30815 a!3219)) (bvslt (size!30815 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!995251 () Bool)

(assert (=> b!995251 (= e!561630 (contains!5871 Nil!21111 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!85876 res!665765) b!995246))

(assert (= (and b!995246 res!665768) b!995245))

(assert (= (and b!995245 res!665762) b!995248))

(assert (= (and b!995248 res!665763) b!995242))

(assert (= (and b!995242 res!665767) b!995243))

(assert (= (and b!995243 res!665770) b!995247))

(assert (= (and b!995247 res!665761) b!995250))

(assert (= (and b!995250 res!665766) b!995244))

(assert (= (and b!995244 res!665764) b!995249))

(assert (= (and b!995249 (not res!665769)) b!995251))

(declare-fun m!922777 () Bool)

(assert (=> b!995247 m!922777))

(declare-fun m!922779 () Bool)

(assert (=> b!995243 m!922779))

(declare-fun m!922781 () Bool)

(assert (=> b!995249 m!922781))

(declare-fun m!922783 () Bool)

(assert (=> b!995242 m!922783))

(declare-fun m!922785 () Bool)

(assert (=> b!995251 m!922785))

(declare-fun m!922787 () Bool)

(assert (=> b!995248 m!922787))

(declare-fun m!922789 () Bool)

(assert (=> b!995244 m!922789))

(declare-fun m!922791 () Bool)

(assert (=> start!85876 m!922791))

(declare-fun m!922793 () Bool)

(assert (=> start!85876 m!922793))

(declare-fun m!922795 () Bool)

(assert (=> b!995245 m!922795))

(assert (=> b!995245 m!922795))

(declare-fun m!922797 () Bool)

(assert (=> b!995245 m!922797))

(push 1)

(assert (not b!995244))

(assert (not b!995243))

(assert (not b!995251))

(assert (not b!995247))

(assert (not b!995249))

(assert (not b!995245))

(assert (not start!85876))

(assert (not b!995248))

(assert (not b!995242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118787 () Bool)

(declare-fun lt!440880 () Bool)

(declare-fun content!483 (List!21114) (Set (_ BitVec 64)))

(assert (=> d!118787 (= lt!440880 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!483 Nil!21111)))))

(declare-fun e!561644 () Bool)

(assert (=> d!118787 (= lt!440880 e!561644)))

(declare-fun res!665780 () Bool)

(assert (=> d!118787 (=> (not res!665780) (not e!561644))))

(assert (=> d!118787 (= res!665780 (is-Cons!21110 Nil!21111))))

(assert (=> d!118787 (= (contains!5871 Nil!21111 #b1000000000000000000000000000000000000000000000000000000000000000) lt!440880)))

(declare-fun b!995264 () Bool)

(declare-fun e!561643 () Bool)

(assert (=> b!995264 (= e!561644 e!561643)))

(declare-fun res!665779 () Bool)

(assert (=> b!995264 (=> res!665779 e!561643)))

(assert (=> b!995264 (= res!665779 (= (h!22272 Nil!21111) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995265 () Bool)

(assert (=> b!995265 (= e!561643 (contains!5871 (t!30123 Nil!21111) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118787 res!665780) b!995264))

(assert (= (and b!995264 (not res!665779)) b!995265))

(declare-fun m!922799 () Bool)

(assert (=> d!118787 m!922799))

(declare-fun m!922801 () Bool)

(assert (=> d!118787 m!922801))

(declare-fun m!922803 () Bool)

(assert (=> b!995265 m!922803))

(assert (=> b!995251 d!118787))

(declare-fun d!118791 () Bool)

(assert (=> d!118791 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85876 d!118791))

(declare-fun d!118797 () Bool)

(assert (=> d!118797 (= (array_inv!23302 a!3219) (bvsge (size!30815 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85876 d!118797))

(declare-fun d!118799 () Bool)

(assert (=> d!118799 (= (validKeyInArray!0 (select (arr!30312 a!3219) j!170)) (and (not (= (select (arr!30312 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30312 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995245 d!118799))

(declare-fun d!118801 () Bool)

(declare-fun res!665793 () Bool)

(declare-fun e!561658 () Bool)

(assert (=> d!118801 (=> res!665793 e!561658)))

(assert (=> d!118801 (= res!665793 (is-Nil!21111 Nil!21111))))

(assert (=> d!118801 (= (noDuplicate!1468 Nil!21111) e!561658)))

(declare-fun b!995280 () Bool)

(declare-fun e!561659 () Bool)

(assert (=> b!995280 (= e!561658 e!561659)))

(declare-fun res!665794 () Bool)

(assert (=> b!995280 (=> (not res!665794) (not e!561659))))

(assert (=> b!995280 (= res!665794 (not (contains!5871 (t!30123 Nil!21111) (h!22272 Nil!21111))))))

(declare-fun b!995281 () Bool)

(assert (=> b!995281 (= e!561659 (noDuplicate!1468 (t!30123 Nil!21111)))))

(assert (= (and d!118801 (not res!665793)) b!995280))

(assert (= (and b!995280 res!665794) b!995281))

(declare-fun m!922819 () Bool)

(assert (=> b!995280 m!922819))

(declare-fun m!922821 () Bool)

(assert (=> b!995281 m!922821))

(assert (=> b!995244 d!118801))

(declare-fun d!118803 () Bool)

(declare-fun lt!440884 () Bool)

(assert (=> d!118803 (= lt!440884 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!483 Nil!21111)))))

(declare-fun e!561661 () Bool)

(assert (=> d!118803 (= lt!440884 e!561661)))

(declare-fun res!665796 () Bool)

(assert (=> d!118803 (=> (not res!665796) (not e!561661))))

(assert (=> d!118803 (= res!665796 (is-Cons!21110 Nil!21111))))

(assert (=> d!118803 (= (contains!5871 Nil!21111 #b0000000000000000000000000000000000000000000000000000000000000000) lt!440884)))

(declare-fun b!995282 () Bool)

(declare-fun e!561660 () Bool)

(assert (=> b!995282 (= e!561661 e!561660)))

(declare-fun res!665795 () Bool)

(assert (=> b!995282 (=> res!665795 e!561660)))

(assert (=> b!995282 (= res!665795 (= (h!22272 Nil!21111) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!995283 () Bool)

(assert (=> b!995283 (= e!561660 (contains!5871 (t!30123 Nil!21111) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!118803 res!665796) b!995282))

(assert (= (and b!995282 (not res!665795)) b!995283))

(assert (=> d!118803 m!922799))

(declare-fun m!922823 () Bool)

(assert (=> d!118803 m!922823))

(declare-fun m!922825 () Bool)

(assert (=> b!995283 m!922825))

(assert (=> b!995249 d!118803))

(declare-fun b!995338 () Bool)

(declare-fun c!100900 () Bool)

(declare-fun lt!440903 () (_ BitVec 64))

(assert (=> b!995338 (= c!100900 (= lt!440903 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561702 () SeekEntryResult!9244)

(declare-fun e!561701 () SeekEntryResult!9244)

(assert (=> b!995338 (= e!561702 e!561701)))

(declare-fun b!995339 () Bool)

(declare-fun e!561703 () SeekEntryResult!9244)

(assert (=> b!995339 (= e!561703 Undefined!9244)))

(declare-fun b!995340 () Bool)

(declare-fun lt!440905 () SeekEntryResult!9244)

(assert (=> b!995340 (= e!561701 (MissingZero!9244 (index!39348 lt!440905)))))

(declare-fun b!995341 () Bool)

(assert (=> b!995341 (= e!561702 (Found!9244 (index!39348 lt!440905)))))

(declare-fun d!118805 () Bool)

(declare-fun lt!440904 () SeekEntryResult!9244)

(assert (=> d!118805 (and (or (is-Undefined!9244 lt!440904) (not (is-Found!9244 lt!440904)) (and (bvsge (index!39347 lt!440904) #b00000000000000000000000000000000) (bvslt (index!39347 lt!440904) (size!30815 a!3219)))) (or (is-Undefined!9244 lt!440904) (is-Found!9244 lt!440904) (not (is-MissingZero!9244 lt!440904)) (and (bvsge (index!39346 lt!440904) #b00000000000000000000000000000000) (bvslt (index!39346 lt!440904) (size!30815 a!3219)))) (or (is-Undefined!9244 lt!440904) (is-Found!9244 lt!440904) (is-MissingZero!9244 lt!440904) (not (is-MissingVacant!9244 lt!440904)) (and (bvsge (index!39349 lt!440904) #b00000000000000000000000000000000) (bvslt (index!39349 lt!440904) (size!30815 a!3219)))) (or (is-Undefined!9244 lt!440904) (ite (is-Found!9244 lt!440904) (= (select (arr!30312 a!3219) (index!39347 lt!440904)) k!2224) (ite (is-MissingZero!9244 lt!440904) (= (select (arr!30312 a!3219) (index!39346 lt!440904)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9244 lt!440904) (= (select (arr!30312 a!3219) (index!39349 lt!440904)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118805 (= lt!440904 e!561703)))

(declare-fun c!100902 () Bool)

(assert (=> d!118805 (= c!100902 (and (is-Intermediate!9244 lt!440905) (undefined!10056 lt!440905)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62961 (_ BitVec 32)) SeekEntryResult!9244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118805 (= lt!440905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118805 (validMask!0 mask!3464)))

(assert (=> d!118805 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!440904)))

(declare-fun b!995342 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62961 (_ BitVec 32)) SeekEntryResult!9244)

(assert (=> b!995342 (= e!561701 (seekKeyOrZeroReturnVacant!0 (x!86814 lt!440905) (index!39348 lt!440905) (index!39348 lt!440905) k!2224 a!3219 mask!3464))))

(declare-fun b!995343 () Bool)

(assert (=> b!995343 (= e!561703 e!561702)))

(assert (=> b!995343 (= lt!440903 (select (arr!30312 a!3219) (index!39348 lt!440905)))))

(declare-fun c!100901 () Bool)

(assert (=> b!995343 (= c!100901 (= lt!440903 k!2224))))

(assert (= (and d!118805 c!100902) b!995339))

(assert (= (and d!118805 (not c!100902)) b!995343))

(assert (= (and b!995343 c!100901) b!995341))

(assert (= (and b!995343 (not c!100901)) b!995338))

(assert (= (and b!995338 c!100900) b!995340))

(assert (= (and b!995338 (not c!100900)) b!995342))

(declare-fun m!922859 () Bool)

(assert (=> d!118805 m!922859))

(declare-fun m!922861 () Bool)

(assert (=> d!118805 m!922861))

(declare-fun m!922863 () Bool)

(assert (=> d!118805 m!922863))

(assert (=> d!118805 m!922859))

(declare-fun m!922865 () Bool)

