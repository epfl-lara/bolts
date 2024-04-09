; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69262 () Bool)

(assert start!69262)

(declare-fun b!807668 () Bool)

(declare-fun e!447165 () Bool)

(declare-fun e!447167 () Bool)

(assert (=> b!807668 (= e!447165 e!447167)))

(declare-fun res!551963 () Bool)

(assert (=> b!807668 (=> (not res!551963) (not e!447167))))

(declare-fun lt!361894 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43913 0))(
  ( (array!43914 (arr!21030 (Array (_ BitVec 32) (_ BitVec 64))) (size!21451 (_ BitVec 32))) )
))
(declare-fun lt!361892 () array!43913)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8628 0))(
  ( (MissingZero!8628 (index!36879 (_ BitVec 32))) (Found!8628 (index!36880 (_ BitVec 32))) (Intermediate!8628 (undefined!9440 Bool) (index!36881 (_ BitVec 32)) (x!67713 (_ BitVec 32))) (Undefined!8628) (MissingVacant!8628 (index!36882 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43913 (_ BitVec 32)) SeekEntryResult!8628)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43913 (_ BitVec 32)) SeekEntryResult!8628)

(assert (=> b!807668 (= res!551963 (= (seekEntryOrOpen!0 lt!361894 lt!361892 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361894 lt!361892 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43913)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807668 (= lt!361894 (select (store (arr!21030 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807668 (= lt!361892 (array!43914 (store (arr!21030 a!3170) i!1163 k!2044) (size!21451 a!3170)))))

(declare-fun b!807669 () Bool)

(declare-fun e!447169 () Bool)

(assert (=> b!807669 (= e!447169 e!447165)))

(declare-fun res!551962 () Bool)

(assert (=> b!807669 (=> (not res!551962) (not e!447165))))

(declare-fun lt!361889 () SeekEntryResult!8628)

(assert (=> b!807669 (= res!551962 (or (= lt!361889 (MissingZero!8628 i!1163)) (= lt!361889 (MissingVacant!8628 i!1163))))))

(assert (=> b!807669 (= lt!361889 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807670 () Bool)

(declare-fun e!447166 () Bool)

(assert (=> b!807670 (= e!447166 false)))

(declare-fun lt!361890 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807670 (= lt!361890 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807671 () Bool)

(assert (=> b!807671 (= e!447167 e!447166)))

(declare-fun res!551966 () Bool)

(assert (=> b!807671 (=> (not res!551966) (not e!447166))))

(declare-fun lt!361891 () SeekEntryResult!8628)

(declare-fun lt!361893 () SeekEntryResult!8628)

(assert (=> b!807671 (= res!551966 (and (= lt!361893 lt!361891) (= lt!361891 (Found!8628 j!153)) (not (= (select (arr!21030 a!3170) index!1236) (select (arr!21030 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807671 (= lt!361891 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21030 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807671 (= lt!361893 (seekEntryOrOpen!0 (select (arr!21030 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!551971 () Bool)

(assert (=> start!69262 (=> (not res!551971) (not e!447169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69262 (= res!551971 (validMask!0 mask!3266))))

(assert (=> start!69262 e!447169))

(assert (=> start!69262 true))

(declare-fun array_inv!16804 (array!43913) Bool)

(assert (=> start!69262 (array_inv!16804 a!3170)))

(declare-fun b!807672 () Bool)

(declare-fun res!551964 () Bool)

(assert (=> b!807672 (=> (not res!551964) (not e!447165))))

(declare-datatypes ((List!15046 0))(
  ( (Nil!15043) (Cons!15042 (h!16171 (_ BitVec 64)) (t!21369 List!15046)) )
))
(declare-fun arrayNoDuplicates!0 (array!43913 (_ BitVec 32) List!15046) Bool)

(assert (=> b!807672 (= res!551964 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15043))))

(declare-fun b!807673 () Bool)

(declare-fun res!551961 () Bool)

(assert (=> b!807673 (=> (not res!551961) (not e!447169))))

(assert (=> b!807673 (= res!551961 (and (= (size!21451 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21451 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21451 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807674 () Bool)

(declare-fun res!551965 () Bool)

(assert (=> b!807674 (=> (not res!551965) (not e!447169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807674 (= res!551965 (validKeyInArray!0 (select (arr!21030 a!3170) j!153)))))

(declare-fun b!807675 () Bool)

(declare-fun res!551968 () Bool)

(assert (=> b!807675 (=> (not res!551968) (not e!447169))))

(declare-fun arrayContainsKey!0 (array!43913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807675 (= res!551968 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807676 () Bool)

(declare-fun res!551969 () Bool)

(assert (=> b!807676 (=> (not res!551969) (not e!447165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43913 (_ BitVec 32)) Bool)

(assert (=> b!807676 (= res!551969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807677 () Bool)

(declare-fun res!551967 () Bool)

(assert (=> b!807677 (=> (not res!551967) (not e!447169))))

(assert (=> b!807677 (= res!551967 (validKeyInArray!0 k!2044))))

(declare-fun b!807678 () Bool)

(declare-fun res!551970 () Bool)

(assert (=> b!807678 (=> (not res!551970) (not e!447165))))

(assert (=> b!807678 (= res!551970 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21451 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21030 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21451 a!3170)) (= (select (arr!21030 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69262 res!551971) b!807673))

(assert (= (and b!807673 res!551961) b!807674))

(assert (= (and b!807674 res!551965) b!807677))

(assert (= (and b!807677 res!551967) b!807675))

(assert (= (and b!807675 res!551968) b!807669))

(assert (= (and b!807669 res!551962) b!807676))

(assert (= (and b!807676 res!551969) b!807672))

(assert (= (and b!807672 res!551964) b!807678))

(assert (= (and b!807678 res!551970) b!807668))

(assert (= (and b!807668 res!551963) b!807671))

(assert (= (and b!807671 res!551966) b!807670))

(declare-fun m!749857 () Bool)

(assert (=> b!807677 m!749857))

(declare-fun m!749859 () Bool)

(assert (=> b!807678 m!749859))

(declare-fun m!749861 () Bool)

(assert (=> b!807678 m!749861))

(declare-fun m!749863 () Bool)

(assert (=> b!807670 m!749863))

(declare-fun m!749865 () Bool)

(assert (=> b!807672 m!749865))

(declare-fun m!749867 () Bool)

(assert (=> b!807674 m!749867))

(assert (=> b!807674 m!749867))

(declare-fun m!749869 () Bool)

(assert (=> b!807674 m!749869))

(declare-fun m!749871 () Bool)

(assert (=> b!807668 m!749871))

(declare-fun m!749873 () Bool)

(assert (=> b!807668 m!749873))

(declare-fun m!749875 () Bool)

(assert (=> b!807668 m!749875))

(declare-fun m!749877 () Bool)

(assert (=> b!807668 m!749877))

(declare-fun m!749879 () Bool)

(assert (=> b!807676 m!749879))

(declare-fun m!749881 () Bool)

(assert (=> start!69262 m!749881))

(declare-fun m!749883 () Bool)

(assert (=> start!69262 m!749883))

(declare-fun m!749885 () Bool)

(assert (=> b!807675 m!749885))

(declare-fun m!749887 () Bool)

(assert (=> b!807671 m!749887))

(assert (=> b!807671 m!749867))

(assert (=> b!807671 m!749867))

(declare-fun m!749889 () Bool)

(assert (=> b!807671 m!749889))

(assert (=> b!807671 m!749867))

(declare-fun m!749891 () Bool)

(assert (=> b!807671 m!749891))

(declare-fun m!749893 () Bool)

(assert (=> b!807669 m!749893))

(push 1)

