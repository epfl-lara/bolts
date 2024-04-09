; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69504 () Bool)

(assert start!69504)

(declare-fun b!809808 () Bool)

(declare-fun res!553490 () Bool)

(declare-fun e!448277 () Bool)

(assert (=> b!809808 (=> (not res!553490) (not e!448277))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809808 (= res!553490 (validKeyInArray!0 k0!2044))))

(declare-fun b!809809 () Bool)

(declare-fun e!448279 () Bool)

(declare-fun e!448278 () Bool)

(assert (=> b!809809 (= e!448279 e!448278)))

(declare-fun res!553491 () Bool)

(assert (=> b!809809 (=> (not res!553491) (not e!448278))))

(declare-datatypes ((SeekEntryResult!8668 0))(
  ( (MissingZero!8668 (index!37039 (_ BitVec 32))) (Found!8668 (index!37040 (_ BitVec 32))) (Intermediate!8668 (undefined!9480 Bool) (index!37041 (_ BitVec 32)) (x!67875 (_ BitVec 32))) (Undefined!8668) (MissingVacant!8668 (index!37042 (_ BitVec 32))) )
))
(declare-fun lt!362950 () SeekEntryResult!8668)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362947 () (_ BitVec 64))

(declare-datatypes ((array!44002 0))(
  ( (array!44003 (arr!21070 (Array (_ BitVec 32) (_ BitVec 64))) (size!21491 (_ BitVec 32))) )
))
(declare-fun lt!362944 () array!44002)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44002 (_ BitVec 32)) SeekEntryResult!8668)

