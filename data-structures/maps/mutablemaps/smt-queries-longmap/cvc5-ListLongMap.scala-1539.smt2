; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29166 () Bool)

(assert start!29166)

(declare-fun b!295774 () Bool)

(declare-fun e!186959 () Bool)

(declare-fun e!186957 () Bool)

(assert (=> b!295774 (= e!186959 e!186957)))

(declare-fun res!155701 () Bool)

(assert (=> b!295774 (=> (not res!155701) (not e!186957))))

(declare-datatypes ((SeekEntryResult!2253 0))(
  ( (MissingZero!2253 (index!11182 (_ BitVec 32))) (Found!2253 (index!11183 (_ BitVec 32))) (Intermediate!2253 (undefined!3065 Bool) (index!11184 (_ BitVec 32)) (x!29366 (_ BitVec 32))) (Undefined!2253) (MissingVacant!2253 (index!11185 (_ BitVec 32))) )
))
(declare-fun lt!146808 () SeekEntryResult!2253)

(declare-fun lt!146812 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295774 (= res!155701 (or lt!146812 (= lt!146808 (MissingVacant!2253 i!1256))))))

(assert (=> b!295774 (= lt!146812 (= lt!146808 (MissingZero!2253 i!1256)))))

(declare-datatypes ((array!14966 0))(
  ( (array!14967 (arr!7093 (Array (_ BitVec 32) (_ BitVec 64))) (size!7445 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14966)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14966 (_ BitVec 32)) SeekEntryResult!2253)

(assert (=> b!295774 (= lt!146808 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295776 () Bool)

(declare-fun e!186956 () Bool)

(assert (=> b!295776 (= e!186957 e!186956)))

(declare-fun res!155696 () Bool)

(assert (=> b!295776 (=> (not res!155696) (not e!186956))))

(assert (=> b!295776 (= res!155696 lt!146812)))

(declare-fun lt!146813 () (_ BitVec 32))

(declare-fun lt!146809 () SeekEntryResult!2253)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14966 (_ BitVec 32)) SeekEntryResult!2253)

(assert (=> b!295776 (= lt!146809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146813 k!2524 (array!14967 (store (arr!7093 a!3312) i!1256 k!2524) (size!7445 a!3312)) mask!3809))))

(declare-fun lt!146810 () SeekEntryResult!2253)

(assert (=> b!295776 (= lt!146810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146813 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295776 (= lt!146813 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295777 () Bool)

(declare-fun res!155697 () Bool)

(assert (=> b!295777 (=> (not res!155697) (not e!186959))))

(assert (=> b!295777 (= res!155697 (and (= (size!7445 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7445 a!3312))))))

(declare-fun b!295778 () Bool)

(declare-fun res!155700 () Bool)

(assert (=> b!295778 (=> (not res!155700) (not e!186959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295778 (= res!155700 (validKeyInArray!0 k!2524))))

(declare-fun b!295779 () Bool)

(declare-fun res!155702 () Bool)

(assert (=> b!295779 (=> (not res!155702) (not e!186957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14966 (_ BitVec 32)) Bool)

(assert (=> b!295779 (= res!155702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295780 () Bool)

(declare-fun e!186958 () Bool)

(assert (=> b!295780 (= e!186958 (not true))))

(assert (=> b!295780 (and (= (select (arr!7093 a!3312) (index!11184 lt!146810)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11184 lt!146810) i!1256))))

(declare-fun b!295781 () Bool)

(assert (=> b!295781 (= e!186956 e!186958)))

(declare-fun res!155698 () Bool)

(assert (=> b!295781 (=> (not res!155698) (not e!186958))))

(declare-fun lt!146811 () Bool)

(assert (=> b!295781 (= res!155698 (and (or lt!146811 (not (undefined!3065 lt!146810))) (or lt!146811 (not (= (select (arr!7093 a!3312) (index!11184 lt!146810)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146811 (not (= (select (arr!7093 a!3312) (index!11184 lt!146810)) k!2524))) (not lt!146811)))))

(assert (=> b!295781 (= lt!146811 (not (is-Intermediate!2253 lt!146810)))))

(declare-fun res!155699 () Bool)

(assert (=> start!29166 (=> (not res!155699) (not e!186959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29166 (= res!155699 (validMask!0 mask!3809))))

(assert (=> start!29166 e!186959))

(assert (=> start!29166 true))

(declare-fun array_inv!5047 (array!14966) Bool)

(assert (=> start!29166 (array_inv!5047 a!3312)))

(declare-fun b!295775 () Bool)

(declare-fun res!155703 () Bool)

(assert (=> b!295775 (=> (not res!155703) (not e!186959))))

(declare-fun arrayContainsKey!0 (array!14966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295775 (= res!155703 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29166 res!155699) b!295777))

(assert (= (and b!295777 res!155697) b!295778))

(assert (= (and b!295778 res!155700) b!295775))

(assert (= (and b!295775 res!155703) b!295774))

(assert (= (and b!295774 res!155701) b!295779))

(assert (= (and b!295779 res!155702) b!295776))

(assert (= (and b!295776 res!155696) b!295781))

(assert (= (and b!295781 res!155698) b!295780))

(declare-fun m!308879 () Bool)

(assert (=> b!295775 m!308879))

(declare-fun m!308881 () Bool)

(assert (=> b!295781 m!308881))

(declare-fun m!308883 () Bool)

(assert (=> start!29166 m!308883))

(declare-fun m!308885 () Bool)

(assert (=> start!29166 m!308885))

(assert (=> b!295780 m!308881))

(declare-fun m!308887 () Bool)

(assert (=> b!295776 m!308887))

(declare-fun m!308889 () Bool)

(assert (=> b!295776 m!308889))

(declare-fun m!308891 () Bool)

(assert (=> b!295776 m!308891))

(declare-fun m!308893 () Bool)

(assert (=> b!295776 m!308893))

(declare-fun m!308895 () Bool)

(assert (=> b!295779 m!308895))

(declare-fun m!308897 () Bool)

(assert (=> b!295778 m!308897))

(declare-fun m!308899 () Bool)

(assert (=> b!295774 m!308899))

(push 1)

