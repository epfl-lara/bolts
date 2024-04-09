; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69218 () Bool)

(assert start!69218)

(declare-fun b!806942 () Bool)

(declare-fun res!551240 () Bool)

(declare-fun e!446839 () Bool)

(assert (=> b!806942 (=> (not res!551240) (not e!446839))))

(declare-datatypes ((array!43869 0))(
  ( (array!43870 (arr!21008 (Array (_ BitVec 32) (_ BitVec 64))) (size!21429 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43869)

(declare-datatypes ((List!15024 0))(
  ( (Nil!15021) (Cons!15020 (h!16149 (_ BitVec 64)) (t!21347 List!15024)) )
))
(declare-fun arrayNoDuplicates!0 (array!43869 (_ BitVec 32) List!15024) Bool)

(assert (=> b!806942 (= res!551240 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15021))))

(declare-fun b!806943 () Bool)

(declare-fun e!446836 () Bool)

(assert (=> b!806943 (= e!446836 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361496 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!806943 (= lt!361496 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!806944 () Bool)

(declare-fun e!446838 () Bool)

(assert (=> b!806944 (= e!446839 e!446838)))

(declare-fun res!551241 () Bool)

(assert (=> b!806944 (=> (not res!551241) (not e!446838))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361495 () (_ BitVec 64))

(declare-fun lt!361494 () array!43869)

(declare-datatypes ((SeekEntryResult!8606 0))(
  ( (MissingZero!8606 (index!36791 (_ BitVec 32))) (Found!8606 (index!36792 (_ BitVec 32))) (Intermediate!8606 (undefined!9418 Bool) (index!36793 (_ BitVec 32)) (x!67627 (_ BitVec 32))) (Undefined!8606) (MissingVacant!8606 (index!36794 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43869 (_ BitVec 32)) SeekEntryResult!8606)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43869 (_ BitVec 32)) SeekEntryResult!8606)

(assert (=> b!806944 (= res!551241 (= (seekEntryOrOpen!0 lt!361495 lt!361494 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361495 lt!361494 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806944 (= lt!361495 (select (store (arr!21008 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806944 (= lt!361494 (array!43870 (store (arr!21008 a!3170) i!1163 k!2044) (size!21429 a!3170)))))

(declare-fun b!806945 () Bool)

(declare-fun res!551244 () Bool)

(declare-fun e!446835 () Bool)

(assert (=> b!806945 (=> (not res!551244) (not e!446835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806945 (= res!551244 (validKeyInArray!0 k!2044))))

(declare-fun b!806946 () Bool)

(assert (=> b!806946 (= e!446838 e!446836)))

(declare-fun res!551236 () Bool)

(assert (=> b!806946 (=> (not res!551236) (not e!446836))))

(declare-fun lt!361498 () SeekEntryResult!8606)

(declare-fun lt!361493 () SeekEntryResult!8606)

(assert (=> b!806946 (= res!551236 (and (= lt!361498 lt!361493) (= lt!361493 (Found!8606 j!153)) (not (= (select (arr!21008 a!3170) index!1236) (select (arr!21008 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806946 (= lt!361493 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21008 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806946 (= lt!361498 (seekEntryOrOpen!0 (select (arr!21008 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806947 () Bool)

(declare-fun res!551237 () Bool)

(assert (=> b!806947 (=> (not res!551237) (not e!446839))))

(assert (=> b!806947 (= res!551237 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21429 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21008 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21429 a!3170)) (= (select (arr!21008 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806949 () Bool)

(declare-fun res!551239 () Bool)

(assert (=> b!806949 (=> (not res!551239) (not e!446839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43869 (_ BitVec 32)) Bool)

(assert (=> b!806949 (= res!551239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806950 () Bool)

(assert (=> b!806950 (= e!446835 e!446839)))

(declare-fun res!551238 () Bool)

(assert (=> b!806950 (=> (not res!551238) (not e!446839))))

(declare-fun lt!361497 () SeekEntryResult!8606)

(assert (=> b!806950 (= res!551238 (or (= lt!361497 (MissingZero!8606 i!1163)) (= lt!361497 (MissingVacant!8606 i!1163))))))

(assert (=> b!806950 (= lt!361497 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806948 () Bool)

(declare-fun res!551243 () Bool)

(assert (=> b!806948 (=> (not res!551243) (not e!446835))))

(assert (=> b!806948 (= res!551243 (and (= (size!21429 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21429 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21429 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551235 () Bool)

(assert (=> start!69218 (=> (not res!551235) (not e!446835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69218 (= res!551235 (validMask!0 mask!3266))))

(assert (=> start!69218 e!446835))

(assert (=> start!69218 true))

(declare-fun array_inv!16782 (array!43869) Bool)

(assert (=> start!69218 (array_inv!16782 a!3170)))

(declare-fun b!806951 () Bool)

(declare-fun res!551245 () Bool)

(assert (=> b!806951 (=> (not res!551245) (not e!446835))))

(declare-fun arrayContainsKey!0 (array!43869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806951 (= res!551245 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806952 () Bool)

(declare-fun res!551242 () Bool)

(assert (=> b!806952 (=> (not res!551242) (not e!446835))))

(assert (=> b!806952 (= res!551242 (validKeyInArray!0 (select (arr!21008 a!3170) j!153)))))

(assert (= (and start!69218 res!551235) b!806948))

(assert (= (and b!806948 res!551243) b!806952))

(assert (= (and b!806952 res!551242) b!806945))

(assert (= (and b!806945 res!551244) b!806951))

(assert (= (and b!806951 res!551245) b!806950))

(assert (= (and b!806950 res!551238) b!806949))

(assert (= (and b!806949 res!551239) b!806942))

(assert (= (and b!806942 res!551240) b!806947))

(assert (= (and b!806947 res!551237) b!806944))

(assert (= (and b!806944 res!551241) b!806946))

(assert (= (and b!806946 res!551236) b!806943))

(declare-fun m!749021 () Bool)

(assert (=> b!806946 m!749021))

(declare-fun m!749023 () Bool)

(assert (=> b!806946 m!749023))

(assert (=> b!806946 m!749023))

(declare-fun m!749025 () Bool)

(assert (=> b!806946 m!749025))

(assert (=> b!806946 m!749023))

(declare-fun m!749027 () Bool)

(assert (=> b!806946 m!749027))

(declare-fun m!749029 () Bool)

(assert (=> b!806949 m!749029))

(assert (=> b!806952 m!749023))

(assert (=> b!806952 m!749023))

(declare-fun m!749031 () Bool)

(assert (=> b!806952 m!749031))

(declare-fun m!749033 () Bool)

(assert (=> b!806950 m!749033))

(declare-fun m!749035 () Bool)

(assert (=> b!806942 m!749035))

(declare-fun m!749037 () Bool)

(assert (=> b!806944 m!749037))

(declare-fun m!749039 () Bool)

(assert (=> b!806944 m!749039))

(declare-fun m!749041 () Bool)

(assert (=> b!806944 m!749041))

(declare-fun m!749043 () Bool)

(assert (=> b!806944 m!749043))

(declare-fun m!749045 () Bool)

(assert (=> b!806951 m!749045))

(declare-fun m!749047 () Bool)

(assert (=> start!69218 m!749047))

(declare-fun m!749049 () Bool)

(assert (=> start!69218 m!749049))

(declare-fun m!749051 () Bool)

(assert (=> b!806943 m!749051))

(declare-fun m!749053 () Bool)

(assert (=> b!806945 m!749053))

(declare-fun m!749055 () Bool)

(assert (=> b!806947 m!749055))

(declare-fun m!749057 () Bool)

(assert (=> b!806947 m!749057))

(push 1)

(assert (not b!806950))

