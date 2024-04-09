; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48254 () Bool)

(assert start!48254)

(declare-fun b!530822 () Bool)

(declare-fun res!326678 () Bool)

(declare-fun e!309189 () Bool)

(assert (=> b!530822 (=> (not res!326678) (not e!309189))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530822 (= res!326678 (validKeyInArray!0 k!1998))))

(declare-fun b!530823 () Bool)

(declare-fun res!326680 () Bool)

(declare-fun e!309190 () Bool)

(assert (=> b!530823 (=> (not res!326680) (not e!309190))))

(declare-datatypes ((array!33635 0))(
  ( (array!33636 (arr!16160 (Array (_ BitVec 32) (_ BitVec 64))) (size!16524 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33635)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33635 (_ BitVec 32)) Bool)

(assert (=> b!530823 (= res!326680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!326684 () Bool)

(assert (=> start!48254 (=> (not res!326684) (not e!309189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48254 (= res!326684 (validMask!0 mask!3216))))

(assert (=> start!48254 e!309189))

(assert (=> start!48254 true))

(declare-fun array_inv!11934 (array!33635) Bool)

(assert (=> start!48254 (array_inv!11934 a!3154)))

(declare-fun b!530824 () Bool)

(declare-fun res!326681 () Bool)

(assert (=> b!530824 (=> (not res!326681) (not e!309189))))

(declare-fun arrayContainsKey!0 (array!33635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530824 (= res!326681 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530825 () Bool)

(assert (=> b!530825 (= e!309189 e!309190)))

(declare-fun res!326682 () Bool)

(assert (=> b!530825 (=> (not res!326682) (not e!309190))))

(declare-datatypes ((SeekEntryResult!4625 0))(
  ( (MissingZero!4625 (index!20724 (_ BitVec 32))) (Found!4625 (index!20725 (_ BitVec 32))) (Intermediate!4625 (undefined!5437 Bool) (index!20726 (_ BitVec 32)) (x!49730 (_ BitVec 32))) (Undefined!4625) (MissingVacant!4625 (index!20727 (_ BitVec 32))) )
))
(declare-fun lt!244799 () SeekEntryResult!4625)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530825 (= res!326682 (or (= lt!244799 (MissingZero!4625 i!1153)) (= lt!244799 (MissingVacant!4625 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33635 (_ BitVec 32)) SeekEntryResult!4625)

(assert (=> b!530825 (= lt!244799 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530826 () Bool)

(declare-fun res!326683 () Bool)

(assert (=> b!530826 (=> (not res!326683) (not e!309189))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530826 (= res!326683 (validKeyInArray!0 (select (arr!16160 a!3154) j!147)))))

(declare-fun b!530827 () Bool)

(assert (=> b!530827 (= e!309190 (and (bvsle #b00000000000000000000000000000000 (size!16524 a!3154)) (bvsge (size!16524 a!3154) #b01111111111111111111111111111111)))))

(declare-fun b!530828 () Bool)

(declare-fun res!326679 () Bool)

(assert (=> b!530828 (=> (not res!326679) (not e!309189))))

(assert (=> b!530828 (= res!326679 (and (= (size!16524 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16524 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16524 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48254 res!326684) b!530828))

(assert (= (and b!530828 res!326679) b!530826))

(assert (= (and b!530826 res!326683) b!530822))

(assert (= (and b!530822 res!326678) b!530824))

(assert (= (and b!530824 res!326681) b!530825))

(assert (= (and b!530825 res!326682) b!530823))

(assert (= (and b!530823 res!326680) b!530827))

(declare-fun m!511371 () Bool)

(assert (=> b!530824 m!511371))

(declare-fun m!511373 () Bool)

(assert (=> b!530822 m!511373))

(declare-fun m!511375 () Bool)

(assert (=> b!530823 m!511375))

(declare-fun m!511377 () Bool)

(assert (=> b!530825 m!511377))

(declare-fun m!511379 () Bool)

(assert (=> b!530826 m!511379))

(assert (=> b!530826 m!511379))

(declare-fun m!511381 () Bool)

(assert (=> b!530826 m!511381))

(declare-fun m!511383 () Bool)

(assert (=> start!48254 m!511383))

(declare-fun m!511385 () Bool)

(assert (=> start!48254 m!511385))

(push 1)

(assert (not b!530825))

(assert (not b!530824))

(assert (not b!530822))

(assert (not start!48254))

(assert (not b!530823))

(assert (not b!530826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81055 () Bool)

(declare-fun res!326695 () Bool)

(declare-fun e!309201 () Bool)

(assert (=> d!81055 (=> res!326695 e!309201)))

(assert (=> d!81055 (= res!326695 (= (select (arr!16160 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81055 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!309201)))

(declare-fun b!530841 () Bool)

(declare-fun e!309202 () Bool)

(assert (=> b!530841 (= e!309201 e!309202)))

(declare-fun res!326696 () Bool)

(assert (=> b!530841 (=> (not res!326696) (not e!309202))))

(assert (=> b!530841 (= res!326696 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16524 a!3154)))))

(declare-fun b!530842 () Bool)

(assert (=> b!530842 (= e!309202 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81055 (not res!326695)) b!530841))

(assert (= (and b!530841 res!326696) b!530842))

(declare-fun m!511391 () Bool)

(assert (=> d!81055 m!511391))

(declare-fun m!511393 () Bool)

(assert (=> b!530842 m!511393))

(assert (=> b!530824 d!81055))

(declare-fun d!81057 () Bool)

(assert (=> d!81057 (= (validKeyInArray!0 (select (arr!16160 a!3154) j!147)) (and (not (= (select (arr!16160 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16160 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!530826 d!81057))

(declare-fun b!530895 () Bool)

(declare-fun c!62407 () Bool)

(declare-fun lt!244824 () (_ BitVec 64))

(assert (=> b!530895 (= c!62407 (= lt!244824 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!309233 () SeekEntryResult!4625)

(declare-fun e!309234 () SeekEntryResult!4625)

(assert (=> b!530895 (= e!309233 e!309234)))

(declare-fun b!530896 () Bool)

(declare-fun lt!244825 () SeekEntryResult!4625)

(assert (=> b!530896 (= e!309234 (MissingZero!4625 (index!20726 lt!244825)))))

(declare-fun d!81059 () Bool)

(declare-fun lt!244826 () SeekEntryResult!4625)

(assert (=> d!81059 (and (or (is-Undefined!4625 lt!244826) (not (is-Found!4625 lt!244826)) (and (bvsge (index!20725 lt!244826) #b00000000000000000000000000000000) (bvslt (index!20725 lt!244826) (size!16524 a!3154)))) (or (is-Undefined!4625 lt!244826) (is-Found!4625 lt!244826) (not (is-MissingZero!4625 lt!244826)) (and (bvsge (index!20724 lt!244826) #b00000000000000000000000000000000) (bvslt (index!20724 lt!244826) (size!16524 a!3154)))) (or (is-Undefined!4625 lt!244826) (is-Found!4625 lt!244826) (is-MissingZero!4625 lt!244826) (not (is-MissingVacant!4625 lt!244826)) (and (bvsge (index!20727 lt!244826) #b00000000000000000000000000000000) (bvslt (index!20727 lt!244826) (size!16524 a!3154)))) (or (is-Undefined!4625 lt!244826) (ite (is-Found!4625 lt!244826) (= (select (arr!16160 a!3154) (index!20725 lt!244826)) k!1998) (ite (is-MissingZero!4625 lt!244826) (= (select (arr!16160 a!3154) (index!20724 lt!244826)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4625 lt!244826) (= (select (arr!16160 a!3154) (index!20727 lt!244826)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!309235 () SeekEntryResult!4625)

(assert (=> d!81059 (= lt!244826 e!309235)))

(declare-fun c!62408 () Bool)

(assert (=> d!81059 (= c!62408 (and (is-Intermediate!4625 lt!244825) (undefined!5437 lt!244825)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33635 (_ BitVec 32)) SeekEntryResult!4625)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81059 (= lt!244825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81059 (validMask!0 mask!3216)))

(assert (=> d!81059 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!244826)))

(declare-fun b!530897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33635 (_ BitVec 32)) SeekEntryResult!4625)

(assert (=> b!530897 (= e!309234 (seekKeyOrZeroReturnVacant!0 (x!49730 lt!244825) (index!20726 lt!244825) (index!20726 lt!244825) k!1998 a!3154 mask!3216))))

(declare-fun b!530898 () Bool)

(assert (=> b!530898 (= e!309235 e!309233)))

