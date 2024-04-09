; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69260 () Bool)

(assert start!69260)

(declare-fun b!807635 () Bool)

(declare-fun e!447152 () Bool)

(declare-fun e!447154 () Bool)

(assert (=> b!807635 (= e!447152 e!447154)))

(declare-fun res!551930 () Bool)

(assert (=> b!807635 (=> (not res!551930) (not e!447154))))

(declare-datatypes ((SeekEntryResult!8627 0))(
  ( (MissingZero!8627 (index!36875 (_ BitVec 32))) (Found!8627 (index!36876 (_ BitVec 32))) (Intermediate!8627 (undefined!9439 Bool) (index!36877 (_ BitVec 32)) (x!67704 (_ BitVec 32))) (Undefined!8627) (MissingVacant!8627 (index!36878 (_ BitVec 32))) )
))
(declare-fun lt!361873 () SeekEntryResult!8627)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807635 (= res!551930 (or (= lt!361873 (MissingZero!8627 i!1163)) (= lt!361873 (MissingVacant!8627 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43911 0))(
  ( (array!43912 (arr!21029 (Array (_ BitVec 32) (_ BitVec 64))) (size!21450 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43911)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43911 (_ BitVec 32)) SeekEntryResult!8627)

(assert (=> b!807635 (= lt!361873 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!551938 () Bool)

(assert (=> start!69260 (=> (not res!551938) (not e!447152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69260 (= res!551938 (validMask!0 mask!3266))))

(assert (=> start!69260 e!447152))

(assert (=> start!69260 true))

(declare-fun array_inv!16803 (array!43911) Bool)

(assert (=> start!69260 (array_inv!16803 a!3170)))

(declare-fun b!807636 () Bool)

(declare-fun res!551933 () Bool)

(assert (=> b!807636 (=> (not res!551933) (not e!447152))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807636 (= res!551933 (and (= (size!21450 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21450 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21450 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807637 () Bool)

(declare-fun res!551929 () Bool)

(assert (=> b!807637 (=> (not res!551929) (not e!447154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43911 (_ BitVec 32)) Bool)

(assert (=> b!807637 (= res!551929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807638 () Bool)

(declare-fun res!551934 () Bool)

(assert (=> b!807638 (=> (not res!551934) (not e!447152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807638 (= res!551934 (validKeyInArray!0 k!2044))))

(declare-fun b!807639 () Bool)

(declare-fun e!447150 () Bool)

(assert (=> b!807639 (= e!447150 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361872 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807639 (= lt!361872 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807640 () Bool)

(declare-fun res!551936 () Bool)

(assert (=> b!807640 (=> (not res!551936) (not e!447152))))

(declare-fun arrayContainsKey!0 (array!43911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807640 (= res!551936 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807641 () Bool)

(declare-fun res!551937 () Bool)

(assert (=> b!807641 (=> (not res!551937) (not e!447152))))

(assert (=> b!807641 (= res!551937 (validKeyInArray!0 (select (arr!21029 a!3170) j!153)))))

(declare-fun b!807642 () Bool)

(declare-fun e!447151 () Bool)

(assert (=> b!807642 (= e!447151 e!447150)))

(declare-fun res!551932 () Bool)

(assert (=> b!807642 (=> (not res!551932) (not e!447150))))

(declare-fun lt!361874 () SeekEntryResult!8627)

(declare-fun lt!361871 () SeekEntryResult!8627)

(assert (=> b!807642 (= res!551932 (and (= lt!361874 lt!361871) (= lt!361871 (Found!8627 j!153)) (not (= (select (arr!21029 a!3170) index!1236) (select (arr!21029 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43911 (_ BitVec 32)) SeekEntryResult!8627)

(assert (=> b!807642 (= lt!361871 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21029 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807642 (= lt!361874 (seekEntryOrOpen!0 (select (arr!21029 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807643 () Bool)

(declare-fun res!551931 () Bool)

(assert (=> b!807643 (=> (not res!551931) (not e!447154))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!807643 (= res!551931 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21450 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21029 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21450 a!3170)) (= (select (arr!21029 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807644 () Bool)

(declare-fun res!551928 () Bool)

(assert (=> b!807644 (=> (not res!551928) (not e!447154))))

(declare-datatypes ((List!15045 0))(
  ( (Nil!15042) (Cons!15041 (h!16170 (_ BitVec 64)) (t!21368 List!15045)) )
))
(declare-fun arrayNoDuplicates!0 (array!43911 (_ BitVec 32) List!15045) Bool)

(assert (=> b!807644 (= res!551928 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15042))))

(declare-fun b!807645 () Bool)

(assert (=> b!807645 (= e!447154 e!447151)))

(declare-fun res!551935 () Bool)

(assert (=> b!807645 (=> (not res!551935) (not e!447151))))

(declare-fun lt!361875 () (_ BitVec 64))

(declare-fun lt!361876 () array!43911)

(assert (=> b!807645 (= res!551935 (= (seekEntryOrOpen!0 lt!361875 lt!361876 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361875 lt!361876 mask!3266)))))

(assert (=> b!807645 (= lt!361875 (select (store (arr!21029 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807645 (= lt!361876 (array!43912 (store (arr!21029 a!3170) i!1163 k!2044) (size!21450 a!3170)))))

(assert (= (and start!69260 res!551938) b!807636))

(assert (= (and b!807636 res!551933) b!807641))

(assert (= (and b!807641 res!551937) b!807638))

(assert (= (and b!807638 res!551934) b!807640))

(assert (= (and b!807640 res!551936) b!807635))

(assert (= (and b!807635 res!551930) b!807637))

(assert (= (and b!807637 res!551929) b!807644))

(assert (= (and b!807644 res!551928) b!807643))

(assert (= (and b!807643 res!551931) b!807645))

(assert (= (and b!807645 res!551935) b!807642))

(assert (= (and b!807642 res!551932) b!807639))

(declare-fun m!749819 () Bool)

(assert (=> b!807635 m!749819))

(declare-fun m!749821 () Bool)

(assert (=> b!807644 m!749821))

(declare-fun m!749823 () Bool)

(assert (=> start!69260 m!749823))

(declare-fun m!749825 () Bool)

(assert (=> start!69260 m!749825))

(declare-fun m!749827 () Bool)

(assert (=> b!807640 m!749827))

(declare-fun m!749829 () Bool)

(assert (=> b!807641 m!749829))

(assert (=> b!807641 m!749829))

(declare-fun m!749831 () Bool)

(assert (=> b!807641 m!749831))

(declare-fun m!749833 () Bool)

(assert (=> b!807638 m!749833))

(declare-fun m!749835 () Bool)

(assert (=> b!807643 m!749835))

(declare-fun m!749837 () Bool)

(assert (=> b!807643 m!749837))

(declare-fun m!749839 () Bool)

(assert (=> b!807645 m!749839))

(declare-fun m!749841 () Bool)

(assert (=> b!807645 m!749841))

(declare-fun m!749843 () Bool)

(assert (=> b!807645 m!749843))

(declare-fun m!749845 () Bool)

(assert (=> b!807645 m!749845))

(declare-fun m!749847 () Bool)

(assert (=> b!807642 m!749847))

(assert (=> b!807642 m!749829))

(assert (=> b!807642 m!749829))

(declare-fun m!749849 () Bool)

(assert (=> b!807642 m!749849))

(assert (=> b!807642 m!749829))

(declare-fun m!749851 () Bool)

(assert (=> b!807642 m!749851))

(declare-fun m!749853 () Bool)

(assert (=> b!807639 m!749853))

(declare-fun m!749855 () Bool)

(assert (=> b!807637 m!749855))

(push 1)

