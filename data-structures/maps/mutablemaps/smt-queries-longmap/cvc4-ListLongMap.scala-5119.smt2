; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69506 () Bool)

(assert start!69506)

(declare-fun b!809847 () Bool)

(declare-fun res!553528 () Bool)

(declare-fun e!448292 () Bool)

(assert (=> b!809847 (=> (not res!553528) (not e!448292))))

(declare-datatypes ((array!44004 0))(
  ( (array!44005 (arr!21071 (Array (_ BitVec 32) (_ BitVec 64))) (size!21492 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44004)

(declare-datatypes ((List!15087 0))(
  ( (Nil!15084) (Cons!15083 (h!16212 (_ BitVec 64)) (t!21410 List!15087)) )
))
(declare-fun arrayNoDuplicates!0 (array!44004 (_ BitVec 32) List!15087) Bool)

(assert (=> b!809847 (= res!553528 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15084))))

(declare-fun b!809849 () Bool)

(declare-fun res!553537 () Bool)

(declare-fun e!448293 () Bool)

(assert (=> b!809849 (=> (not res!553537) (not e!448293))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809849 (= res!553537 (validKeyInArray!0 (select (arr!21071 a!3170) j!153)))))

(declare-fun b!809850 () Bool)

(declare-fun res!553529 () Bool)

(declare-fun e!448295 () Bool)

(assert (=> b!809850 (=> (not res!553529) (not e!448295))))

(declare-datatypes ((SeekEntryResult!8669 0))(
  ( (MissingZero!8669 (index!37043 (_ BitVec 32))) (Found!8669 (index!37044 (_ BitVec 32))) (Intermediate!8669 (undefined!9481 Bool) (index!37045 (_ BitVec 32)) (x!67876 (_ BitVec 32))) (Undefined!8669) (MissingVacant!8669 (index!37046 (_ BitVec 32))) )
))
(declare-fun lt!362969 () SeekEntryResult!8669)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362967 () (_ BitVec 32))

(declare-fun lt!362965 () array!44004)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!362971 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44004 (_ BitVec 32)) SeekEntryResult!8669)

(assert (=> b!809850 (= res!553529 (= lt!362969 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362967 vacantAfter!23 lt!362971 lt!362965 mask!3266)))))

(declare-fun b!809851 () Bool)

(declare-fun e!448296 () Bool)

(assert (=> b!809851 (= e!448296 e!448295)))

(declare-fun res!553538 () Bool)

(assert (=> b!809851 (=> (not res!553538) (not e!448295))))

