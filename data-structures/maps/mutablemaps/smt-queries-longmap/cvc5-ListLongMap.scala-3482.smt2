; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48250 () Bool)

(assert start!48250)

(declare-fun b!530780 () Bool)

(declare-fun e!309172 () Bool)

(declare-datatypes ((array!33631 0))(
  ( (array!33632 (arr!16158 (Array (_ BitVec 32) (_ BitVec 64))) (size!16522 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33631)

(assert (=> b!530780 (= e!309172 (and (bvsle #b00000000000000000000000000000000 (size!16522 a!3154)) (bvsge (size!16522 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530781 () Bool)

(declare-fun res!326642 () Bool)

(declare-fun e!309170 () Bool)

(assert (=> b!530781 (=> (not res!326642) (not e!309170))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530781 (= res!326642 (validKeyInArray!0 k!1998))))

(declare-fun b!530782 () Bool)

(declare-fun res!326641 () Bool)

(assert (=> b!530782 (=> (not res!326641) (not e!309170))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530782 (= res!326641 (validKeyInArray!0 (select (arr!16158 a!3154) j!147)))))

(declare-fun b!530783 () Bool)

(declare-fun res!326636 () Bool)

(assert (=> b!530783 (=> (not res!326636) (not e!309172))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33631 (_ BitVec 32)) Bool)

(assert (=> b!530783 (= res!326636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530784 () Bool)

(declare-fun res!326638 () Bool)

(assert (=> b!530784 (=> (not res!326638) (not e!309170))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530784 (= res!326638 (and (= (size!16522 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16522 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16522 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!326639 () Bool)

(assert (=> start!48250 (=> (not res!326639) (not e!309170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48250 (= res!326639 (validMask!0 mask!3216))))

(assert (=> start!48250 e!309170))

(assert (=> start!48250 true))

(declare-fun array_inv!11932 (array!33631) Bool)

(assert (=> start!48250 (array_inv!11932 a!3154)))

(declare-fun b!530785 () Bool)

(assert (=> b!530785 (= e!309170 e!309172)))

(declare-fun res!326637 () Bool)

(assert (=> b!530785 (=> (not res!326637) (not e!309172))))

(declare-datatypes ((SeekEntryResult!4623 0))(
  ( (MissingZero!4623 (index!20716 (_ BitVec 32))) (Found!4623 (index!20717 (_ BitVec 32))) (Intermediate!4623 (undefined!5435 Bool) (index!20718 (_ BitVec 32)) (x!49728 (_ BitVec 32))) (Undefined!4623) (MissingVacant!4623 (index!20719 (_ BitVec 32))) )
))
(declare-fun lt!244793 () SeekEntryResult!4623)

(assert (=> b!530785 (= res!326637 (or (= lt!244793 (MissingZero!4623 i!1153)) (= lt!244793 (MissingVacant!4623 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33631 (_ BitVec 32)) SeekEntryResult!4623)

(assert (=> b!530785 (= lt!244793 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530786 () Bool)

(declare-fun res!326640 () Bool)

(assert (=> b!530786 (=> (not res!326640) (not e!309170))))

(declare-fun arrayContainsKey!0 (array!33631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530786 (= res!326640 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48250 res!326639) b!530784))

(assert (= (and b!530784 res!326638) b!530782))

(assert (= (and b!530782 res!326641) b!530781))

(assert (= (and b!530781 res!326642) b!530786))

(assert (= (and b!530786 res!326640) b!530785))

(assert (= (and b!530785 res!326637) b!530783))

(assert (= (and b!530783 res!326636) b!530780))

(declare-fun m!511339 () Bool)

(assert (=> b!530786 m!511339))

(declare-fun m!511341 () Bool)

(assert (=> b!530781 m!511341))

(declare-fun m!511343 () Bool)

(assert (=> b!530782 m!511343))

(assert (=> b!530782 m!511343))

(declare-fun m!511345 () Bool)

(assert (=> b!530782 m!511345))

(declare-fun m!511347 () Bool)

(assert (=> b!530785 m!511347))

(declare-fun m!511349 () Bool)

(assert (=> start!48250 m!511349))

(declare-fun m!511351 () Bool)

(assert (=> start!48250 m!511351))

(declare-fun m!511353 () Bool)

(assert (=> b!530783 m!511353))

(push 1)

(assert (not b!530781))

(assert (not start!48250))

(assert (not b!530785))

(assert (not b!530786))

(assert (not b!530782))

(assert (not b!530783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81051 () Bool)

(declare-fun res!326689 () Bool)

(declare-fun e!309195 () Bool)

(assert (=> d!81051 (=> res!326689 e!309195)))

(assert (=> d!81051 (= res!326689 (= (select (arr!16158 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81051 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309195)))

(declare-fun b!530833 () Bool)

(declare-fun e!309196 () Bool)

(assert (=> b!530833 (= e!309195 e!309196)))

(declare-fun res!326690 () Bool)

(assert (=> b!530833 (=> (not res!326690) (not e!309196))))

(assert (=> b!530833 (= res!326690 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16522 a!3154)))))

(declare-fun b!530834 () Bool)

(assert (=> b!530834 (= e!309196 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81051 (not res!326689)) b!530833))

(assert (= (and b!530833 res!326690) b!530834))

(declare-fun m!511387 () Bool)

(assert (=> d!81051 m!511387))

(declare-fun m!511389 () Bool)

(assert (=> b!530834 m!511389))

(assert (=> b!530786 d!81051))

(declare-fun b!530871 () Bool)

(declare-fun e!309219 () SeekEntryResult!4623)

(declare-fun e!309218 () SeekEntryResult!4623)

(assert (=> b!530871 (= e!309219 e!309218)))

(declare-fun lt!244815 () (_ BitVec 64))

(declare-fun lt!244816 () SeekEntryResult!4623)

(assert (=> b!530871 (= lt!244815 (select (arr!16158 a!3154) (index!20718 lt!244816)))))

(declare-fun c!62398 () Bool)

(assert (=> b!530871 (= c!62398 (= lt!244815 k!1998))))

(declare-fun b!530872 () Bool)

(declare-fun c!62399 () Bool)

(assert (=> b!530872 (= c!62399 (= lt!244815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309220 () SeekEntryResult!4623)

(assert (=> b!530872 (= e!309218 e!309220)))

(declare-fun b!530873 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33631 (_ BitVec 32)) SeekEntryResult!4623)

(assert (=> b!530873 (= e!309220 (seekKeyOrZeroReturnVacant!0 (x!49728 lt!244816) (index!20718 lt!244816) (index!20718 lt!244816) k!1998 a!3154 mask!3216))))

(declare-fun d!81053 () Bool)

(declare-fun lt!244817 () SeekEntryResult!4623)

(assert (=> d!81053 (and (or (is-Undefined!4623 lt!244817) (not (is-Found!4623 lt!244817)) (and (bvsge (index!20717 lt!244817) #b00000000000000000000000000000000) (bvslt (index!20717 lt!244817) (size!16522 a!3154)))) (or (is-Undefined!4623 lt!244817) (is-Found!4623 lt!244817) (not (is-MissingZero!4623 lt!244817)) (and (bvsge (index!20716 lt!244817) #b00000000000000000000000000000000) (bvslt (index!20716 lt!244817) (size!16522 a!3154)))) (or (is-Undefined!4623 lt!244817) (is-Found!4623 lt!244817) (is-MissingZero!4623 lt!244817) (not (is-MissingVacant!4623 lt!244817)) (and (bvsge (index!20719 lt!244817) #b00000000000000000000000000000000) (bvslt (index!20719 lt!244817) (size!16522 a!3154)))) (or (is-Undefined!4623 lt!244817) (ite (is-Found!4623 lt!244817) (= (select (arr!16158 a!3154) (index!20717 lt!244817)) k!1998) (ite (is-MissingZero!4623 lt!244817) (= (select (arr!16158 a!3154) (index!20716 lt!244817)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4623 lt!244817) (= (select (arr!16158 a!3154) (index!20719 lt!244817)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81053 (= lt!244817 e!309219)))

(declare-fun c!62397 () Bool)

(assert (=> d!81053 (= c!62397 (and (is-Intermediate!4623 lt!244816) (undefined!5435 lt!244816)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33631 (_ BitVec 32)) SeekEntryResult!4623)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81053 (= lt!244816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81053 (validMask!0 mask!3216)))

(assert (=> d!81053 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!244817)))

(declare-fun b!530874 () Bool)

(assert (=> b!530874 (= e!309219 Undefined!4623)))

(declare-fun b!530875 () Bool)

(assert (=> b!530875 (= e!309218 (Found!4623 (index!20718 lt!244816)))))

(declare-fun b!530876 () Bool)

(assert (=> b!530876 (= e!309220 (MissingZero!4623 (index!20718 lt!244816)))))

(assert (= (and d!81053 c!62397) b!530874))

(assert (= (and d!81053 (not c!62397)) b!530871))

(assert (= (and b!530871 c!62398) b!530875))

(assert (= (and b!530871 (not c!62398)) b!530872))

(assert (= (and b!530872 c!62399) b!530876))

(assert (= (and b!530872 (not c!62399)) b!530873))

(declare-fun m!511409 () Bool)

(assert (=> b!530871 m!511409))

(declare-fun m!511411 () Bool)

(assert (=> b!530873 m!511411))

(declare-fun m!511413 () Bool)

(assert (=> d!81053 m!511413))

(assert (=> d!81053 m!511349))

(declare-fun m!511415 () Bool)

(assert (=> d!81053 m!511415))

(declare-fun m!511417 () Bool)

(assert (=> d!81053 m!511417))

(declare-fun m!511419 () Bool)

(assert (=> d!81053 m!511419))

(assert (=> d!81053 m!511415))

(declare-fun m!511421 () Bool)

(assert (=> d!81053 m!511421))

(assert (=> b!530785 d!81053))

(declare-fun d!81065 () Bool)

(assert (=> d!81065 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!48250 d!81065))

(declare-fun d!81079 () Bool)

(assert (=> d!81079 (= (array_inv!11932 a!3154) (bvsge (size!16522 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!48250 d!81079))

(declare-fun d!81081 () Bool)

(assert (=> d!81081 (= (validKeyInArray!0 (select (arr!16158 a!3154) j!147)) (and (not (= (select (arr!16158 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16158 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530782 d!81081))

(declare-fun d!81083 () Bool)

(assert (=> d!81083 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530781 d!81083))

(declare-fun b!530921 () Bool)

(declare-fun e!309252 () Bool)

(declare-fun call!31937 () Bool)

(assert (=> b!530921 (= e!309252 call!31937)))

(declare-fun b!530922 () Bool)

(declare-fun e!309253 () Bool)

(declare-fun e!309251 () Bool)

(assert (=> b!530922 (= e!309253 e!309251)))

(declare-fun c!62414 () Bool)

(assert (=> b!530922 (= c!62414 (validKeyInArray!0 (select (arr!16158 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81085 () Bool)

(declare-fun res!326714 () Bool)

(assert (=> d!81085 (=> res!326714 e!309253)))

(assert (=> d!81085 (= res!326714 (bvsge #b00000000000000000000000000000000 (size!16522 a!3154)))))

(assert (=> d!81085 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!309253)))

(declare-fun b!530923 () Bool)

(assert (=> b!530923 (= e!309251 call!31937)))

(declare-fun b!530924 () Bool)

(assert (=> b!530924 (= e!309251 e!309252)))

(declare-fun lt!244843 () (_ BitVec 64))

(assert (=> b!530924 (= lt!244843 (select (arr!16158 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16798 0))(
  ( (Unit!16799) )
))
(declare-fun lt!244844 () Unit!16798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33631 (_ BitVec 64) (_ BitVec 32)) Unit!16798)

(assert (=> b!530924 (= lt!244844 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!244843 #b00000000000000000000000000000000))))

(assert (=> b!530924 (arrayContainsKey!0 a!3154 lt!244843 #b00000000000000000000000000000000)))

(declare-fun lt!244842 () Unit!16798)

(assert (=> b!530924 (= lt!244842 lt!244844)))

(declare-fun res!326713 () Bool)

(assert (=> b!530924 (= res!326713 (= (seekEntryOrOpen!0 (select (arr!16158 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4623 #b00000000000000000000000000000000)))))

(assert (=> b!530924 (=> (not res!326713) (not e!309252))))