(assert (=> b!809809 (= res!553491 (= lt!362950 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362947 lt!362944 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44002 (_ BitVec 32)) SeekEntryResult!8668)

(assert (=> b!809809 (= lt!362950 (seekEntryOrOpen!0 lt!362947 lt!362944 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!44002)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809809 (= lt!362947 (select (store (arr!21070 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809809 (= lt!362944 (array!44003 (store (arr!21070 a!3170) i!1163 k0!2044) (size!21491 a!3170)))))

(declare-fun b!809810 () Bool)

(declare-fun e!448275 () Bool)

(assert (=> b!809810 (= e!448278 e!448275)))

(declare-fun res!553495 () Bool)

(assert (=> b!809810 (=> (not res!553495) (not e!448275))))

(declare-fun lt!362946 () SeekEntryResult!8668)

(declare-fun lt!362945 () SeekEntryResult!8668)

(assert (=> b!809810 (= res!553495 (and (= lt!362945 lt!362946) (= lt!362946 (Found!8668 j!153)) (not (= (select (arr!21070 a!3170) index!1236) (select (arr!21070 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809810 (= lt!362946 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809810 (= lt!362945 (seekEntryOrOpen!0 (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809811 () Bool)

(declare-fun e!448276 () Bool)

(assert (=> b!809811 (= e!448275 e!448276)))

(declare-fun res!553501 () Bool)

(assert (=> b!809811 (=> (not res!553501) (not e!448276))))

(declare-fun lt!362949 () (_ BitVec 32))

(assert (=> b!809811 (= res!553501 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362949 #b00000000000000000000000000000000) (bvslt lt!362949 (size!21491 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809811 (= lt!362949 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809812 () Bool)

(declare-fun res!553493 () Bool)

(assert (=> b!809812 (=> (not res!553493) (not e!448277))))

(assert (=> b!809812 (= res!553493 (validKeyInArray!0 (select (arr!21070 a!3170) j!153)))))

(declare-fun b!809813 () Bool)

(declare-fun res!553497 () Bool)

(assert (=> b!809813 (=> (not res!553497) (not e!448277))))

(declare-fun arrayContainsKey!0 (array!44002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809813 (= res!553497 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809814 () Bool)

(declare-fun res!553496 () Bool)

(assert (=> b!809814 (=> (not res!553496) (not e!448279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44002 (_ BitVec 32)) Bool)

(assert (=> b!809814 (= res!553496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!553499 () Bool)

(assert (=> start!69504 (=> (not res!553499) (not e!448277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69504 (= res!553499 (validMask!0 mask!3266))))

(assert (=> start!69504 e!448277))

(assert (=> start!69504 true))

(declare-fun array_inv!16844 (array!44002) Bool)

(assert (=> start!69504 (array_inv!16844 a!3170)))

(declare-fun b!809815 () Bool)

(declare-fun res!553498 () Bool)

(assert (=> b!809815 (=> (not res!553498) (not e!448279))))

(declare-datatypes ((List!15086 0))(
  ( (Nil!15083) (Cons!15082 (h!16211 (_ BitVec 64)) (t!21409 List!15086)) )
))
(declare-fun arrayNoDuplicates!0 (array!44002 (_ BitVec 32) List!15086) Bool)

(assert (=> b!809815 (= res!553498 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15083))))

(declare-fun b!809816 () Bool)

(assert (=> b!809816 (= e!448277 e!448279)))

(declare-fun res!553500 () Bool)

(assert (=> b!809816 (=> (not res!553500) (not e!448279))))

(declare-fun lt!362948 () SeekEntryResult!8668)

(assert (=> b!809816 (= res!553500 (or (= lt!362948 (MissingZero!8668 i!1163)) (= lt!362948 (MissingVacant!8668 i!1163))))))

(assert (=> b!809816 (= lt!362948 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809817 () Bool)

(assert (=> b!809817 (= e!448276 (not (= lt!362945 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362949 vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))))

(declare-fun b!809818 () Bool)

(declare-fun res!553492 () Bool)

(assert (=> b!809818 (=> (not res!553492) (not e!448279))))

(assert (=> b!809818 (= res!553492 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21491 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21070 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21491 a!3170)) (= (select (arr!21070 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809819 () Bool)

(declare-fun res!553489 () Bool)

(assert (=> b!809819 (=> (not res!553489) (not e!448277))))

(assert (=> b!809819 (= res!553489 (and (= (size!21491 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21491 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21491 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809820 () Bool)

(declare-fun res!553494 () Bool)

(assert (=> b!809820 (=> (not res!553494) (not e!448276))))

(assert (=> b!809820 (= res!553494 (= lt!362950 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362949 vacantAfter!23 lt!362947 lt!362944 mask!3266)))))

(assert (= (and start!69504 res!553499) b!809819))

(assert (= (and b!809819 res!553489) b!809812))

(assert (= (and b!809812 res!553493) b!809808))

(assert (= (and b!809808 res!553490) b!809813))

(assert (= (and b!809813 res!553497) b!809816))

(assert (= (and b!809816 res!553500) b!809814))

(assert (= (and b!809814 res!553496) b!809815))

(assert (= (and b!809815 res!553498) b!809818))

(assert (= (and b!809818 res!553492) b!809809))

(assert (= (and b!809809 res!553491) b!809810))

(assert (= (and b!809810 res!553495) b!809811))

(assert (= (and b!809811 res!553501) b!809820))

(assert (= (and b!809820 res!553494) b!809817))

(declare-fun m!752101 () Bool)

(assert (=> start!69504 m!752101))

(declare-fun m!752103 () Bool)

(assert (=> start!69504 m!752103))

(declare-fun m!752105 () Bool)

(assert (=> b!809813 m!752105))

(declare-fun m!752107 () Bool)

(assert (=> b!809815 m!752107))

(declare-fun m!752109 () Bool)

(assert (=> b!809817 m!752109))

(assert (=> b!809817 m!752109))

(declare-fun m!752111 () Bool)

(assert (=> b!809817 m!752111))

(declare-fun m!752113 () Bool)

(assert (=> b!809816 m!752113))

(assert (=> b!809812 m!752109))

(assert (=> b!809812 m!752109))

(declare-fun m!752115 () Bool)

(assert (=> b!809812 m!752115))

(declare-fun m!752117 () Bool)

(assert (=> b!809810 m!752117))

(assert (=> b!809810 m!752109))

(assert (=> b!809810 m!752109))

(declare-fun m!752119 () Bool)

(assert (=> b!809810 m!752119))

(assert (=> b!809810 m!752109))

(declare-fun m!752121 () Bool)

(assert (=> b!809810 m!752121))

(declare-fun m!752123 () Bool)

(assert (=> b!809814 m!752123))

(declare-fun m!752125 () Bool)

(assert (=> b!809808 m!752125))

(declare-fun m!752127 () Bool)

(assert (=> b!809820 m!752127))

(declare-fun m!752129 () Bool)

(assert (=> b!809818 m!752129))

(declare-fun m!752131 () Bool)

(assert (=> b!809818 m!752131))

(declare-fun m!752133 () Bool)

(assert (=> b!809809 m!752133))

(declare-fun m!752135 () Bool)

(assert (=> b!809809 m!752135))

(declare-fun m!752137 () Bool)

(assert (=> b!809809 m!752137))

(declare-fun m!752139 () Bool)

(assert (=> b!809809 m!752139))

(declare-fun m!752141 () Bool)

(assert (=> b!809811 m!752141))

(check-sat (not b!809812) (not start!69504) (not b!809815) (not b!809816) (not b!809817) (not b!809810) (not b!809820) (not b!809809) (not b!809811) (not b!809813) (not b!809808) (not b!809814))
(check-sat)
(get-model)

(declare-fun d!103917 () Bool)

(assert (=> d!103917 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809808 d!103917))

(declare-fun d!103919 () Bool)

(declare-fun lt!362977 () SeekEntryResult!8668)

(get-info :version)

(assert (=> d!103919 (and (or ((_ is Undefined!8668) lt!362977) (not ((_ is Found!8668) lt!362977)) (and (bvsge (index!37040 lt!362977) #b00000000000000000000000000000000) (bvslt (index!37040 lt!362977) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!362977) ((_ is Found!8668) lt!362977) (not ((_ is MissingVacant!8668) lt!362977)) (not (= (index!37042 lt!362977) vacantBefore!23)) (and (bvsge (index!37042 lt!362977) #b00000000000000000000000000000000) (bvslt (index!37042 lt!362977) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!362977) (ite ((_ is Found!8668) lt!362977) (= (select (arr!21070 a!3170) (index!37040 lt!362977)) (select (arr!21070 a!3170) j!153)) (and ((_ is MissingVacant!8668) lt!362977) (= (index!37042 lt!362977) vacantBefore!23) (= (select (arr!21070 a!3170) (index!37042 lt!362977)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448305 () SeekEntryResult!8668)

(assert (=> d!103919 (= lt!362977 e!448305)))

(declare-fun c!88577 () Bool)

(assert (=> d!103919 (= c!88577 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun lt!362976 () (_ BitVec 64))

(assert (=> d!103919 (= lt!362976 (select (arr!21070 a!3170) lt!362949))))

(assert (=> d!103919 (validMask!0 mask!3266)))

(assert (=> d!103919 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362949 vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266) lt!362977)))

(declare-fun b!809872 () Bool)

(declare-fun e!448304 () SeekEntryResult!8668)

(assert (=> b!809872 (= e!448304 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362949 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809873 () Bool)

(declare-fun e!448306 () SeekEntryResult!8668)

(assert (=> b!809873 (= e!448305 e!448306)))

(declare-fun c!88578 () Bool)

(assert (=> b!809873 (= c!88578 (= lt!362976 (select (arr!21070 a!3170) j!153)))))

(declare-fun b!809874 () Bool)

(assert (=> b!809874 (= e!448305 Undefined!8668)))

(declare-fun b!809875 () Bool)

(assert (=> b!809875 (= e!448306 (Found!8668 lt!362949))))

(declare-fun b!809876 () Bool)

(declare-fun c!88576 () Bool)

(assert (=> b!809876 (= c!88576 (= lt!362976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809876 (= e!448306 e!448304)))

(declare-fun b!809877 () Bool)

(assert (=> b!809877 (= e!448304 (MissingVacant!8668 vacantBefore!23))))

(assert (= (and d!103919 c!88577) b!809874))

(assert (= (and d!103919 (not c!88577)) b!809873))

(assert (= (and b!809873 c!88578) b!809875))

(assert (= (and b!809873 (not c!88578)) b!809876))

(assert (= (and b!809876 c!88576) b!809877))

(assert (= (and b!809876 (not c!88576)) b!809872))

(declare-fun m!752185 () Bool)

(assert (=> d!103919 m!752185))

(declare-fun m!752187 () Bool)

(assert (=> d!103919 m!752187))

(declare-fun m!752189 () Bool)

(assert (=> d!103919 m!752189))

(assert (=> d!103919 m!752101))

(declare-fun m!752191 () Bool)

(assert (=> b!809872 m!752191))

(assert (=> b!809872 m!752191))

(assert (=> b!809872 m!752109))

(declare-fun m!752193 () Bool)

(assert (=> b!809872 m!752193))

(assert (=> b!809817 d!103919))

(declare-fun b!809890 () Bool)

(declare-fun e!448315 () SeekEntryResult!8668)

(declare-fun lt!362986 () SeekEntryResult!8668)

(assert (=> b!809890 (= e!448315 (Found!8668 (index!37041 lt!362986)))))

(declare-fun b!809891 () Bool)

(declare-fun e!448314 () SeekEntryResult!8668)

(assert (=> b!809891 (= e!448314 (MissingZero!8668 (index!37041 lt!362986)))))

(declare-fun b!809892 () Bool)

(declare-fun e!448313 () SeekEntryResult!8668)

(assert (=> b!809892 (= e!448313 Undefined!8668)))

(declare-fun b!809893 () Bool)

(declare-fun c!88587 () Bool)

(declare-fun lt!362984 () (_ BitVec 64))

(assert (=> b!809893 (= c!88587 (= lt!362984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809893 (= e!448315 e!448314)))

(declare-fun d!103921 () Bool)

(declare-fun lt!362985 () SeekEntryResult!8668)

(assert (=> d!103921 (and (or ((_ is Undefined!8668) lt!362985) (not ((_ is Found!8668) lt!362985)) (and (bvsge (index!37040 lt!362985) #b00000000000000000000000000000000) (bvslt (index!37040 lt!362985) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!362985) ((_ is Found!8668) lt!362985) (not ((_ is MissingZero!8668) lt!362985)) (and (bvsge (index!37039 lt!362985) #b00000000000000000000000000000000) (bvslt (index!37039 lt!362985) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!362985) ((_ is Found!8668) lt!362985) ((_ is MissingZero!8668) lt!362985) (not ((_ is MissingVacant!8668) lt!362985)) (and (bvsge (index!37042 lt!362985) #b00000000000000000000000000000000) (bvslt (index!37042 lt!362985) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!362985) (ite ((_ is Found!8668) lt!362985) (= (select (arr!21070 a!3170) (index!37040 lt!362985)) k0!2044) (ite ((_ is MissingZero!8668) lt!362985) (= (select (arr!21070 a!3170) (index!37039 lt!362985)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8668) lt!362985) (= (select (arr!21070 a!3170) (index!37042 lt!362985)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103921 (= lt!362985 e!448313)))

(declare-fun c!88585 () Bool)

(assert (=> d!103921 (= c!88585 (and ((_ is Intermediate!8668) lt!362986) (undefined!9480 lt!362986)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44002 (_ BitVec 32)) SeekEntryResult!8668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103921 (= lt!362986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2044 mask!3266) k0!2044 a!3170 mask!3266))))

(assert (=> d!103921 (validMask!0 mask!3266)))

(assert (=> d!103921 (= (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266) lt!362985)))

(declare-fun b!809894 () Bool)

(assert (=> b!809894 (= e!448313 e!448315)))

(assert (=> b!809894 (= lt!362984 (select (arr!21070 a!3170) (index!37041 lt!362986)))))

(declare-fun c!88586 () Bool)

(assert (=> b!809894 (= c!88586 (= lt!362984 k0!2044))))

(declare-fun b!809895 () Bool)

(assert (=> b!809895 (= e!448314 (seekKeyOrZeroReturnVacant!0 (x!67875 lt!362986) (index!37041 lt!362986) (index!37041 lt!362986) k0!2044 a!3170 mask!3266))))

(assert (= (and d!103921 c!88585) b!809892))

(assert (= (and d!103921 (not c!88585)) b!809894))

(assert (= (and b!809894 c!88586) b!809890))

(assert (= (and b!809894 (not c!88586)) b!809893))

(assert (= (and b!809893 c!88587) b!809891))

(assert (= (and b!809893 (not c!88587)) b!809895))

(declare-fun m!752195 () Bool)

(assert (=> d!103921 m!752195))

(declare-fun m!752197 () Bool)

(assert (=> d!103921 m!752197))

(declare-fun m!752199 () Bool)

(assert (=> d!103921 m!752199))

(declare-fun m!752201 () Bool)

(assert (=> d!103921 m!752201))

(assert (=> d!103921 m!752197))

(assert (=> d!103921 m!752101))

(declare-fun m!752203 () Bool)

(assert (=> d!103921 m!752203))

(declare-fun m!752205 () Bool)

(assert (=> b!809894 m!752205))

(declare-fun m!752207 () Bool)

(assert (=> b!809895 m!752207))

(assert (=> b!809816 d!103921))

(declare-fun d!103923 () Bool)

(declare-fun res!553548 () Bool)

(declare-fun e!448324 () Bool)

(assert (=> d!103923 (=> res!553548 e!448324)))

(assert (=> d!103923 (= res!553548 (bvsge #b00000000000000000000000000000000 (size!21491 a!3170)))))

(assert (=> d!103923 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15083) e!448324)))

(declare-fun b!809906 () Bool)

(declare-fun e!448327 () Bool)

(declare-fun contains!4134 (List!15086 (_ BitVec 64)) Bool)

(assert (=> b!809906 (= e!448327 (contains!4134 Nil!15083 (select (arr!21070 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809907 () Bool)

(declare-fun e!448326 () Bool)

(declare-fun e!448325 () Bool)

(assert (=> b!809907 (= e!448326 e!448325)))

(declare-fun c!88590 () Bool)

(assert (=> b!809907 (= c!88590 (validKeyInArray!0 (select (arr!21070 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809908 () Bool)

(declare-fun call!35439 () Bool)

(assert (=> b!809908 (= e!448325 call!35439)))

(declare-fun bm!35436 () Bool)

(assert (=> bm!35436 (= call!35439 (arrayNoDuplicates!0 a!3170 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88590 (Cons!15082 (select (arr!21070 a!3170) #b00000000000000000000000000000000) Nil!15083) Nil!15083)))))

(declare-fun b!809909 () Bool)

(assert (=> b!809909 (= e!448324 e!448326)))

(declare-fun res!553549 () Bool)

(assert (=> b!809909 (=> (not res!553549) (not e!448326))))

(assert (=> b!809909 (= res!553549 (not e!448327))))

(declare-fun res!553547 () Bool)

(assert (=> b!809909 (=> (not res!553547) (not e!448327))))

(assert (=> b!809909 (= res!553547 (validKeyInArray!0 (select (arr!21070 a!3170) #b00000000000000000000000000000000)))))

(declare-fun b!809910 () Bool)

(assert (=> b!809910 (= e!448325 call!35439)))

(assert (= (and d!103923 (not res!553548)) b!809909))

(assert (= (and b!809909 res!553547) b!809906))

(assert (= (and b!809909 res!553549) b!809907))

(assert (= (and b!809907 c!88590) b!809910))

(assert (= (and b!809907 (not c!88590)) b!809908))

(assert (= (or b!809910 b!809908) bm!35436))

(declare-fun m!752209 () Bool)

(assert (=> b!809906 m!752209))

(assert (=> b!809906 m!752209))

(declare-fun m!752211 () Bool)

(assert (=> b!809906 m!752211))

(assert (=> b!809907 m!752209))

(assert (=> b!809907 m!752209))

(declare-fun m!752213 () Bool)

(assert (=> b!809907 m!752213))

(assert (=> bm!35436 m!752209))

(declare-fun m!752215 () Bool)

(assert (=> bm!35436 m!752215))

(assert (=> b!809909 m!752209))

(assert (=> b!809909 m!752209))

(assert (=> b!809909 m!752213))

(assert (=> b!809815 d!103923))

(declare-fun b!809925 () Bool)

(declare-fun e!448341 () Bool)

(declare-fun call!35442 () Bool)

(assert (=> b!809925 (= e!448341 call!35442)))

(declare-fun bm!35439 () Bool)

(assert (=> bm!35439 (= call!35442 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!809926 () Bool)

(declare-fun e!448340 () Bool)

(assert (=> b!809926 (= e!448340 e!448341)))

(declare-fun lt!362994 () (_ BitVec 64))

(assert (=> b!809926 (= lt!362994 (select (arr!21070 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27610 0))(
  ( (Unit!27611) )
))
(declare-fun lt!362995 () Unit!27610)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44002 (_ BitVec 64) (_ BitVec 32)) Unit!27610)

(assert (=> b!809926 (= lt!362995 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362994 #b00000000000000000000000000000000))))

(assert (=> b!809926 (arrayContainsKey!0 a!3170 lt!362994 #b00000000000000000000000000000000)))

(declare-fun lt!362993 () Unit!27610)

(assert (=> b!809926 (= lt!362993 lt!362995)))

(declare-fun res!553560 () Bool)

(assert (=> b!809926 (= res!553560 (= (seekEntryOrOpen!0 (select (arr!21070 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8668 #b00000000000000000000000000000000)))))

(assert (=> b!809926 (=> (not res!553560) (not e!448341))))

(declare-fun b!809927 () Bool)

(assert (=> b!809927 (= e!448340 call!35442)))

(declare-fun b!809928 () Bool)

(declare-fun e!448342 () Bool)

(assert (=> b!809928 (= e!448342 e!448340)))

(declare-fun c!88593 () Bool)

(assert (=> b!809928 (= c!88593 (validKeyInArray!0 (select (arr!21070 a!3170) #b00000000000000000000000000000000)))))

(declare-fun d!103927 () Bool)

(declare-fun res!553561 () Bool)

(assert (=> d!103927 (=> res!553561 e!448342)))

(assert (=> d!103927 (= res!553561 (bvsge #b00000000000000000000000000000000 (size!21491 a!3170)))))

(assert (=> d!103927 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!448342)))

(assert (= (and d!103927 (not res!553561)) b!809928))

(assert (= (and b!809928 c!88593) b!809926))

(assert (= (and b!809928 (not c!88593)) b!809927))

(assert (= (and b!809926 res!553560) b!809925))

(assert (= (or b!809925 b!809927) bm!35439))

(declare-fun m!752221 () Bool)

(assert (=> bm!35439 m!752221))

(assert (=> b!809926 m!752209))

(declare-fun m!752223 () Bool)

(assert (=> b!809926 m!752223))

(declare-fun m!752225 () Bool)

(assert (=> b!809926 m!752225))

(assert (=> b!809926 m!752209))

(declare-fun m!752227 () Bool)

(assert (=> b!809926 m!752227))

(assert (=> b!809928 m!752209))

(assert (=> b!809928 m!752209))

(assert (=> b!809928 m!752213))

(assert (=> b!809814 d!103927))

(declare-fun d!103933 () Bool)

(declare-fun res!553566 () Bool)

(declare-fun e!448353 () Bool)

(assert (=> d!103933 (=> res!553566 e!448353)))

(assert (=> d!103933 (= res!553566 (= (select (arr!21070 a!3170) #b00000000000000000000000000000000) k0!2044))))

(assert (=> d!103933 (= (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000) e!448353)))

(declare-fun b!809945 () Bool)

(declare-fun e!448354 () Bool)

(assert (=> b!809945 (= e!448353 e!448354)))

(declare-fun res!553567 () Bool)

(assert (=> b!809945 (=> (not res!553567) (not e!448354))))

(assert (=> b!809945 (= res!553567 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21491 a!3170)))))

(declare-fun b!809946 () Bool)

(assert (=> b!809946 (= e!448354 (arrayContainsKey!0 a!3170 k0!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103933 (not res!553566)) b!809945))

(assert (= (and b!809945 res!553567) b!809946))

(assert (=> d!103933 m!752209))

(declare-fun m!752229 () Bool)

(assert (=> b!809946 m!752229))

(assert (=> b!809813 d!103933))

(declare-fun d!103935 () Bool)

(assert (=> d!103935 (= (validKeyInArray!0 (select (arr!21070 a!3170) j!153)) (and (not (= (select (arr!21070 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21070 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!809812 d!103935))

(declare-fun d!103937 () Bool)

(declare-fun lt!363004 () (_ BitVec 32))

(assert (=> d!103937 (and (bvsge lt!363004 #b00000000000000000000000000000000) (bvslt lt!363004 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103937 (= lt!363004 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103937 (validMask!0 mask!3266)))

(assert (=> d!103937 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!363004)))

(declare-fun bs!22420 () Bool)

(assert (= bs!22420 d!103937))

(declare-fun m!752241 () Bool)

(assert (=> bs!22420 m!752241))

(assert (=> bs!22420 m!752101))

(assert (=> b!809811 d!103937))

(declare-fun lt!363006 () SeekEntryResult!8668)

(declare-fun d!103941 () Bool)

(assert (=> d!103941 (and (or ((_ is Undefined!8668) lt!363006) (not ((_ is Found!8668) lt!363006)) (and (bvsge (index!37040 lt!363006) #b00000000000000000000000000000000) (bvslt (index!37040 lt!363006) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!363006) ((_ is Found!8668) lt!363006) (not ((_ is MissingVacant!8668) lt!363006)) (not (= (index!37042 lt!363006) vacantBefore!23)) (and (bvsge (index!37042 lt!363006) #b00000000000000000000000000000000) (bvslt (index!37042 lt!363006) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!363006) (ite ((_ is Found!8668) lt!363006) (= (select (arr!21070 a!3170) (index!37040 lt!363006)) (select (arr!21070 a!3170) j!153)) (and ((_ is MissingVacant!8668) lt!363006) (= (index!37042 lt!363006) vacantBefore!23) (= (select (arr!21070 a!3170) (index!37042 lt!363006)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448359 () SeekEntryResult!8668)

(assert (=> d!103941 (= lt!363006 e!448359)))

(declare-fun c!88604 () Bool)

(assert (=> d!103941 (= c!88604 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!363005 () (_ BitVec 64))

(assert (=> d!103941 (= lt!363005 (select (arr!21070 a!3170) index!1236))))

(assert (=> d!103941 (validMask!0 mask!3266)))

(assert (=> d!103941 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266) lt!363006)))

(declare-fun b!809953 () Bool)

(declare-fun e!448358 () SeekEntryResult!8668)

(assert (=> b!809953 (= e!448358 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809954 () Bool)

(declare-fun e!448360 () SeekEntryResult!8668)

(assert (=> b!809954 (= e!448359 e!448360)))

(declare-fun c!88605 () Bool)

(assert (=> b!809954 (= c!88605 (= lt!363005 (select (arr!21070 a!3170) j!153)))))

(declare-fun b!809955 () Bool)

(assert (=> b!809955 (= e!448359 Undefined!8668)))

(declare-fun b!809956 () Bool)

(assert (=> b!809956 (= e!448360 (Found!8668 index!1236))))

(declare-fun b!809957 () Bool)

(declare-fun c!88603 () Bool)

(assert (=> b!809957 (= c!88603 (= lt!363005 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809957 (= e!448360 e!448358)))

(declare-fun b!809958 () Bool)

(assert (=> b!809958 (= e!448358 (MissingVacant!8668 vacantBefore!23))))

(assert (= (and d!103941 c!88604) b!809955))

(assert (= (and d!103941 (not c!88604)) b!809954))

(assert (= (and b!809954 c!88605) b!809956))

(assert (= (and b!809954 (not c!88605)) b!809957))

(assert (= (and b!809957 c!88603) b!809958))

(assert (= (and b!809957 (not c!88603)) b!809953))

(declare-fun m!752243 () Bool)

(assert (=> d!103941 m!752243))

(declare-fun m!752245 () Bool)

(assert (=> d!103941 m!752245))

(assert (=> d!103941 m!752117))

(assert (=> d!103941 m!752101))

(assert (=> b!809953 m!752141))

(assert (=> b!809953 m!752141))

(assert (=> b!809953 m!752109))

(declare-fun m!752247 () Bool)

(assert (=> b!809953 m!752247))

(assert (=> b!809810 d!103941))

(declare-fun b!809959 () Bool)

(declare-fun e!448363 () SeekEntryResult!8668)

(declare-fun lt!363009 () SeekEntryResult!8668)

(assert (=> b!809959 (= e!448363 (Found!8668 (index!37041 lt!363009)))))

(declare-fun b!809960 () Bool)

(declare-fun e!448362 () SeekEntryResult!8668)

(assert (=> b!809960 (= e!448362 (MissingZero!8668 (index!37041 lt!363009)))))

(declare-fun b!809961 () Bool)

(declare-fun e!448361 () SeekEntryResult!8668)

(assert (=> b!809961 (= e!448361 Undefined!8668)))

(declare-fun b!809962 () Bool)

(declare-fun c!88608 () Bool)

(declare-fun lt!363007 () (_ BitVec 64))

(assert (=> b!809962 (= c!88608 (= lt!363007 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809962 (= e!448363 e!448362)))

(declare-fun d!103943 () Bool)

(declare-fun lt!363008 () SeekEntryResult!8668)

(assert (=> d!103943 (and (or ((_ is Undefined!8668) lt!363008) (not ((_ is Found!8668) lt!363008)) (and (bvsge (index!37040 lt!363008) #b00000000000000000000000000000000) (bvslt (index!37040 lt!363008) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!363008) ((_ is Found!8668) lt!363008) (not ((_ is MissingZero!8668) lt!363008)) (and (bvsge (index!37039 lt!363008) #b00000000000000000000000000000000) (bvslt (index!37039 lt!363008) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!363008) ((_ is Found!8668) lt!363008) ((_ is MissingZero!8668) lt!363008) (not ((_ is MissingVacant!8668) lt!363008)) (and (bvsge (index!37042 lt!363008) #b00000000000000000000000000000000) (bvslt (index!37042 lt!363008) (size!21491 a!3170)))) (or ((_ is Undefined!8668) lt!363008) (ite ((_ is Found!8668) lt!363008) (= (select (arr!21070 a!3170) (index!37040 lt!363008)) (select (arr!21070 a!3170) j!153)) (ite ((_ is MissingZero!8668) lt!363008) (= (select (arr!21070 a!3170) (index!37039 lt!363008)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8668) lt!363008) (= (select (arr!21070 a!3170) (index!37042 lt!363008)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103943 (= lt!363008 e!448361)))

(declare-fun c!88606 () Bool)

(assert (=> d!103943 (= c!88606 (and ((_ is Intermediate!8668) lt!363009) (undefined!9480 lt!363009)))))

(assert (=> d!103943 (= lt!363009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21070 a!3170) j!153) mask!3266) (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103943 (validMask!0 mask!3266)))

(assert (=> d!103943 (= (seekEntryOrOpen!0 (select (arr!21070 a!3170) j!153) a!3170 mask!3266) lt!363008)))

(declare-fun b!809963 () Bool)

(assert (=> b!809963 (= e!448361 e!448363)))

(assert (=> b!809963 (= lt!363007 (select (arr!21070 a!3170) (index!37041 lt!363009)))))

(declare-fun c!88607 () Bool)

(assert (=> b!809963 (= c!88607 (= lt!363007 (select (arr!21070 a!3170) j!153)))))

(declare-fun b!809964 () Bool)

(assert (=> b!809964 (= e!448362 (seekKeyOrZeroReturnVacant!0 (x!67875 lt!363009) (index!37041 lt!363009) (index!37041 lt!363009) (select (arr!21070 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103943 c!88606) b!809961))

(assert (= (and d!103943 (not c!88606)) b!809963))

(assert (= (and b!809963 c!88607) b!809959))

(assert (= (and b!809963 (not c!88607)) b!809962))

(assert (= (and b!809962 c!88608) b!809960))

(assert (= (and b!809962 (not c!88608)) b!809964))

(declare-fun m!752249 () Bool)

(assert (=> d!103943 m!752249))

(declare-fun m!752251 () Bool)

(assert (=> d!103943 m!752251))

(assert (=> d!103943 m!752109))

(declare-fun m!752253 () Bool)

(assert (=> d!103943 m!752253))

(declare-fun m!752255 () Bool)

(assert (=> d!103943 m!752255))

(assert (=> d!103943 m!752109))

(assert (=> d!103943 m!752251))

(assert (=> d!103943 m!752101))

(declare-fun m!752257 () Bool)

(assert (=> d!103943 m!752257))

(declare-fun m!752259 () Bool)

(assert (=> b!809963 m!752259))

(assert (=> b!809964 m!752109))

(declare-fun m!752261 () Bool)

(assert (=> b!809964 m!752261))

(assert (=> b!809810 d!103943))

(declare-fun d!103945 () Bool)

(assert (=> d!103945 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69504 d!103945))

(declare-fun d!103951 () Bool)

(assert (=> d!103951 (= (array_inv!16844 a!3170) (bvsge (size!21491 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69504 d!103951))

(declare-fun lt!363026 () SeekEntryResult!8668)

(declare-fun d!103953 () Bool)

(assert (=> d!103953 (and (or ((_ is Undefined!8668) lt!363026) (not ((_ is Found!8668) lt!363026)) (and (bvsge (index!37040 lt!363026) #b00000000000000000000000000000000) (bvslt (index!37040 lt!363026) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363026) ((_ is Found!8668) lt!363026) (not ((_ is MissingVacant!8668) lt!363026)) (not (= (index!37042 lt!363026) vacantAfter!23)) (and (bvsge (index!37042 lt!363026) #b00000000000000000000000000000000) (bvslt (index!37042 lt!363026) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363026) (ite ((_ is Found!8668) lt!363026) (= (select (arr!21070 lt!362944) (index!37040 lt!363026)) lt!362947) (and ((_ is MissingVacant!8668) lt!363026) (= (index!37042 lt!363026) vacantAfter!23) (= (select (arr!21070 lt!362944) (index!37042 lt!363026)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448383 () SeekEntryResult!8668)

(assert (=> d!103953 (= lt!363026 e!448383)))

(declare-fun c!88622 () Bool)

(assert (=> d!103953 (= c!88622 (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110))))

(declare-fun lt!363025 () (_ BitVec 64))

(assert (=> d!103953 (= lt!363025 (select (arr!21070 lt!362944) lt!362949))))

(assert (=> d!103953 (validMask!0 mask!3266)))

(assert (=> d!103953 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362949 vacantAfter!23 lt!362947 lt!362944 mask!3266) lt!363026)))

(declare-fun e!448382 () SeekEntryResult!8668)

(declare-fun b!809995 () Bool)

(assert (=> b!809995 (= e!448382 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077 #b00000000000000000000000000000001) (nextIndex!0 lt!362949 (bvadd #b00000000000000000000000000000001 x!1077) mask!3266) vacantAfter!23 lt!362947 lt!362944 mask!3266))))

(declare-fun b!809996 () Bool)

(declare-fun e!448384 () SeekEntryResult!8668)

(assert (=> b!809996 (= e!448383 e!448384)))

(declare-fun c!88623 () Bool)

(assert (=> b!809996 (= c!88623 (= lt!363025 lt!362947))))

(declare-fun b!809997 () Bool)

(assert (=> b!809997 (= e!448383 Undefined!8668)))

(declare-fun b!809998 () Bool)

(assert (=> b!809998 (= e!448384 (Found!8668 lt!362949))))

(declare-fun b!809999 () Bool)

(declare-fun c!88621 () Bool)

(assert (=> b!809999 (= c!88621 (= lt!363025 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809999 (= e!448384 e!448382)))

(declare-fun b!810000 () Bool)

(assert (=> b!810000 (= e!448382 (MissingVacant!8668 vacantAfter!23))))

(assert (= (and d!103953 c!88622) b!809997))

(assert (= (and d!103953 (not c!88622)) b!809996))

(assert (= (and b!809996 c!88623) b!809998))

(assert (= (and b!809996 (not c!88623)) b!809999))

(assert (= (and b!809999 c!88621) b!810000))

(assert (= (and b!809999 (not c!88621)) b!809995))

(declare-fun m!752283 () Bool)

(assert (=> d!103953 m!752283))

(declare-fun m!752285 () Bool)

(assert (=> d!103953 m!752285))

(declare-fun m!752287 () Bool)

(assert (=> d!103953 m!752287))

(assert (=> d!103953 m!752101))

(assert (=> b!809995 m!752191))

(assert (=> b!809995 m!752191))

(declare-fun m!752289 () Bool)

(assert (=> b!809995 m!752289))

(assert (=> b!809820 d!103953))

(declare-fun lt!363028 () SeekEntryResult!8668)

(declare-fun d!103955 () Bool)

(assert (=> d!103955 (and (or ((_ is Undefined!8668) lt!363028) (not ((_ is Found!8668) lt!363028)) (and (bvsge (index!37040 lt!363028) #b00000000000000000000000000000000) (bvslt (index!37040 lt!363028) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363028) ((_ is Found!8668) lt!363028) (not ((_ is MissingVacant!8668) lt!363028)) (not (= (index!37042 lt!363028) vacantAfter!23)) (and (bvsge (index!37042 lt!363028) #b00000000000000000000000000000000) (bvslt (index!37042 lt!363028) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363028) (ite ((_ is Found!8668) lt!363028) (= (select (arr!21070 lt!362944) (index!37040 lt!363028)) lt!362947) (and ((_ is MissingVacant!8668) lt!363028) (= (index!37042 lt!363028) vacantAfter!23) (= (select (arr!21070 lt!362944) (index!37042 lt!363028)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448386 () SeekEntryResult!8668)

(assert (=> d!103955 (= lt!363028 e!448386)))

(declare-fun c!88625 () Bool)

(assert (=> d!103955 (= c!88625 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!363027 () (_ BitVec 64))

(assert (=> d!103955 (= lt!363027 (select (arr!21070 lt!362944) index!1236))))

(assert (=> d!103955 (validMask!0 mask!3266)))

(assert (=> d!103955 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362947 lt!362944 mask!3266) lt!363028)))

(declare-fun b!810001 () Bool)

(declare-fun e!448385 () SeekEntryResult!8668)

(assert (=> b!810001 (= e!448385 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362947 lt!362944 mask!3266))))

(declare-fun b!810002 () Bool)

(declare-fun e!448387 () SeekEntryResult!8668)

(assert (=> b!810002 (= e!448386 e!448387)))

(declare-fun c!88626 () Bool)

(assert (=> b!810002 (= c!88626 (= lt!363027 lt!362947))))

(declare-fun b!810003 () Bool)

(assert (=> b!810003 (= e!448386 Undefined!8668)))

(declare-fun b!810004 () Bool)

(assert (=> b!810004 (= e!448387 (Found!8668 index!1236))))

(declare-fun b!810005 () Bool)

(declare-fun c!88624 () Bool)

(assert (=> b!810005 (= c!88624 (= lt!363027 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810005 (= e!448387 e!448385)))

(declare-fun b!810006 () Bool)

(assert (=> b!810006 (= e!448385 (MissingVacant!8668 vacantAfter!23))))

(assert (= (and d!103955 c!88625) b!810003))

(assert (= (and d!103955 (not c!88625)) b!810002))

(assert (= (and b!810002 c!88626) b!810004))

(assert (= (and b!810002 (not c!88626)) b!810005))

(assert (= (and b!810005 c!88624) b!810006))

(assert (= (and b!810005 (not c!88624)) b!810001))

(declare-fun m!752291 () Bool)

(assert (=> d!103955 m!752291))

(declare-fun m!752293 () Bool)

(assert (=> d!103955 m!752293))

(declare-fun m!752295 () Bool)

(assert (=> d!103955 m!752295))

(assert (=> d!103955 m!752101))

(assert (=> b!810001 m!752141))

(assert (=> b!810001 m!752141))

(declare-fun m!752297 () Bool)

(assert (=> b!810001 m!752297))

(assert (=> b!809809 d!103955))

(declare-fun b!810007 () Bool)

(declare-fun e!448390 () SeekEntryResult!8668)

(declare-fun lt!363031 () SeekEntryResult!8668)

(assert (=> b!810007 (= e!448390 (Found!8668 (index!37041 lt!363031)))))

(declare-fun b!810008 () Bool)

(declare-fun e!448389 () SeekEntryResult!8668)

(assert (=> b!810008 (= e!448389 (MissingZero!8668 (index!37041 lt!363031)))))

(declare-fun b!810009 () Bool)

(declare-fun e!448388 () SeekEntryResult!8668)

(assert (=> b!810009 (= e!448388 Undefined!8668)))

(declare-fun b!810010 () Bool)

(declare-fun c!88629 () Bool)

(declare-fun lt!363029 () (_ BitVec 64))

(assert (=> b!810010 (= c!88629 (= lt!363029 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810010 (= e!448390 e!448389)))

(declare-fun d!103957 () Bool)

(declare-fun lt!363030 () SeekEntryResult!8668)

(assert (=> d!103957 (and (or ((_ is Undefined!8668) lt!363030) (not ((_ is Found!8668) lt!363030)) (and (bvsge (index!37040 lt!363030) #b00000000000000000000000000000000) (bvslt (index!37040 lt!363030) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363030) ((_ is Found!8668) lt!363030) (not ((_ is MissingZero!8668) lt!363030)) (and (bvsge (index!37039 lt!363030) #b00000000000000000000000000000000) (bvslt (index!37039 lt!363030) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363030) ((_ is Found!8668) lt!363030) ((_ is MissingZero!8668) lt!363030) (not ((_ is MissingVacant!8668) lt!363030)) (and (bvsge (index!37042 lt!363030) #b00000000000000000000000000000000) (bvslt (index!37042 lt!363030) (size!21491 lt!362944)))) (or ((_ is Undefined!8668) lt!363030) (ite ((_ is Found!8668) lt!363030) (= (select (arr!21070 lt!362944) (index!37040 lt!363030)) lt!362947) (ite ((_ is MissingZero!8668) lt!363030) (= (select (arr!21070 lt!362944) (index!37039 lt!363030)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8668) lt!363030) (= (select (arr!21070 lt!362944) (index!37042 lt!363030)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103957 (= lt!363030 e!448388)))

(declare-fun c!88627 () Bool)

(assert (=> d!103957 (= c!88627 (and ((_ is Intermediate!8668) lt!363031) (undefined!9480 lt!363031)))))

(assert (=> d!103957 (= lt!363031 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362947 mask!3266) lt!362947 lt!362944 mask!3266))))

(assert (=> d!103957 (validMask!0 mask!3266)))

(assert (=> d!103957 (= (seekEntryOrOpen!0 lt!362947 lt!362944 mask!3266) lt!363030)))

(declare-fun b!810011 () Bool)

(assert (=> b!810011 (= e!448388 e!448390)))

(assert (=> b!810011 (= lt!363029 (select (arr!21070 lt!362944) (index!37041 lt!363031)))))

(declare-fun c!88628 () Bool)

(assert (=> b!810011 (= c!88628 (= lt!363029 lt!362947))))

(declare-fun b!810012 () Bool)

(assert (=> b!810012 (= e!448389 (seekKeyOrZeroReturnVacant!0 (x!67875 lt!363031) (index!37041 lt!363031) (index!37041 lt!363031) lt!362947 lt!362944 mask!3266))))

(assert (= (and d!103957 c!88627) b!810009))

(assert (= (and d!103957 (not c!88627)) b!810011))

(assert (= (and b!810011 c!88628) b!810007))

(assert (= (and b!810011 (not c!88628)) b!810010))

(assert (= (and b!810010 c!88629) b!810008))

(assert (= (and b!810010 (not c!88629)) b!810012))

(declare-fun m!752299 () Bool)

(assert (=> d!103957 m!752299))

(declare-fun m!752301 () Bool)

(assert (=> d!103957 m!752301))

(declare-fun m!752303 () Bool)

(assert (=> d!103957 m!752303))

(declare-fun m!752305 () Bool)

(assert (=> d!103957 m!752305))

(assert (=> d!103957 m!752301))

(assert (=> d!103957 m!752101))

(declare-fun m!752307 () Bool)

(assert (=> d!103957 m!752307))

(declare-fun m!752309 () Bool)

(assert (=> b!810011 m!752309))

(declare-fun m!752311 () Bool)

(assert (=> b!810012 m!752311))

(assert (=> b!809809 d!103957))

(check-sat (not d!103943) (not b!809928) (not b!809907) (not b!809953) (not b!809964) (not d!103955) (not b!809926) (not bm!35439) (not bm!35436) (not b!809909) (not d!103937) (not d!103941) (not b!809872) (not d!103957) (not d!103921) (not d!103919) (not b!809906) (not b!810001) (not b!809946) (not b!810012) (not b!809995) (not b!809895) (not d!103953))
(check-sat)
