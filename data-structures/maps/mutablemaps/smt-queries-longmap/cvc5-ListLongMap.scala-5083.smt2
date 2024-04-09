; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69028 () Bool)

(assert start!69028)

(declare-fun b!804894 () Bool)

(declare-fun res!549588 () Bool)

(declare-fun e!445834 () Bool)

(assert (=> b!804894 (=> (not res!549588) (not e!445834))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804894 (= res!549588 (validKeyInArray!0 k!2044))))

(declare-fun b!804895 () Bool)

(declare-fun e!445832 () Bool)

(assert (=> b!804895 (= e!445834 e!445832)))

(declare-fun res!549586 () Bool)

(assert (=> b!804895 (=> (not res!549586) (not e!445832))))

(declare-datatypes ((SeekEntryResult!8559 0))(
  ( (MissingZero!8559 (index!36603 (_ BitVec 32))) (Found!8559 (index!36604 (_ BitVec 32))) (Intermediate!8559 (undefined!9371 Bool) (index!36605 (_ BitVec 32)) (x!67454 (_ BitVec 32))) (Undefined!8559) (MissingVacant!8559 (index!36606 (_ BitVec 32))) )
))
(declare-fun lt!360381 () SeekEntryResult!8559)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804895 (= res!549586 (or (= lt!360381 (MissingZero!8559 i!1163)) (= lt!360381 (MissingVacant!8559 i!1163))))))

(declare-datatypes ((array!43769 0))(
  ( (array!43770 (arr!20961 (Array (_ BitVec 32) (_ BitVec 64))) (size!21382 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43769)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43769 (_ BitVec 32)) SeekEntryResult!8559)

(assert (=> b!804895 (= lt!360381 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804896 () Bool)

(declare-fun res!549591 () Bool)

(assert (=> b!804896 (=> (not res!549591) (not e!445832))))

(declare-datatypes ((List!14977 0))(
  ( (Nil!14974) (Cons!14973 (h!16102 (_ BitVec 64)) (t!21300 List!14977)) )
))
(declare-fun arrayNoDuplicates!0 (array!43769 (_ BitVec 32) List!14977) Bool)

(assert (=> b!804896 (= res!549591 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14974))))

(declare-fun b!804898 () Bool)

(declare-fun res!549589 () Bool)

(assert (=> b!804898 (=> (not res!549589) (not e!445834))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804898 (= res!549589 (validKeyInArray!0 (select (arr!20961 a!3170) j!153)))))

(declare-fun b!804899 () Bool)

(declare-fun e!445831 () Bool)

(assert (=> b!804899 (= e!445832 e!445831)))

(declare-fun res!549584 () Bool)

(assert (=> b!804899 (=> (not res!549584) (not e!445831))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360383 () array!43769)

(declare-fun lt!360384 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43769 (_ BitVec 32)) SeekEntryResult!8559)

(assert (=> b!804899 (= res!549584 (= (seekEntryOrOpen!0 lt!360384 lt!360383 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360384 lt!360383 mask!3266)))))

(assert (=> b!804899 (= lt!360384 (select (store (arr!20961 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804899 (= lt!360383 (array!43770 (store (arr!20961 a!3170) i!1163 k!2044) (size!21382 a!3170)))))

(declare-fun b!804900 () Bool)

(declare-fun res!549592 () Bool)

(assert (=> b!804900 (=> (not res!549592) (not e!445832))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804900 (= res!549592 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21382 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20961 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21382 a!3170)) (= (select (arr!20961 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804901 () Bool)

(declare-fun res!549585 () Bool)

(assert (=> b!804901 (=> (not res!549585) (not e!445834))))

(assert (=> b!804901 (= res!549585 (and (= (size!21382 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21382 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21382 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804902 () Bool)

(declare-fun res!549583 () Bool)

(assert (=> b!804902 (=> (not res!549583) (not e!445832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43769 (_ BitVec 32)) Bool)

(assert (=> b!804902 (= res!549583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804903 () Bool)

(assert (=> b!804903 (= e!445831 false)))

(declare-fun lt!360382 () SeekEntryResult!8559)

(assert (=> b!804903 (= lt!360382 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20961 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360385 () SeekEntryResult!8559)

(assert (=> b!804903 (= lt!360385 (seekEntryOrOpen!0 (select (arr!20961 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804897 () Bool)

(declare-fun res!549590 () Bool)

(assert (=> b!804897 (=> (not res!549590) (not e!445834))))

(declare-fun arrayContainsKey!0 (array!43769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804897 (= res!549590 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!549587 () Bool)

(assert (=> start!69028 (=> (not res!549587) (not e!445834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69028 (= res!549587 (validMask!0 mask!3266))))

(assert (=> start!69028 e!445834))

(assert (=> start!69028 true))

(declare-fun array_inv!16735 (array!43769) Bool)

(assert (=> start!69028 (array_inv!16735 a!3170)))

(assert (= (and start!69028 res!549587) b!804901))

(assert (= (and b!804901 res!549585) b!804898))

(assert (= (and b!804898 res!549589) b!804894))

(assert (= (and b!804894 res!549588) b!804897))

(assert (= (and b!804897 res!549590) b!804895))

(assert (= (and b!804895 res!549586) b!804902))

(assert (= (and b!804902 res!549583) b!804896))

(assert (= (and b!804896 res!549591) b!804900))

(assert (= (and b!804900 res!549592) b!804899))

(assert (= (and b!804899 res!549584) b!804903))

(declare-fun m!746887 () Bool)

(assert (=> b!804896 m!746887))

(declare-fun m!746889 () Bool)

(assert (=> start!69028 m!746889))

(declare-fun m!746891 () Bool)

(assert (=> start!69028 m!746891))

(declare-fun m!746893 () Bool)

(assert (=> b!804900 m!746893))

(declare-fun m!746895 () Bool)

(assert (=> b!804900 m!746895))

(declare-fun m!746897 () Bool)

(assert (=> b!804899 m!746897))

(declare-fun m!746899 () Bool)

(assert (=> b!804899 m!746899))

(declare-fun m!746901 () Bool)

(assert (=> b!804899 m!746901))

(declare-fun m!746903 () Bool)

(assert (=> b!804899 m!746903))

(declare-fun m!746905 () Bool)

(assert (=> b!804894 m!746905))

(declare-fun m!746907 () Bool)

(assert (=> b!804895 m!746907))

(declare-fun m!746909 () Bool)

(assert (=> b!804903 m!746909))

(assert (=> b!804903 m!746909))

(declare-fun m!746911 () Bool)

(assert (=> b!804903 m!746911))

(assert (=> b!804903 m!746909))

(declare-fun m!746913 () Bool)

(assert (=> b!804903 m!746913))

(declare-fun m!746915 () Bool)

(assert (=> b!804902 m!746915))

(declare-fun m!746917 () Bool)

(assert (=> b!804897 m!746917))

(assert (=> b!804898 m!746909))

(assert (=> b!804898 m!746909))

(declare-fun m!746919 () Bool)

(assert (=> b!804898 m!746919))

(push 1)

