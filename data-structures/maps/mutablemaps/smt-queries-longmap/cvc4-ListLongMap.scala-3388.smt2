; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46754 () Bool)

(assert start!46754)

(declare-fun b!515944 () Bool)

(declare-fun e!301161 () Bool)

(declare-fun e!301159 () Bool)

(assert (=> b!515944 (= e!301161 (not e!301159))))

(declare-fun res!315664 () Bool)

(assert (=> b!515944 (=> res!315664 e!301159)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!236242 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((array!33026 0))(
  ( (array!33027 (arr!15878 (Array (_ BitVec 32) (_ BitVec 64))) (size!16242 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33026)

(declare-datatypes ((SeekEntryResult!4352 0))(
  ( (MissingZero!4352 (index!19596 (_ BitVec 32))) (Found!4352 (index!19597 (_ BitVec 32))) (Intermediate!4352 (undefined!5164 Bool) (index!19598 (_ BitVec 32)) (x!48582 (_ BitVec 32))) (Undefined!4352) (MissingVacant!4352 (index!19599 (_ BitVec 32))) )
))
(declare-fun lt!236244 () SeekEntryResult!4352)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33026 (_ BitVec 32)) SeekEntryResult!4352)

(assert (=> b!515944 (= res!315664 (= lt!236244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236242 (select (store (arr!15878 a!3235) i!1204 k!2280) j!176) (array!33027 (store (arr!15878 a!3235) i!1204 k!2280) (size!16242 a!3235)) mask!3524)))))

(declare-fun lt!236245 () (_ BitVec 32))

(assert (=> b!515944 (= lt!236244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236245 (select (arr!15878 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515944 (= lt!236242 (toIndex!0 (select (store (arr!15878 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515944 (= lt!236245 (toIndex!0 (select (arr!15878 a!3235) j!176) mask!3524))))

(declare-fun e!301158 () Bool)

(assert (=> b!515944 e!301158))

(declare-fun res!315661 () Bool)

(assert (=> b!515944 (=> (not res!315661) (not e!301158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33026 (_ BitVec 32)) Bool)

(assert (=> b!515944 (= res!315661 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15954 0))(
  ( (Unit!15955) )
))
(declare-fun lt!236243 () Unit!15954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15954)

(assert (=> b!515944 (= lt!236243 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515945 () Bool)

(declare-fun e!301160 () Bool)

(assert (=> b!515945 (= e!301160 e!301161)))

(declare-fun res!315666 () Bool)

(assert (=> b!515945 (=> (not res!315666) (not e!301161))))

(declare-fun lt!236246 () SeekEntryResult!4352)

(assert (=> b!515945 (= res!315666 (or (= lt!236246 (MissingZero!4352 i!1204)) (= lt!236246 (MissingVacant!4352 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33026 (_ BitVec 32)) SeekEntryResult!4352)

(assert (=> b!515945 (= lt!236246 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515946 () Bool)

(assert (=> b!515946 (= e!301158 (= (seekEntryOrOpen!0 (select (arr!15878 a!3235) j!176) a!3235 mask!3524) (Found!4352 j!176)))))

(declare-fun b!515947 () Bool)

(declare-fun res!315659 () Bool)

(assert (=> b!515947 (=> (not res!315659) (not e!301160))))

(assert (=> b!515947 (= res!315659 (and (= (size!16242 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16242 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16242 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!315663 () Bool)

(assert (=> start!46754 (=> (not res!315663) (not e!301160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46754 (= res!315663 (validMask!0 mask!3524))))

(assert (=> start!46754 e!301160))

(assert (=> start!46754 true))

(declare-fun array_inv!11652 (array!33026) Bool)

(assert (=> start!46754 (array_inv!11652 a!3235)))

(declare-fun b!515948 () Bool)

(declare-fun res!315668 () Bool)

(assert (=> b!515948 (=> (not res!315668) (not e!301160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515948 (= res!315668 (validKeyInArray!0 (select (arr!15878 a!3235) j!176)))))

(declare-fun b!515949 () Bool)

(declare-fun res!315665 () Bool)

(assert (=> b!515949 (=> (not res!315665) (not e!301161))))

(assert (=> b!515949 (= res!315665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515950 () Bool)

(declare-fun res!315662 () Bool)

(assert (=> b!515950 (=> res!315662 e!301159)))

(assert (=> b!515950 (= res!315662 (or (undefined!5164 lt!236244) (not (is-Intermediate!4352 lt!236244))))))

(declare-fun b!515951 () Bool)

(assert (=> b!515951 (= e!301159 true)))

(assert (=> b!515951 (and (bvslt (x!48582 lt!236244) #b01111111111111111111111111111110) (or (= (select (arr!15878 a!3235) (index!19598 lt!236244)) (select (arr!15878 a!3235) j!176)) (= (select (arr!15878 a!3235) (index!19598 lt!236244)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15878 a!3235) (index!19598 lt!236244)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515952 () Bool)

(declare-fun res!315660 () Bool)

(assert (=> b!515952 (=> (not res!315660) (not e!301160))))

(declare-fun arrayContainsKey!0 (array!33026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515952 (= res!315660 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515953 () Bool)

(declare-fun res!315667 () Bool)

(assert (=> b!515953 (=> (not res!315667) (not e!301160))))

(assert (=> b!515953 (= res!315667 (validKeyInArray!0 k!2280))))

(declare-fun b!515954 () Bool)

(declare-fun res!315658 () Bool)

(assert (=> b!515954 (=> (not res!315658) (not e!301161))))

(declare-datatypes ((List!10089 0))(
  ( (Nil!10086) (Cons!10085 (h!10983 (_ BitVec 64)) (t!16325 List!10089)) )
))
(declare-fun arrayNoDuplicates!0 (array!33026 (_ BitVec 32) List!10089) Bool)

(assert (=> b!515954 (= res!315658 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10086))))

(assert (= (and start!46754 res!315663) b!515947))

(assert (= (and b!515947 res!315659) b!515948))

(assert (= (and b!515948 res!315668) b!515953))

(assert (= (and b!515953 res!315667) b!515952))

(assert (= (and b!515952 res!315660) b!515945))

(assert (= (and b!515945 res!315666) b!515949))

(assert (= (and b!515949 res!315665) b!515954))

(assert (= (and b!515954 res!315658) b!515944))

(assert (= (and b!515944 res!315661) b!515946))

(assert (= (and b!515944 (not res!315664)) b!515950))

(assert (= (and b!515950 (not res!315662)) b!515951))

(declare-fun m!497423 () Bool)

(assert (=> b!515951 m!497423))

(declare-fun m!497425 () Bool)

(assert (=> b!515951 m!497425))

(declare-fun m!497427 () Bool)

(assert (=> b!515944 m!497427))

(declare-fun m!497429 () Bool)

(assert (=> b!515944 m!497429))

(declare-fun m!497431 () Bool)

(assert (=> b!515944 m!497431))

(assert (=> b!515944 m!497431))

(declare-fun m!497433 () Bool)

(assert (=> b!515944 m!497433))

(assert (=> b!515944 m!497425))

(declare-fun m!497435 () Bool)

(assert (=> b!515944 m!497435))

(assert (=> b!515944 m!497425))

(assert (=> b!515944 m!497425))

(declare-fun m!497437 () Bool)

(assert (=> b!515944 m!497437))

(declare-fun m!497439 () Bool)

(assert (=> b!515944 m!497439))

(assert (=> b!515944 m!497431))

(declare-fun m!497441 () Bool)

(assert (=> b!515944 m!497441))

(assert (=> b!515946 m!497425))

(assert (=> b!515946 m!497425))

(declare-fun m!497443 () Bool)

(assert (=> b!515946 m!497443))

(declare-fun m!497445 () Bool)

(assert (=> b!515954 m!497445))

(assert (=> b!515948 m!497425))

(assert (=> b!515948 m!497425))

(declare-fun m!497447 () Bool)

(assert (=> b!515948 m!497447))

(declare-fun m!497449 () Bool)

(assert (=> b!515949 m!497449))

(declare-fun m!497451 () Bool)

(assert (=> b!515952 m!497451))

(declare-fun m!497453 () Bool)

(assert (=> start!46754 m!497453))

(declare-fun m!497455 () Bool)

(assert (=> start!46754 m!497455))

(declare-fun m!497457 () Bool)

(assert (=> b!515945 m!497457))

(declare-fun m!497459 () Bool)

(assert (=> b!515953 m!497459))

(push 1)

