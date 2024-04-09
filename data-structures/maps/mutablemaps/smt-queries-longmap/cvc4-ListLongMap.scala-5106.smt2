; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69266 () Bool)

(assert start!69266)

(declare-fun b!807734 () Bool)

(declare-fun res!552036 () Bool)

(declare-fun e!447196 () Bool)

(assert (=> b!807734 (=> (not res!552036) (not e!447196))))

(declare-datatypes ((array!43917 0))(
  ( (array!43918 (arr!21032 (Array (_ BitVec 32) (_ BitVec 64))) (size!21453 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43917)

(declare-datatypes ((List!15048 0))(
  ( (Nil!15045) (Cons!15044 (h!16173 (_ BitVec 64)) (t!21371 List!15048)) )
))
(declare-fun arrayNoDuplicates!0 (array!43917 (_ BitVec 32) List!15048) Bool)

(assert (=> b!807734 (= res!552036 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15045))))

(declare-fun b!807735 () Bool)

(declare-fun res!552030 () Bool)

(assert (=> b!807735 (=> (not res!552030) (not e!447196))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43917 (_ BitVec 32)) Bool)

(assert (=> b!807735 (= res!552030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807736 () Bool)

(declare-fun res!552031 () Bool)

(declare-fun e!447199 () Bool)

(assert (=> b!807736 (=> (not res!552031) (not e!447199))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!807736 (= res!552031 (and (= (size!21453 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21453 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21453 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807737 () Bool)

(declare-fun res!552033 () Bool)

(assert (=> b!807737 (=> (not res!552033) (not e!447199))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807737 (= res!552033 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807738 () Bool)

(declare-fun e!447198 () Bool)

(assert (=> b!807738 (= e!447198 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361930 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807738 (= lt!361930 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807739 () Bool)

(declare-fun res!552034 () Bool)

(assert (=> b!807739 (=> (not res!552034) (not e!447196))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807739 (= res!552034 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21453 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21032 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21453 a!3170)) (= (select (arr!21032 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807740 () Bool)

(declare-fun e!447197 () Bool)

(assert (=> b!807740 (= e!447197 e!447198)))

(declare-fun res!552032 () Bool)

(assert (=> b!807740 (=> (not res!552032) (not e!447198))))

(declare-datatypes ((SeekEntryResult!8630 0))(
  ( (MissingZero!8630 (index!36887 (_ BitVec 32))) (Found!8630 (index!36888 (_ BitVec 32))) (Intermediate!8630 (undefined!9442 Bool) (index!36889 (_ BitVec 32)) (x!67715 (_ BitVec 32))) (Undefined!8630) (MissingVacant!8630 (index!36890 (_ BitVec 32))) )
))
(declare-fun lt!361926 () SeekEntryResult!8630)

(declare-fun lt!361929 () SeekEntryResult!8630)

(assert (=> b!807740 (= res!552032 (and (= lt!361929 lt!361926) (= lt!361926 (Found!8630 j!153)) (not (= (select (arr!21032 a!3170) index!1236) (select (arr!21032 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43917 (_ BitVec 32)) SeekEntryResult!8630)

(assert (=> b!807740 (= lt!361926 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21032 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43917 (_ BitVec 32)) SeekEntryResult!8630)

(assert (=> b!807740 (= lt!361929 (seekEntryOrOpen!0 (select (arr!21032 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807741 () Bool)

(declare-fun res!552029 () Bool)

(assert (=> b!807741 (=> (not res!552029) (not e!447199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807741 (= res!552029 (validKeyInArray!0 k!2044))))

(declare-fun res!552027 () Bool)

(assert (=> start!69266 (=> (not res!552027) (not e!447199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69266 (= res!552027 (validMask!0 mask!3266))))

(assert (=> start!69266 e!447199))

(assert (=> start!69266 true))

(declare-fun array_inv!16806 (array!43917) Bool)

(assert (=> start!69266 (array_inv!16806 a!3170)))

(declare-fun b!807742 () Bool)

(assert (=> b!807742 (= e!447196 e!447197)))

(declare-fun res!552035 () Bool)

(assert (=> b!807742 (=> (not res!552035) (not e!447197))))

(declare-fun lt!361925 () array!43917)

(declare-fun lt!361928 () (_ BitVec 64))

(assert (=> b!807742 (= res!552035 (= (seekEntryOrOpen!0 lt!361928 lt!361925 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361928 lt!361925 mask!3266)))))

(assert (=> b!807742 (= lt!361928 (select (store (arr!21032 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807742 (= lt!361925 (array!43918 (store (arr!21032 a!3170) i!1163 k!2044) (size!21453 a!3170)))))

(declare-fun b!807743 () Bool)

(assert (=> b!807743 (= e!447199 e!447196)))

(declare-fun res!552037 () Bool)

(assert (=> b!807743 (=> (not res!552037) (not e!447196))))

(declare-fun lt!361927 () SeekEntryResult!8630)

(assert (=> b!807743 (= res!552037 (or (= lt!361927 (MissingZero!8630 i!1163)) (= lt!361927 (MissingVacant!8630 i!1163))))))

(assert (=> b!807743 (= lt!361927 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807744 () Bool)

(declare-fun res!552028 () Bool)

(assert (=> b!807744 (=> (not res!552028) (not e!447199))))

(assert (=> b!807744 (= res!552028 (validKeyInArray!0 (select (arr!21032 a!3170) j!153)))))

(assert (= (and start!69266 res!552027) b!807736))

(assert (= (and b!807736 res!552031) b!807744))

(assert (= (and b!807744 res!552028) b!807741))

(assert (= (and b!807741 res!552029) b!807737))

(assert (= (and b!807737 res!552033) b!807743))

(assert (= (and b!807743 res!552037) b!807735))

(assert (= (and b!807735 res!552030) b!807734))

(assert (= (and b!807734 res!552036) b!807739))

(assert (= (and b!807739 res!552034) b!807742))

(assert (= (and b!807742 res!552035) b!807740))

(assert (= (and b!807740 res!552032) b!807738))

(declare-fun m!749933 () Bool)

(assert (=> b!807741 m!749933))

(declare-fun m!749935 () Bool)

(assert (=> b!807738 m!749935))

(declare-fun m!749937 () Bool)

(assert (=> b!807737 m!749937))

(declare-fun m!749939 () Bool)

(assert (=> b!807742 m!749939))

(declare-fun m!749941 () Bool)

(assert (=> b!807742 m!749941))

(declare-fun m!749943 () Bool)

(assert (=> b!807742 m!749943))

(declare-fun m!749945 () Bool)

(assert (=> b!807742 m!749945))

(declare-fun m!749947 () Bool)

(assert (=> b!807744 m!749947))

(assert (=> b!807744 m!749947))

(declare-fun m!749949 () Bool)

(assert (=> b!807744 m!749949))

(declare-fun m!749951 () Bool)

(assert (=> start!69266 m!749951))

(declare-fun m!749953 () Bool)

(assert (=> start!69266 m!749953))

(declare-fun m!749955 () Bool)

(assert (=> b!807735 m!749955))

(declare-fun m!749957 () Bool)

(assert (=> b!807739 m!749957))

(declare-fun m!749959 () Bool)

(assert (=> b!807739 m!749959))

(declare-fun m!749961 () Bool)

(assert (=> b!807734 m!749961))

(declare-fun m!749963 () Bool)

(assert (=> b!807743 m!749963))

(declare-fun m!749965 () Bool)

(assert (=> b!807740 m!749965))

(assert (=> b!807740 m!749947))

(assert (=> b!807740 m!749947))

(declare-fun m!749967 () Bool)

(assert (=> b!807740 m!749967))

(assert (=> b!807740 m!749947))

(declare-fun m!749969 () Bool)

(assert (=> b!807740 m!749969))

(push 1)

(assert (not b!807741))