(assert (=> b!809851 (= res!553538 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!362967 #b00000000000000000000000000000000) (bvslt lt!362967 (size!21492 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809851 (= lt!362967 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809852 () Bool)

(assert (=> b!809852 (= e!448293 e!448292)))

(declare-fun res!553539 () Bool)

(assert (=> b!809852 (=> (not res!553539) (not e!448292))))

(declare-fun lt!362968 () SeekEntryResult!8669)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809852 (= res!553539 (or (= lt!362968 (MissingZero!8669 i!1163)) (= lt!362968 (MissingVacant!8669 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44004 (_ BitVec 32)) SeekEntryResult!8669)

(assert (=> b!809852 (= lt!362968 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809853 () Bool)

(declare-fun e!448297 () Bool)

(assert (=> b!809853 (= e!448297 e!448296)))

(declare-fun res!553533 () Bool)

(assert (=> b!809853 (=> (not res!553533) (not e!448296))))

(declare-fun lt!362966 () SeekEntryResult!8669)

(declare-fun lt!362970 () SeekEntryResult!8669)

(assert (=> b!809853 (= res!553533 (and (= lt!362970 lt!362966) (= lt!362966 (Found!8669 j!153)) (not (= (select (arr!21071 a!3170) index!1236) (select (arr!21071 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809853 (= lt!362966 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809853 (= lt!362970 (seekEntryOrOpen!0 (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809854 () Bool)

(assert (=> b!809854 (= e!448292 e!448297)))

(declare-fun res!553536 () Bool)

(assert (=> b!809854 (=> (not res!553536) (not e!448297))))

(assert (=> b!809854 (= res!553536 (= lt!362969 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362971 lt!362965 mask!3266)))))

(assert (=> b!809854 (= lt!362969 (seekEntryOrOpen!0 lt!362971 lt!362965 mask!3266))))

(assert (=> b!809854 (= lt!362971 (select (store (arr!21071 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809854 (= lt!362965 (array!44005 (store (arr!21071 a!3170) i!1163 k!2044) (size!21492 a!3170)))))

(declare-fun b!809855 () Bool)

(declare-fun res!553535 () Bool)

(assert (=> b!809855 (=> (not res!553535) (not e!448293))))

(declare-fun arrayContainsKey!0 (array!44004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809855 (= res!553535 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809848 () Bool)

(declare-fun res!553534 () Bool)

(assert (=> b!809848 (=> (not res!553534) (not e!448292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44004 (_ BitVec 32)) Bool)

(assert (=> b!809848 (= res!553534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!553532 () Bool)

(assert (=> start!69506 (=> (not res!553532) (not e!448293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69506 (= res!553532 (validMask!0 mask!3266))))

(assert (=> start!69506 e!448293))

(assert (=> start!69506 true))

(declare-fun array_inv!16845 (array!44004) Bool)

(assert (=> start!69506 (array_inv!16845 a!3170)))

(declare-fun b!809856 () Bool)

(declare-fun res!553531 () Bool)

(assert (=> b!809856 (=> (not res!553531) (not e!448293))))

(assert (=> b!809856 (= res!553531 (and (= (size!21492 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21492 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21492 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809857 () Bool)

(declare-fun res!553540 () Bool)

(assert (=> b!809857 (=> (not res!553540) (not e!448292))))

(assert (=> b!809857 (= res!553540 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21492 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21071 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21492 a!3170)) (= (select (arr!21071 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809858 () Bool)

(declare-fun res!553530 () Bool)

(assert (=> b!809858 (=> (not res!553530) (not e!448293))))

(assert (=> b!809858 (= res!553530 (validKeyInArray!0 k!2044))))

(declare-fun b!809859 () Bool)

(assert (=> b!809859 (= e!448295 (not (= lt!362970 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!362967 vacantBefore!23 (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))))

(assert (= (and start!69506 res!553532) b!809856))

(assert (= (and b!809856 res!553531) b!809849))

(assert (= (and b!809849 res!553537) b!809858))

(assert (= (and b!809858 res!553530) b!809855))

(assert (= (and b!809855 res!553535) b!809852))

(assert (= (and b!809852 res!553539) b!809848))

(assert (= (and b!809848 res!553534) b!809847))

(assert (= (and b!809847 res!553528) b!809857))

(assert (= (and b!809857 res!553540) b!809854))

(assert (= (and b!809854 res!553536) b!809853))

(assert (= (and b!809853 res!553533) b!809851))

(assert (= (and b!809851 res!553538) b!809850))

(assert (= (and b!809850 res!553529) b!809859))

(declare-fun m!752143 () Bool)

(assert (=> b!809855 m!752143))

(declare-fun m!752145 () Bool)

(assert (=> b!809848 m!752145))

(declare-fun m!752147 () Bool)

(assert (=> b!809858 m!752147))

(declare-fun m!752149 () Bool)

(assert (=> b!809853 m!752149))

(declare-fun m!752151 () Bool)

(assert (=> b!809853 m!752151))

(assert (=> b!809853 m!752151))

(declare-fun m!752153 () Bool)

(assert (=> b!809853 m!752153))

(assert (=> b!809853 m!752151))

(declare-fun m!752155 () Bool)

(assert (=> b!809853 m!752155))

(declare-fun m!752157 () Bool)

(assert (=> b!809847 m!752157))

(declare-fun m!752159 () Bool)

(assert (=> start!69506 m!752159))

(declare-fun m!752161 () Bool)

(assert (=> start!69506 m!752161))

(declare-fun m!752163 () Bool)

(assert (=> b!809857 m!752163))

(declare-fun m!752165 () Bool)

(assert (=> b!809857 m!752165))

(assert (=> b!809849 m!752151))

(assert (=> b!809849 m!752151))

(declare-fun m!752167 () Bool)

(assert (=> b!809849 m!752167))

(declare-fun m!752169 () Bool)

(assert (=> b!809854 m!752169))

(declare-fun m!752171 () Bool)

(assert (=> b!809854 m!752171))

(declare-fun m!752173 () Bool)

(assert (=> b!809854 m!752173))

(declare-fun m!752175 () Bool)

(assert (=> b!809854 m!752175))

(declare-fun m!752177 () Bool)

(assert (=> b!809850 m!752177))

(assert (=> b!809859 m!752151))

(assert (=> b!809859 m!752151))

(declare-fun m!752179 () Bool)

(assert (=> b!809859 m!752179))

(declare-fun m!752181 () Bool)

(assert (=> b!809851 m!752181))

(declare-fun m!752183 () Bool)

(assert (=> b!809852 m!752183))

(push 1)

(assert (not b!809855))

(assert (not b!809850))

(assert (not b!809849))

(assert (not b!809858))

(assert (not b!809848))

(assert (not b!809851))

(assert (not b!809853))

(assert (not b!809854))

(assert (not b!809859))

(assert (not b!809852))

(assert (not b!809847))

(assert (not start!69506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!103929 () Bool)

(declare-fun res!553554 () Bool)

(declare-fun e!448332 () Bool)

(assert (=> d!103929 (=> res!553554 e!448332)))

(assert (=> d!103929 (= res!553554 (= (select (arr!21071 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103929 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!448332)))

(declare-fun b!809915 () Bool)

(declare-fun e!448333 () Bool)

(assert (=> b!809915 (= e!448332 e!448333)))

(declare-fun res!553555 () Bool)

(assert (=> b!809915 (=> (not res!553555) (not e!448333))))

(assert (=> b!809915 (= res!553555 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21492 a!3170)))))

(declare-fun b!809916 () Bool)

(assert (=> b!809916 (= e!448333 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103929 (not res!553554)) b!809915))

(assert (= (and b!809915 res!553555) b!809916))

(declare-fun m!752217 () Bool)

(assert (=> d!103929 m!752217))

(declare-fun m!752219 () Bool)

(assert (=> b!809916 m!752219))

(assert (=> b!809855 d!103929))

(declare-fun b!809985 () Bool)

(declare-fun e!448376 () SeekEntryResult!8669)

(assert (=> b!809985 (= e!448376 (MissingVacant!8669 vacantAfter!23))))

(declare-fun d!103931 () Bool)

(declare-fun lt!363020 () SeekEntryResult!8669)

(assert (=> d!103931 (and (or (is-Undefined!8669 lt!363020) (not (is-Found!8669 lt!363020)) (and (bvsge (index!37044 lt!363020) #b00000000000000000000000000000000) (bvslt (index!37044 lt!363020) (size!21492 lt!362965)))) (or (is-Undefined!8669 lt!363020) (is-Found!8669 lt!363020) (not (is-MissingVacant!8669 lt!363020)) (not (= (index!37046 lt!363020) vacantAfter!23)) (and (bvsge (index!37046 lt!363020) #b00000000000000000000000000000000) (bvslt (index!37046 lt!363020) (size!21492 lt!362965)))) (or (is-Undefined!8669 lt!363020) (ite (is-Found!8669 lt!363020) (= (select (arr!21071 lt!362965) (index!37044 lt!363020)) lt!362971) (and (is-MissingVacant!8669 lt!363020) (= (index!37046 lt!363020) vacantAfter!23) (= (select (arr!21071 lt!362965) (index!37046 lt!363020)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448377 () SeekEntryResult!8669)

(assert (=> d!103931 (= lt!363020 e!448377)))

(declare-fun c!88617 () Bool)

(assert (=> d!103931 (= c!88617 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!363021 () (_ BitVec 64))

(assert (=> d!103931 (= lt!363021 (select (arr!21071 lt!362965) index!1236))))

(assert (=> d!103931 (validMask!0 mask!3266)))

(assert (=> d!103931 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362971 lt!362965 mask!3266) lt!363020)))

(declare-fun b!809986 () Bool)

(declare-fun e!448378 () SeekEntryResult!8669)

(assert (=> b!809986 (= e!448378 (Found!8669 index!1236))))

(declare-fun b!809987 () Bool)

(assert (=> b!809987 (= e!448377 Undefined!8669)))

(declare-fun b!809988 () Bool)

(declare-fun c!88619 () Bool)

(assert (=> b!809988 (= c!88619 (= lt!363021 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!809988 (= e!448378 e!448376)))

(declare-fun b!809989 () Bool)

(assert (=> b!809989 (= e!448377 e!448378)))

(declare-fun c!88618 () Bool)

(assert (=> b!809989 (= c!88618 (= lt!363021 lt!362971))))

(declare-fun b!809990 () Bool)

(assert (=> b!809990 (= e!448376 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362971 lt!362965 mask!3266))))

(assert (= (and d!103931 c!88617) b!809987))

(assert (= (and d!103931 (not c!88617)) b!809989))

(assert (= (and b!809989 c!88618) b!809986))

(assert (= (and b!809989 (not c!88618)) b!809988))

(assert (= (and b!809988 c!88619) b!809985))

(assert (= (and b!809988 (not c!88619)) b!809990))

(declare-fun m!752263 () Bool)

(assert (=> d!103931 m!752263))

(declare-fun m!752265 () Bool)

(assert (=> d!103931 m!752265))

(declare-fun m!752267 () Bool)

(assert (=> d!103931 m!752267))

(assert (=> d!103931 m!752159))

(assert (=> b!809990 m!752181))

(assert (=> b!809990 m!752181))

(declare-fun m!752269 () Bool)

(assert (=> b!809990 m!752269))

(assert (=> b!809854 d!103931))

(declare-fun lt!363044 () SeekEntryResult!8669)

(declare-fun e!448403 () SeekEntryResult!8669)

(declare-fun b!810037 () Bool)

(assert (=> b!810037 (= e!448403 (seekKeyOrZeroReturnVacant!0 (x!67876 lt!363044) (index!37045 lt!363044) (index!37045 lt!363044) lt!362971 lt!362965 mask!3266))))

(declare-fun b!810038 () Bool)

(declare-fun e!448404 () SeekEntryResult!8669)

(assert (=> b!810038 (= e!448404 (Found!8669 (index!37045 lt!363044)))))

(declare-fun b!810039 () Bool)

(assert (=> b!810039 (= e!448403 (MissingZero!8669 (index!37045 lt!363044)))))

(declare-fun d!103947 () Bool)

(declare-fun lt!363046 () SeekEntryResult!8669)

(assert (=> d!103947 (and (or (is-Undefined!8669 lt!363046) (not (is-Found!8669 lt!363046)) (and (bvsge (index!37044 lt!363046) #b00000000000000000000000000000000) (bvslt (index!37044 lt!363046) (size!21492 lt!362965)))) (or (is-Undefined!8669 lt!363046) (is-Found!8669 lt!363046) (not (is-MissingZero!8669 lt!363046)) (and (bvsge (index!37043 lt!363046) #b00000000000000000000000000000000) (bvslt (index!37043 lt!363046) (size!21492 lt!362965)))) (or (is-Undefined!8669 lt!363046) (is-Found!8669 lt!363046) (is-MissingZero!8669 lt!363046) (not (is-MissingVacant!8669 lt!363046)) (and (bvsge (index!37046 lt!363046) #b00000000000000000000000000000000) (bvslt (index!37046 lt!363046) (size!21492 lt!362965)))) (or (is-Undefined!8669 lt!363046) (ite (is-Found!8669 lt!363046) (= (select (arr!21071 lt!362965) (index!37044 lt!363046)) lt!362971) (ite (is-MissingZero!8669 lt!363046) (= (select (arr!21071 lt!362965) (index!37043 lt!363046)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8669 lt!363046) (= (select (arr!21071 lt!362965) (index!37046 lt!363046)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!448405 () SeekEntryResult!8669)

(assert (=> d!103947 (= lt!363046 e!448405)))

(declare-fun c!88644 () Bool)

(assert (=> d!103947 (= c!88644 (and (is-Intermediate!8669 lt!363044) (undefined!9481 lt!363044)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44004 (_ BitVec 32)) SeekEntryResult!8669)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103947 (= lt!363044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362971 mask!3266) lt!362971 lt!362965 mask!3266))))

(assert (=> d!103947 (validMask!0 mask!3266)))

(assert (=> d!103947 (= (seekEntryOrOpen!0 lt!362971 lt!362965 mask!3266) lt!363046)))

(declare-fun b!810040 () Bool)

(assert (=> b!810040 (= e!448405 Undefined!8669)))

(declare-fun b!810041 () Bool)

(assert (=> b!810041 (= e!448405 e!448404)))

(declare-fun lt!363045 () (_ BitVec 64))

(assert (=> b!810041 (= lt!363045 (select (arr!21071 lt!362965) (index!37045 lt!363044)))))

(declare-fun c!88643 () Bool)

(assert (=> b!810041 (= c!88643 (= lt!363045 lt!362971))))

(declare-fun b!810042 () Bool)

(declare-fun c!88642 () Bool)

(assert (=> b!810042 (= c!88642 (= lt!363045 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810042 (= e!448404 e!448403)))

(assert (= (and d!103947 c!88644) b!810040))

(assert (= (and d!103947 (not c!88644)) b!810041))

(assert (= (and b!810041 c!88643) b!810038))

(assert (= (and b!810041 (not c!88643)) b!810042))

(assert (= (and b!810042 c!88642) b!810039))

(assert (= (and b!810042 (not c!88642)) b!810037))

(declare-fun m!752313 () Bool)

(assert (=> b!810037 m!752313))

(declare-fun m!752315 () Bool)

(assert (=> d!103947 m!752315))

(declare-fun m!752317 () Bool)

(assert (=> d!103947 m!752317))

(assert (=> d!103947 m!752315))

(declare-fun m!752319 () Bool)

(assert (=> d!103947 m!752319))

(declare-fun m!752321 () Bool)

(assert (=> d!103947 m!752321))

(assert (=> d!103947 m!752159))

(declare-fun m!752323 () Bool)

(assert (=> d!103947 m!752323))

(declare-fun m!752325 () Bool)

(assert (=> b!810041 m!752325))

(assert (=> b!809854 d!103947))

(declare-fun b!810043 () Bool)

(declare-fun e!448406 () SeekEntryResult!8669)

(assert (=> b!810043 (= e!448406 (MissingVacant!8669 vacantBefore!23))))

(declare-fun lt!363047 () SeekEntryResult!8669)

(declare-fun d!103959 () Bool)

(assert (=> d!103959 (and (or (is-Undefined!8669 lt!363047) (not (is-Found!8669 lt!363047)) (and (bvsge (index!37044 lt!363047) #b00000000000000000000000000000000) (bvslt (index!37044 lt!363047) (size!21492 a!3170)))) (or (is-Undefined!8669 lt!363047) (is-Found!8669 lt!363047) (not (is-MissingVacant!8669 lt!363047)) (not (= (index!37046 lt!363047) vacantBefore!23)) (and (bvsge (index!37046 lt!363047) #b00000000000000000000000000000000) (bvslt (index!37046 lt!363047) (size!21492 a!3170)))) (or (is-Undefined!8669 lt!363047) (ite (is-Found!8669 lt!363047) (= (select (arr!21071 a!3170) (index!37044 lt!363047)) (select (arr!21071 a!3170) j!153)) (and (is-MissingVacant!8669 lt!363047) (= (index!37046 lt!363047) vacantBefore!23) (= (select (arr!21071 a!3170) (index!37046 lt!363047)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!448407 () SeekEntryResult!8669)

(assert (=> d!103959 (= lt!363047 e!448407)))

(declare-fun c!88645 () Bool)

(assert (=> d!103959 (= c!88645 (bvsge x!1077 #b01111111111111111111111111111110))))

(declare-fun lt!363048 () (_ BitVec 64))

(assert (=> d!103959 (= lt!363048 (select (arr!21071 a!3170) index!1236))))

(assert (=> d!103959 (validMask!0 mask!3266)))

(assert (=> d!103959 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21071 a!3170) j!153) a!3170 mask!3266) lt!363047)))

(declare-fun b!810044 () Bool)

(declare-fun e!448408 () SeekEntryResult!8669)

(assert (=> b!810044 (= e!448408 (Found!8669 index!1236))))

(declare-fun b!810045 () Bool)

(assert (=> b!810045 (= e!448407 Undefined!8669)))

(declare-fun b!810046 () Bool)

(declare-fun c!88647 () Bool)

(assert (=> b!810046 (= c!88647 (= lt!363048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810046 (= e!448408 e!448406)))

(declare-fun b!810047 () Bool)

(assert (=> b!810047 (= e!448407 e!448408)))

(declare-fun c!88646 () Bool)

(assert (=> b!810047 (= c!88646 (= lt!363048 (select (arr!21071 a!3170) j!153)))))

(declare-fun b!810048 () Bool)

(assert (=> b!810048 (= e!448406 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103959 c!88645) b!810045))

(assert (= (and d!103959 (not c!88645)) b!810047))

(assert (= (and b!810047 c!88646) b!810044))

(assert (= (and b!810047 (not c!88646)) b!810046))

(assert (= (and b!810046 c!88647) b!810043))

(assert (= (and b!810046 (not c!88647)) b!810048))

(declare-fun m!752327 () Bool)

(assert (=> d!103959 m!752327))

(declare-fun m!752329 () Bool)

(assert (=> d!103959 m!752329))

(assert (=> d!103959 m!752149))

(assert (=> d!103959 m!752159))

(assert (=> b!810048 m!752181))

(assert (=> b!810048 m!752181))

(assert (=> b!810048 m!752151))

(declare-fun m!752331 () Bool)

(assert (=> b!810048 m!752331))

(assert (=> b!809853 d!103959))

(declare-fun lt!363049 () SeekEntryResult!8669)

(declare-fun e!448409 () SeekEntryResult!8669)

(declare-fun b!810049 () Bool)

(assert (=> b!810049 (= e!448409 (seekKeyOrZeroReturnVacant!0 (x!67876 lt!363049) (index!37045 lt!363049) (index!37045 lt!363049) (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810050 () Bool)

(declare-fun e!448410 () SeekEntryResult!8669)

(assert (=> b!810050 (= e!448410 (Found!8669 (index!37045 lt!363049)))))

(declare-fun b!810051 () Bool)

(assert (=> b!810051 (= e!448409 (MissingZero!8669 (index!37045 lt!363049)))))

(declare-fun d!103961 () Bool)

(declare-fun lt!363051 () SeekEntryResult!8669)

(assert (=> d!103961 (and (or (is-Undefined!8669 lt!363051) (not (is-Found!8669 lt!363051)) (and (bvsge (index!37044 lt!363051) #b00000000000000000000000000000000) (bvslt (index!37044 lt!363051) (size!21492 a!3170)))) (or (is-Undefined!8669 lt!363051) (is-Found!8669 lt!363051) (not (is-MissingZero!8669 lt!363051)) (and (bvsge (index!37043 lt!363051) #b00000000000000000000000000000000) (bvslt (index!37043 lt!363051) (size!21492 a!3170)))) (or (is-Undefined!8669 lt!363051) (is-Found!8669 lt!363051) (is-MissingZero!8669 lt!363051) (not (is-MissingVacant!8669 lt!363051)) (and (bvsge (index!37046 lt!363051) #b00000000000000000000000000000000) (bvslt (index!37046 lt!363051) (size!21492 a!3170)))) (or (is-Undefined!8669 lt!363051) (ite (is-Found!8669 lt!363051) (= (select (arr!21071 a!3170) (index!37044 lt!363051)) (select (arr!21071 a!3170) j!153)) (ite (is-MissingZero!8669 lt!363051) (= (select (arr!21071 a!3170) (index!37043 lt!363051)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8669 lt!363051) (= (select (arr!21071 a!3170) (index!37046 lt!363051)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!448411 () SeekEntryResult!8669)

(assert (=> d!103961 (= lt!363051 e!448411)))

(declare-fun c!88650 () Bool)

(assert (=> d!103961 (= c!88650 (and (is-Intermediate!8669 lt!363049) (undefined!9481 lt!363049)))))

(assert (=> d!103961 (= lt!363049 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21071 a!3170) j!153) mask!3266) (select (arr!21071 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103961 (validMask!0 mask!3266)))

(assert (=> d!103961 (= (seekEntryOrOpen!0 (select (arr!21071 a!3170) j!153) a!3170 mask!3266) lt!363051)))

(declare-fun b!810052 () Bool)

(assert (=> b!810052 (= e!448411 Undefined!8669)))

(declare-fun b!810053 () Bool)

(assert (=> b!810053 (= e!448411 e!448410)))

(declare-fun lt!363050 () (_ BitVec 64))

(assert (=> b!810053 (= lt!363050 (select (arr!21071 a!3170) (index!37045 lt!363049)))))

(declare-fun c!88649 () Bool)

(assert (=> b!810053 (= c!88649 (= lt!363050 (select (arr!21071 a!3170) j!153)))))

(declare-fun b!810054 () Bool)

(declare-fun c!88648 () Bool)

(assert (=> b!810054 (= c!88648 (= lt!363050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!810054 (= e!448410 e!448409)))

(assert (= (and d!103961 c!88650) b!810052))

(assert (= (and d!103961 (not c!88650)) b!810053))

(assert (= (and b!810053 c!88649) b!810050))

(assert (= (and b!810053 (not c!88649)) b!810054))

(assert (= (and b!810054 c!88648) b!810051))

(assert (= (and b!810054 (not c!88648)) b!810049))

(assert (=> b!810049 m!752151))

