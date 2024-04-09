; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69276 () Bool)

(assert start!69276)

(declare-fun b!807899 () Bool)

(declare-fun res!552196 () Bool)

(declare-fun e!447272 () Bool)

(assert (=> b!807899 (=> (not res!552196) (not e!447272))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43927 0))(
  ( (array!43928 (arr!21037 (Array (_ BitVec 32) (_ BitVec 64))) (size!21458 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43927)

(assert (=> b!807899 (= res!552196 (and (= (size!21458 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21458 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21458 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807900 () Bool)

(declare-fun res!552199 () Bool)

(declare-fun e!447273 () Bool)

(assert (=> b!807900 (=> (not res!552199) (not e!447273))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807900 (= res!552199 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21458 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21037 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21458 a!3170)) (= (select (arr!21037 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807901 () Bool)

(assert (=> b!807901 (= e!447272 e!447273)))

(declare-fun res!552197 () Bool)

(assert (=> b!807901 (=> (not res!552197) (not e!447273))))

(declare-datatypes ((SeekEntryResult!8635 0))(
  ( (MissingZero!8635 (index!36907 (_ BitVec 32))) (Found!8635 (index!36908 (_ BitVec 32))) (Intermediate!8635 (undefined!9447 Bool) (index!36909 (_ BitVec 32)) (x!67736 (_ BitVec 32))) (Undefined!8635) (MissingVacant!8635 (index!36910 (_ BitVec 32))) )
))
(declare-fun lt!362019 () SeekEntryResult!8635)

(assert (=> b!807901 (= res!552197 (or (= lt!362019 (MissingZero!8635 i!1163)) (= lt!362019 (MissingVacant!8635 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43927 (_ BitVec 32)) SeekEntryResult!8635)

(assert (=> b!807901 (= lt!362019 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!807902 () Bool)

(declare-fun e!447270 () Bool)

(declare-fun e!447274 () Bool)

(assert (=> b!807902 (= e!447270 e!447274)))

(declare-fun res!552198 () Bool)

(assert (=> b!807902 (=> (not res!552198) (not e!447274))))

(declare-fun lt!362020 () SeekEntryResult!8635)

(declare-fun lt!362017 () SeekEntryResult!8635)

(assert (=> b!807902 (= res!552198 (and (= lt!362017 lt!362020) (= lt!362020 (Found!8635 j!153)) (not (= (select (arr!21037 a!3170) index!1236) (select (arr!21037 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43927 (_ BitVec 32)) SeekEntryResult!8635)

(assert (=> b!807902 (= lt!362020 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21037 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807902 (= lt!362017 (seekEntryOrOpen!0 (select (arr!21037 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807903 () Bool)

(declare-fun res!552195 () Bool)

(assert (=> b!807903 (=> (not res!552195) (not e!447272))))

(declare-fun arrayContainsKey!0 (array!43927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807903 (= res!552195 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807904 () Bool)

(assert (=> b!807904 (= e!447273 e!447270)))

(declare-fun res!552193 () Bool)

(assert (=> b!807904 (=> (not res!552193) (not e!447270))))

(declare-fun lt!362016 () array!43927)

(declare-fun lt!362018 () (_ BitVec 64))

(assert (=> b!807904 (= res!552193 (= (seekEntryOrOpen!0 lt!362018 lt!362016 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362018 lt!362016 mask!3266)))))

(assert (=> b!807904 (= lt!362018 (select (store (arr!21037 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!807904 (= lt!362016 (array!43928 (store (arr!21037 a!3170) i!1163 k0!2044) (size!21458 a!3170)))))

(declare-fun b!807905 () Bool)

(declare-fun res!552202 () Bool)

(assert (=> b!807905 (=> (not res!552202) (not e!447272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807905 (= res!552202 (validKeyInArray!0 (select (arr!21037 a!3170) j!153)))))

(declare-fun b!807906 () Bool)

(declare-fun res!552201 () Bool)

(assert (=> b!807906 (=> (not res!552201) (not e!447272))))

(assert (=> b!807906 (= res!552201 (validKeyInArray!0 k0!2044))))

(declare-fun b!807908 () Bool)

(declare-fun res!552200 () Bool)

(assert (=> b!807908 (=> (not res!552200) (not e!447273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43927 (_ BitVec 32)) Bool)

(assert (=> b!807908 (= res!552200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807909 () Bool)

(assert (=> b!807909 (= e!447274 false)))

(declare-fun lt!362015 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807909 (= lt!362015 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!552192 () Bool)

(assert (=> start!69276 (=> (not res!552192) (not e!447272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69276 (= res!552192 (validMask!0 mask!3266))))

(assert (=> start!69276 e!447272))

(assert (=> start!69276 true))

(declare-fun array_inv!16811 (array!43927) Bool)

(assert (=> start!69276 (array_inv!16811 a!3170)))

(declare-fun b!807907 () Bool)

(declare-fun res!552194 () Bool)

(assert (=> b!807907 (=> (not res!552194) (not e!447273))))

(declare-datatypes ((List!15053 0))(
  ( (Nil!15050) (Cons!15049 (h!16178 (_ BitVec 64)) (t!21376 List!15053)) )
))
(declare-fun arrayNoDuplicates!0 (array!43927 (_ BitVec 32) List!15053) Bool)

(assert (=> b!807907 (= res!552194 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15050))))

(assert (= (and start!69276 res!552192) b!807899))

(assert (= (and b!807899 res!552196) b!807905))

(assert (= (and b!807905 res!552202) b!807906))

(assert (= (and b!807906 res!552201) b!807903))

(assert (= (and b!807903 res!552195) b!807901))

(assert (= (and b!807901 res!552197) b!807908))

(assert (= (and b!807908 res!552200) b!807907))

(assert (= (and b!807907 res!552194) b!807900))

(assert (= (and b!807900 res!552199) b!807904))

(assert (= (and b!807904 res!552193) b!807902))

(assert (= (and b!807902 res!552198) b!807909))

(declare-fun m!750123 () Bool)

(assert (=> b!807907 m!750123))

(declare-fun m!750125 () Bool)

(assert (=> b!807908 m!750125))

(declare-fun m!750127 () Bool)

(assert (=> b!807903 m!750127))

(declare-fun m!750129 () Bool)

(assert (=> b!807900 m!750129))

(declare-fun m!750131 () Bool)

(assert (=> b!807900 m!750131))

(declare-fun m!750133 () Bool)

(assert (=> b!807901 m!750133))

(declare-fun m!750135 () Bool)

(assert (=> start!69276 m!750135))

(declare-fun m!750137 () Bool)

(assert (=> start!69276 m!750137))

(declare-fun m!750139 () Bool)

(assert (=> b!807905 m!750139))

(assert (=> b!807905 m!750139))

(declare-fun m!750141 () Bool)

(assert (=> b!807905 m!750141))

(declare-fun m!750143 () Bool)

(assert (=> b!807906 m!750143))

(declare-fun m!750145 () Bool)

(assert (=> b!807909 m!750145))

(declare-fun m!750147 () Bool)

(assert (=> b!807902 m!750147))

(assert (=> b!807902 m!750139))

(assert (=> b!807902 m!750139))

(declare-fun m!750149 () Bool)

(assert (=> b!807902 m!750149))

(assert (=> b!807902 m!750139))

(declare-fun m!750151 () Bool)

(assert (=> b!807902 m!750151))

(declare-fun m!750153 () Bool)

(assert (=> b!807904 m!750153))

(declare-fun m!750155 () Bool)

(assert (=> b!807904 m!750155))

(declare-fun m!750157 () Bool)

(assert (=> b!807904 m!750157))

(declare-fun m!750159 () Bool)

(assert (=> b!807904 m!750159))

(check-sat (not b!807904) (not start!69276) (not b!807908) (not b!807903) (not b!807905) (not b!807907) (not b!807906) (not b!807902) (not b!807901) (not b!807909))
(check-sat)
