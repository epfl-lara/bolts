; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87238 () Bool)

(assert start!87238)

(declare-fun b!1010953 () Bool)

(declare-fun res!679241 () Bool)

(declare-fun e!568770 () Bool)

(assert (=> b!1010953 (=> (not res!679241) (not e!568770))))

(declare-datatypes ((array!63643 0))(
  ( (array!63644 (arr!30634 (Array (_ BitVec 32) (_ BitVec 64))) (size!31137 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63643)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63643 (_ BitVec 32)) Bool)

(assert (=> b!1010953 (= res!679241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010954 () Bool)

(declare-fun res!679247 () Bool)

(declare-fun e!568771 () Bool)

(assert (=> b!1010954 (=> (not res!679247) (not e!568771))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9566 0))(
  ( (MissingZero!9566 (index!40634 (_ BitVec 32))) (Found!9566 (index!40635 (_ BitVec 32))) (Intermediate!9566 (undefined!10378 Bool) (index!40636 (_ BitVec 32)) (x!88078 (_ BitVec 32))) (Undefined!9566) (MissingVacant!9566 (index!40637 (_ BitVec 32))) )
))
(declare-fun lt!446823 () SeekEntryResult!9566)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!446825 () (_ BitVec 64))

(declare-fun lt!446822 () array!63643)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63643 (_ BitVec 32)) SeekEntryResult!9566)

(assert (=> b!1010954 (= res!679247 (not (= lt!446823 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446825 lt!446822 mask!3464))))))

(declare-fun b!1010955 () Bool)

(declare-fun e!568769 () Bool)

(assert (=> b!1010955 (= e!568771 e!568769)))

(declare-fun res!679236 () Bool)

(assert (=> b!1010955 (=> (not res!679236) (not e!568769))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun lt!446821 () (_ BitVec 32))

(assert (=> b!1010955 (= res!679236 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446821 #b00000000000000000000000000000000) (bvslt lt!446821 (size!31137 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010955 (= lt!446821 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010956 () Bool)

(declare-fun res!679245 () Bool)

(declare-fun e!568772 () Bool)

(assert (=> b!1010956 (=> (not res!679245) (not e!568772))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010956 (= res!679245 (validKeyInArray!0 k!2224))))

(declare-fun b!1010957 () Bool)

(declare-fun e!568775 () Bool)

(assert (=> b!1010957 (= e!568770 e!568775)))

(declare-fun res!679239 () Bool)

(assert (=> b!1010957 (=> (not res!679239) (not e!568775))))

(declare-fun lt!446824 () SeekEntryResult!9566)

(declare-fun lt!446826 () SeekEntryResult!9566)

(assert (=> b!1010957 (= res!679239 (= lt!446824 lt!446826))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1010957 (= lt!446826 (Intermediate!9566 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010957 (= lt!446824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!679238 () Bool)

(assert (=> start!87238 (=> (not res!679238) (not e!568772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87238 (= res!679238 (validMask!0 mask!3464))))

(assert (=> start!87238 e!568772))

(declare-fun array_inv!23624 (array!63643) Bool)

(assert (=> start!87238 (array_inv!23624 a!3219)))

(assert (=> start!87238 true))

(declare-fun b!1010958 () Bool)

(declare-fun res!679246 () Bool)

(assert (=> b!1010958 (=> (not res!679246) (not e!568771))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010958 (= res!679246 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun e!568773 () Bool)

(declare-fun b!1010959 () Bool)

(declare-fun lt!446820 () SeekEntryResult!9566)

(assert (=> b!1010959 (= e!568773 (= lt!446820 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446821 lt!446825 lt!446822 mask!3464)))))

(declare-fun b!1010960 () Bool)

(declare-fun e!568774 () Bool)

(assert (=> b!1010960 (= e!568775 e!568774)))

(declare-fun res!679249 () Bool)

(assert (=> b!1010960 (=> (not res!679249) (not e!568774))))

(assert (=> b!1010960 (= res!679249 (= lt!446823 lt!446826))))

(assert (=> b!1010960 (= lt!446823 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010961 () Bool)

(declare-fun res!679237 () Bool)

(assert (=> b!1010961 (=> (not res!679237) (not e!568772))))

(declare-fun arrayContainsKey!0 (array!63643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010961 (= res!679237 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010962 () Bool)

(declare-fun res!679248 () Bool)

(assert (=> b!1010962 (=> (not res!679248) (not e!568770))))

(assert (=> b!1010962 (= res!679248 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31137 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31137 a!3219))))))

(declare-fun b!1010963 () Bool)

(assert (=> b!1010963 (= e!568772 e!568770)))

(declare-fun res!679234 () Bool)

(assert (=> b!1010963 (=> (not res!679234) (not e!568770))))

(declare-fun lt!446819 () SeekEntryResult!9566)

(assert (=> b!1010963 (= res!679234 (or (= lt!446819 (MissingVacant!9566 i!1194)) (= lt!446819 (MissingZero!9566 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63643 (_ BitVec 32)) SeekEntryResult!9566)

(assert (=> b!1010963 (= lt!446819 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010964 () Bool)

(assert (=> b!1010964 (= e!568774 e!568771)))

(declare-fun res!679244 () Bool)

(assert (=> b!1010964 (=> (not res!679244) (not e!568771))))

(assert (=> b!1010964 (= res!679244 (not (= lt!446824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446825 mask!3464) lt!446825 lt!446822 mask!3464))))))

(assert (=> b!1010964 (= lt!446825 (select (store (arr!30634 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010964 (= lt!446822 (array!63644 (store (arr!30634 a!3219) i!1194 k!2224) (size!31137 a!3219)))))

(declare-fun b!1010965 () Bool)

(declare-fun res!679242 () Bool)

(assert (=> b!1010965 (=> (not res!679242) (not e!568772))))

(assert (=> b!1010965 (= res!679242 (validKeyInArray!0 (select (arr!30634 a!3219) j!170)))))

(declare-fun b!1010966 () Bool)

(assert (=> b!1010966 (= e!568769 e!568773)))

(declare-fun res!679240 () Bool)

(assert (=> b!1010966 (=> (not res!679240) (not e!568773))))

(assert (=> b!1010966 (= res!679240 (= lt!446820 lt!446826))))

(assert (=> b!1010966 (= lt!446820 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446821 (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010967 () Bool)

(declare-fun res!679243 () Bool)

(assert (=> b!1010967 (=> (not res!679243) (not e!568770))))

(declare-datatypes ((List!21436 0))(
  ( (Nil!21433) (Cons!21432 (h!22627 (_ BitVec 64)) (t!30445 List!21436)) )
))
(declare-fun arrayNoDuplicates!0 (array!63643 (_ BitVec 32) List!21436) Bool)

(assert (=> b!1010967 (= res!679243 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21433))))

(declare-fun b!1010968 () Bool)

(declare-fun res!679235 () Bool)

(assert (=> b!1010968 (=> (not res!679235) (not e!568772))))

(assert (=> b!1010968 (= res!679235 (and (= (size!31137 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31137 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31137 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!87238 res!679238) b!1010968))

(assert (= (and b!1010968 res!679235) b!1010965))

(assert (= (and b!1010965 res!679242) b!1010956))

(assert (= (and b!1010956 res!679245) b!1010961))

(assert (= (and b!1010961 res!679237) b!1010963))

(assert (= (and b!1010963 res!679234) b!1010953))

(assert (= (and b!1010953 res!679241) b!1010967))

(assert (= (and b!1010967 res!679243) b!1010962))

(assert (= (and b!1010962 res!679248) b!1010957))

(assert (= (and b!1010957 res!679239) b!1010960))

(assert (= (and b!1010960 res!679249) b!1010964))

(assert (= (and b!1010964 res!679244) b!1010954))

(assert (= (and b!1010954 res!679247) b!1010958))

(assert (= (and b!1010958 res!679246) b!1010955))

(assert (= (and b!1010955 res!679236) b!1010966))

(assert (= (and b!1010966 res!679240) b!1010959))

(declare-fun m!935229 () Bool)

(assert (=> b!1010961 m!935229))

(declare-fun m!935231 () Bool)

(assert (=> b!1010956 m!935231))

(declare-fun m!935233 () Bool)

(assert (=> b!1010966 m!935233))

(assert (=> b!1010966 m!935233))

(declare-fun m!935235 () Bool)

(assert (=> b!1010966 m!935235))

(assert (=> b!1010957 m!935233))

(assert (=> b!1010957 m!935233))

(declare-fun m!935237 () Bool)

(assert (=> b!1010957 m!935237))

(assert (=> b!1010957 m!935237))

(assert (=> b!1010957 m!935233))

(declare-fun m!935239 () Bool)

(assert (=> b!1010957 m!935239))

(declare-fun m!935241 () Bool)

(assert (=> b!1010963 m!935241))

(declare-fun m!935243 () Bool)

(assert (=> b!1010953 m!935243))

(declare-fun m!935245 () Bool)

(assert (=> b!1010954 m!935245))

(declare-fun m!935247 () Bool)

(assert (=> start!87238 m!935247))

(declare-fun m!935249 () Bool)

(assert (=> start!87238 m!935249))

(assert (=> b!1010965 m!935233))

(assert (=> b!1010965 m!935233))

(declare-fun m!935251 () Bool)

(assert (=> b!1010965 m!935251))

(declare-fun m!935253 () Bool)

(assert (=> b!1010967 m!935253))

(declare-fun m!935255 () Bool)

(assert (=> b!1010955 m!935255))

(assert (=> b!1010960 m!935233))

(assert (=> b!1010960 m!935233))

(declare-fun m!935257 () Bool)

(assert (=> b!1010960 m!935257))

(declare-fun m!935259 () Bool)

(assert (=> b!1010959 m!935259))

(declare-fun m!935261 () Bool)

(assert (=> b!1010964 m!935261))

(assert (=> b!1010964 m!935261))

(declare-fun m!935263 () Bool)

(assert (=> b!1010964 m!935263))

(declare-fun m!935265 () Bool)

(assert (=> b!1010964 m!935265))

(declare-fun m!935267 () Bool)

(assert (=> b!1010964 m!935267))

(push 1)

(assert (not b!1010964))

(assert (not b!1010954))

(assert (not b!1010965))

(assert (not b!1010960))

(assert (not b!1010966))

(assert (not start!87238))

(assert (not b!1010961))

(assert (not b!1010957))

(assert (not b!1010956))

(assert (not b!1010963))

(assert (not b!1010955))

(assert (not b!1010967))

(assert (not b!1010953))

(assert (not b!1010959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1011203 () Bool)

(declare-fun e!568913 () Bool)

(declare-fun lt!446918 () SeekEntryResult!9566)

(assert (=> b!1011203 (= e!568913 (bvsge (x!88078 lt!446918) #b01111111111111111111111111111110))))

(declare-fun b!1011204 () Bool)

(assert (=> b!1011204 (and (bvsge (index!40636 lt!446918) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446918) (size!31137 lt!446822)))))

(declare-fun res!679409 () Bool)

(assert (=> b!1011204 (= res!679409 (= (select (arr!30634 lt!446822) (index!40636 lt!446918)) lt!446825))))

(declare-fun e!568914 () Bool)

(assert (=> b!1011204 (=> res!679409 e!568914)))

(declare-fun e!568917 () Bool)

(assert (=> b!1011204 (= e!568917 e!568914)))

(declare-fun b!1011205 () Bool)

(assert (=> b!1011205 (= e!568913 e!568917)))

(declare-fun res!679408 () Bool)

(assert (=> b!1011205 (= res!679408 (and (is-Intermediate!9566 lt!446918) (not (undefined!10378 lt!446918)) (bvslt (x!88078 lt!446918) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446918) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446918) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011205 (=> (not res!679408) (not e!568917))))

(declare-fun b!1011206 () Bool)

(declare-fun e!568915 () SeekEntryResult!9566)

(assert (=> b!1011206 (= e!568915 (Intermediate!9566 true lt!446821 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011207 () Bool)

(declare-fun e!568916 () SeekEntryResult!9566)

(assert (=> b!1011207 (= e!568916 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446821 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) lt!446825 lt!446822 mask!3464))))

(declare-fun b!1011208 () Bool)

(assert (=> b!1011208 (= e!568915 e!568916)))

(declare-fun c!102062 () Bool)

(declare-fun lt!446919 () (_ BitVec 64))

(assert (=> b!1011208 (= c!102062 (or (= lt!446919 lt!446825) (= (bvadd lt!446919 lt!446919) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120075 () Bool)

(assert (=> d!120075 e!568913))

(declare-fun c!102061 () Bool)

(assert (=> d!120075 (= c!102061 (and (is-Intermediate!9566 lt!446918) (undefined!10378 lt!446918)))))

(assert (=> d!120075 (= lt!446918 e!568915)))

(declare-fun c!102063 () Bool)

(assert (=> d!120075 (= c!102063 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!120075 (= lt!446919 (select (arr!30634 lt!446822) lt!446821))))

(assert (=> d!120075 (validMask!0 mask!3464)))

(assert (=> d!120075 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446821 lt!446825 lt!446822 mask!3464) lt!446918)))

(declare-fun b!1011209 () Bool)

(assert (=> b!1011209 (and (bvsge (index!40636 lt!446918) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446918) (size!31137 lt!446822)))))

(declare-fun res!679407 () Bool)

(assert (=> b!1011209 (= res!679407 (= (select (arr!30634 lt!446822) (index!40636 lt!446918)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011209 (=> res!679407 e!568914)))

(declare-fun b!1011210 () Bool)

(assert (=> b!1011210 (and (bvsge (index!40636 lt!446918) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446918) (size!31137 lt!446822)))))

(assert (=> b!1011210 (= e!568914 (= (select (arr!30634 lt!446822) (index!40636 lt!446918)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011211 () Bool)

(assert (=> b!1011211 (= e!568916 (Intermediate!9566 false lt!446821 (bvadd #b00000000000000000000000000000001 x!1245)))))

(assert (= (and d!120075 c!102063) b!1011206))

(assert (= (and d!120075 (not c!102063)) b!1011208))

(assert (= (and b!1011208 c!102062) b!1011211))

(assert (= (and b!1011208 (not c!102062)) b!1011207))

(assert (= (and d!120075 c!102061) b!1011203))

(assert (= (and d!120075 (not c!102061)) b!1011205))

(assert (= (and b!1011205 res!679408) b!1011204))

(assert (= (and b!1011204 (not res!679409)) b!1011209))

(assert (= (and b!1011209 (not res!679407)) b!1011210))

(declare-fun m!935421 () Bool)

(assert (=> b!1011207 m!935421))

(assert (=> b!1011207 m!935421))

(declare-fun m!935423 () Bool)

(assert (=> b!1011207 m!935423))

(declare-fun m!935425 () Bool)

(assert (=> b!1011204 m!935425))

(declare-fun m!935427 () Bool)

(assert (=> d!120075 m!935427))

(assert (=> d!120075 m!935247))

(assert (=> b!1011210 m!935425))

(assert (=> b!1011209 m!935425))

(assert (=> b!1010959 d!120075))

(declare-fun b!1011212 () Bool)

(declare-fun e!568918 () Bool)

(declare-fun lt!446920 () SeekEntryResult!9566)

(assert (=> b!1011212 (= e!568918 (bvsge (x!88078 lt!446920) #b01111111111111111111111111111110))))

(declare-fun b!1011213 () Bool)

(assert (=> b!1011213 (and (bvsge (index!40636 lt!446920) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446920) (size!31137 a!3219)))))

(declare-fun res!679412 () Bool)

(assert (=> b!1011213 (= res!679412 (= (select (arr!30634 a!3219) (index!40636 lt!446920)) (select (arr!30634 a!3219) j!170)))))

(declare-fun e!568919 () Bool)

(assert (=> b!1011213 (=> res!679412 e!568919)))

(declare-fun e!568922 () Bool)

(assert (=> b!1011213 (= e!568922 e!568919)))

(declare-fun b!1011214 () Bool)

(assert (=> b!1011214 (= e!568918 e!568922)))

(declare-fun res!679411 () Bool)

(assert (=> b!1011214 (= res!679411 (and (is-Intermediate!9566 lt!446920) (not (undefined!10378 lt!446920)) (bvslt (x!88078 lt!446920) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446920) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446920) x!1245)))))

(assert (=> b!1011214 (=> (not res!679411) (not e!568922))))

(declare-fun b!1011215 () Bool)

(declare-fun e!568920 () SeekEntryResult!9566)

(assert (=> b!1011215 (= e!568920 (Intermediate!9566 true index!1507 x!1245))))

(declare-fun e!568921 () SeekEntryResult!9566)

(declare-fun b!1011216 () Bool)

(assert (=> b!1011216 (= e!568921 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011217 () Bool)

(assert (=> b!1011217 (= e!568920 e!568921)))

(declare-fun c!102065 () Bool)

(declare-fun lt!446921 () (_ BitVec 64))

(assert (=> b!1011217 (= c!102065 (or (= lt!446921 (select (arr!30634 a!3219) j!170)) (= (bvadd lt!446921 lt!446921) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120099 () Bool)

(assert (=> d!120099 e!568918))

(declare-fun c!102064 () Bool)

(assert (=> d!120099 (= c!102064 (and (is-Intermediate!9566 lt!446920) (undefined!10378 lt!446920)))))

(assert (=> d!120099 (= lt!446920 e!568920)))

(declare-fun c!102066 () Bool)

(assert (=> d!120099 (= c!102066 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120099 (= lt!446921 (select (arr!30634 a!3219) index!1507))))

(assert (=> d!120099 (validMask!0 mask!3464)))

(assert (=> d!120099 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30634 a!3219) j!170) a!3219 mask!3464) lt!446920)))

(declare-fun b!1011218 () Bool)

(assert (=> b!1011218 (and (bvsge (index!40636 lt!446920) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446920) (size!31137 a!3219)))))

(declare-fun res!679410 () Bool)

(assert (=> b!1011218 (= res!679410 (= (select (arr!30634 a!3219) (index!40636 lt!446920)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011218 (=> res!679410 e!568919)))

(declare-fun b!1011219 () Bool)

(assert (=> b!1011219 (and (bvsge (index!40636 lt!446920) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446920) (size!31137 a!3219)))))

(assert (=> b!1011219 (= e!568919 (= (select (arr!30634 a!3219) (index!40636 lt!446920)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011220 () Bool)

(assert (=> b!1011220 (= e!568921 (Intermediate!9566 false index!1507 x!1245))))

(assert (= (and d!120099 c!102066) b!1011215))

(assert (= (and d!120099 (not c!102066)) b!1011217))

(assert (= (and b!1011217 c!102065) b!1011220))

(assert (= (and b!1011217 (not c!102065)) b!1011216))

(assert (= (and d!120099 c!102064) b!1011212))

(assert (= (and d!120099 (not c!102064)) b!1011214))

(assert (= (and b!1011214 res!679411) b!1011213))

(assert (= (and b!1011213 (not res!679412)) b!1011218))

(assert (= (and b!1011218 (not res!679410)) b!1011219))

(assert (=> b!1011216 m!935255))

(assert (=> b!1011216 m!935255))

(assert (=> b!1011216 m!935233))

(declare-fun m!935429 () Bool)

(assert (=> b!1011216 m!935429))

(declare-fun m!935431 () Bool)

(assert (=> b!1011213 m!935431))

(declare-fun m!935433 () Bool)

(assert (=> d!120099 m!935433))

(assert (=> d!120099 m!935247))

(assert (=> b!1011219 m!935431))

(assert (=> b!1011218 m!935431))

(assert (=> b!1010960 d!120099))

(declare-fun d!120101 () Bool)

(declare-fun res!679417 () Bool)

(declare-fun e!568931 () Bool)

(assert (=> d!120101 (=> res!679417 e!568931)))

(assert (=> d!120101 (= res!679417 (= (select (arr!30634 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!120101 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568931)))

(declare-fun b!1011233 () Bool)

(declare-fun e!568932 () Bool)

(assert (=> b!1011233 (= e!568931 e!568932)))

(declare-fun res!679418 () Bool)

(assert (=> b!1011233 (=> (not res!679418) (not e!568932))))

(assert (=> b!1011233 (= res!679418 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31137 a!3219)))))

(declare-fun b!1011234 () Bool)

(assert (=> b!1011234 (= e!568932 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!120101 (not res!679417)) b!1011233))

(assert (= (and b!1011233 res!679418) b!1011234))

(declare-fun m!935435 () Bool)

(assert (=> d!120101 m!935435))

(declare-fun m!935437 () Bool)

(assert (=> b!1011234 m!935437))

(assert (=> b!1010961 d!120101))

(declare-fun b!1011290 () Bool)

(declare-fun e!568965 () SeekEntryResult!9566)

(declare-fun lt!446945 () SeekEntryResult!9566)

(assert (=> b!1011290 (= e!568965 (Found!9566 (index!40636 lt!446945)))))

(declare-fun d!120103 () Bool)

(declare-fun lt!446944 () SeekEntryResult!9566)

(assert (=> d!120103 (and (or (is-Undefined!9566 lt!446944) (not (is-Found!9566 lt!446944)) (and (bvsge (index!40635 lt!446944) #b00000000000000000000000000000000) (bvslt (index!40635 lt!446944) (size!31137 a!3219)))) (or (is-Undefined!9566 lt!446944) (is-Found!9566 lt!446944) (not (is-MissingZero!9566 lt!446944)) (and (bvsge (index!40634 lt!446944) #b00000000000000000000000000000000) (bvslt (index!40634 lt!446944) (size!31137 a!3219)))) (or (is-Undefined!9566 lt!446944) (is-Found!9566 lt!446944) (is-MissingZero!9566 lt!446944) (not (is-MissingVacant!9566 lt!446944)) (and (bvsge (index!40637 lt!446944) #b00000000000000000000000000000000) (bvslt (index!40637 lt!446944) (size!31137 a!3219)))) (or (is-Undefined!9566 lt!446944) (ite (is-Found!9566 lt!446944) (= (select (arr!30634 a!3219) (index!40635 lt!446944)) k!2224) (ite (is-MissingZero!9566 lt!446944) (= (select (arr!30634 a!3219) (index!40634 lt!446944)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9566 lt!446944) (= (select (arr!30634 a!3219) (index!40637 lt!446944)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!568966 () SeekEntryResult!9566)

(assert (=> d!120103 (= lt!446944 e!568966)))

(declare-fun c!102093 () Bool)

(assert (=> d!120103 (= c!102093 (and (is-Intermediate!9566 lt!446945) (undefined!10378 lt!446945)))))

(assert (=> d!120103 (= lt!446945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!120103 (validMask!0 mask!3464)))

(assert (=> d!120103 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!446944)))

(declare-fun b!1011291 () Bool)

(declare-fun c!102092 () Bool)

(declare-fun lt!446943 () (_ BitVec 64))

(assert (=> b!1011291 (= c!102092 (= lt!446943 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568967 () SeekEntryResult!9566)

(assert (=> b!1011291 (= e!568965 e!568967)))

(declare-fun b!1011292 () Bool)

(assert (=> b!1011292 (= e!568966 Undefined!9566)))

(declare-fun b!1011293 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63643 (_ BitVec 32)) SeekEntryResult!9566)

(assert (=> b!1011293 (= e!568967 (seekKeyOrZeroReturnVacant!0 (x!88078 lt!446945) (index!40636 lt!446945) (index!40636 lt!446945) k!2224 a!3219 mask!3464))))

(declare-fun b!1011294 () Bool)

(assert (=> b!1011294 (= e!568967 (MissingZero!9566 (index!40636 lt!446945)))))

(declare-fun b!1011295 () Bool)

(assert (=> b!1011295 (= e!568966 e!568965)))

(assert (=> b!1011295 (= lt!446943 (select (arr!30634 a!3219) (index!40636 lt!446945)))))

(declare-fun c!102091 () Bool)

(assert (=> b!1011295 (= c!102091 (= lt!446943 k!2224))))

(assert (= (and d!120103 c!102093) b!1011292))

(assert (= (and d!120103 (not c!102093)) b!1011295))

(assert (= (and b!1011295 c!102091) b!1011290))

(assert (= (and b!1011295 (not c!102091)) b!1011291))

(assert (= (and b!1011291 c!102092) b!1011294))

(assert (= (and b!1011291 (not c!102092)) b!1011293))

(declare-fun m!935461 () Bool)

(assert (=> d!120103 m!935461))

(declare-fun m!935463 () Bool)

(assert (=> d!120103 m!935463))

(declare-fun m!935465 () Bool)

(assert (=> d!120103 m!935465))

(declare-fun m!935467 () Bool)

(assert (=> d!120103 m!935467))

(declare-fun m!935469 () Bool)

(assert (=> d!120103 m!935469))

(assert (=> d!120103 m!935463))

(assert (=> d!120103 m!935247))

(declare-fun m!935471 () Bool)

(assert (=> b!1011293 m!935471))

(declare-fun m!935473 () Bool)

(assert (=> b!1011295 m!935473))

(assert (=> b!1010963 d!120103))

(declare-fun d!120115 () Bool)

(assert (=> d!120115 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87238 d!120115))

(declare-fun d!120119 () Bool)

(assert (=> d!120119 (= (array_inv!23624 a!3219) (bvsge (size!31137 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87238 d!120119))

(declare-fun b!1011296 () Bool)

(declare-fun e!568968 () Bool)

(declare-fun lt!446946 () SeekEntryResult!9566)

(assert (=> b!1011296 (= e!568968 (bvsge (x!88078 lt!446946) #b01111111111111111111111111111110))))

(declare-fun b!1011297 () Bool)

(assert (=> b!1011297 (and (bvsge (index!40636 lt!446946) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446946) (size!31137 lt!446822)))))

(declare-fun res!679436 () Bool)

(assert (=> b!1011297 (= res!679436 (= (select (arr!30634 lt!446822) (index!40636 lt!446946)) lt!446825))))

(declare-fun e!568969 () Bool)

(assert (=> b!1011297 (=> res!679436 e!568969)))

(declare-fun e!568972 () Bool)

(assert (=> b!1011297 (= e!568972 e!568969)))

(declare-fun b!1011298 () Bool)

(assert (=> b!1011298 (= e!568968 e!568972)))

(declare-fun res!679435 () Bool)

(assert (=> b!1011298 (= res!679435 (and (is-Intermediate!9566 lt!446946) (not (undefined!10378 lt!446946)) (bvslt (x!88078 lt!446946) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446946) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446946) x!1245)))))

(assert (=> b!1011298 (=> (not res!679435) (not e!568972))))

(declare-fun b!1011299 () Bool)

(declare-fun e!568970 () SeekEntryResult!9566)

(assert (=> b!1011299 (= e!568970 (Intermediate!9566 true index!1507 x!1245))))

(declare-fun e!568971 () SeekEntryResult!9566)

(declare-fun b!1011300 () Bool)

(assert (=> b!1011300 (= e!568971 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446825 lt!446822 mask!3464))))

(declare-fun b!1011301 () Bool)

(assert (=> b!1011301 (= e!568970 e!568971)))

(declare-fun c!102095 () Bool)

(declare-fun lt!446947 () (_ BitVec 64))

(assert (=> b!1011301 (= c!102095 (or (= lt!446947 lt!446825) (= (bvadd lt!446947 lt!446947) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120121 () Bool)

(assert (=> d!120121 e!568968))

(declare-fun c!102094 () Bool)

(assert (=> d!120121 (= c!102094 (and (is-Intermediate!9566 lt!446946) (undefined!10378 lt!446946)))))

(assert (=> d!120121 (= lt!446946 e!568970)))

(declare-fun c!102096 () Bool)

(assert (=> d!120121 (= c!102096 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!120121 (= lt!446947 (select (arr!30634 lt!446822) index!1507))))

(assert (=> d!120121 (validMask!0 mask!3464)))

(assert (=> d!120121 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446825 lt!446822 mask!3464) lt!446946)))

(declare-fun b!1011302 () Bool)

(assert (=> b!1011302 (and (bvsge (index!40636 lt!446946) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446946) (size!31137 lt!446822)))))

(declare-fun res!679434 () Bool)

(assert (=> b!1011302 (= res!679434 (= (select (arr!30634 lt!446822) (index!40636 lt!446946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011302 (=> res!679434 e!568969)))

(declare-fun b!1011303 () Bool)

(assert (=> b!1011303 (and (bvsge (index!40636 lt!446946) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446946) (size!31137 lt!446822)))))

(assert (=> b!1011303 (= e!568969 (= (select (arr!30634 lt!446822) (index!40636 lt!446946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011304 () Bool)

(assert (=> b!1011304 (= e!568971 (Intermediate!9566 false index!1507 x!1245))))

(assert (= (and d!120121 c!102096) b!1011299))

(assert (= (and d!120121 (not c!102096)) b!1011301))

(assert (= (and b!1011301 c!102095) b!1011304))

(assert (= (and b!1011301 (not c!102095)) b!1011300))

(assert (= (and d!120121 c!102094) b!1011296))

(assert (= (and d!120121 (not c!102094)) b!1011298))

(assert (= (and b!1011298 res!679435) b!1011297))

(assert (= (and b!1011297 (not res!679436)) b!1011302))

(assert (= (and b!1011302 (not res!679434)) b!1011303))

(assert (=> b!1011300 m!935255))

(assert (=> b!1011300 m!935255))

(declare-fun m!935475 () Bool)

(assert (=> b!1011300 m!935475))

(declare-fun m!935477 () Bool)

(assert (=> b!1011297 m!935477))

(declare-fun m!935479 () Bool)

(assert (=> d!120121 m!935479))

(assert (=> d!120121 m!935247))

(assert (=> b!1011303 m!935477))

(assert (=> b!1011302 m!935477))

(assert (=> b!1010954 d!120121))

(declare-fun b!1011331 () Bool)

(declare-fun e!568988 () Bool)

(declare-fun e!568989 () Bool)

(assert (=> b!1011331 (= e!568988 e!568989)))

(declare-fun lt!446965 () (_ BitVec 64))

(assert (=> b!1011331 (= lt!446965 (select (arr!30634 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32980 0))(
  ( (Unit!32981) )
))
(declare-fun lt!446964 () Unit!32980)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63643 (_ BitVec 64) (_ BitVec 32)) Unit!32980)

(assert (=> b!1011331 (= lt!446964 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446965 #b00000000000000000000000000000000))))

(assert (=> b!1011331 (arrayContainsKey!0 a!3219 lt!446965 #b00000000000000000000000000000000)))

(declare-fun lt!446963 () Unit!32980)

(assert (=> b!1011331 (= lt!446963 lt!446964)))

(declare-fun res!679442 () Bool)

(assert (=> b!1011331 (= res!679442 (= (seekEntryOrOpen!0 (select (arr!30634 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9566 #b00000000000000000000000000000000)))))

(assert (=> b!1011331 (=> (not res!679442) (not e!568989))))

(declare-fun b!1011333 () Bool)

(declare-fun call!42439 () Bool)

(assert (=> b!1011333 (= e!568988 call!42439)))

(declare-fun b!1011332 () Bool)

(declare-fun e!568990 () Bool)

(assert (=> b!1011332 (= e!568990 e!568988)))

(declare-fun c!102108 () Bool)

(assert (=> b!1011332 (= c!102108 (validKeyInArray!0 (select (arr!30634 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!120123 () Bool)

(declare-fun res!679441 () Bool)

(assert (=> d!120123 (=> res!679441 e!568990)))

(assert (=> d!120123 (= res!679441 (bvsge #b00000000000000000000000000000000 (size!31137 a!3219)))))

(assert (=> d!120123 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568990)))

(declare-fun b!1011334 () Bool)

(assert (=> b!1011334 (= e!568989 call!42439)))

(declare-fun bm!42436 () Bool)

(assert (=> bm!42436 (= call!42439 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!120123 (not res!679441)) b!1011332))

(assert (= (and b!1011332 c!102108) b!1011331))

(assert (= (and b!1011332 (not c!102108)) b!1011333))

(assert (= (and b!1011331 res!679442) b!1011334))

(assert (= (or b!1011334 b!1011333) bm!42436))

(assert (=> b!1011331 m!935435))

(declare-fun m!935495 () Bool)

(assert (=> b!1011331 m!935495))

(declare-fun m!935497 () Bool)

(assert (=> b!1011331 m!935497))

(assert (=> b!1011331 m!935435))

(declare-fun m!935499 () Bool)

(assert (=> b!1011331 m!935499))

(assert (=> b!1011332 m!935435))

(assert (=> b!1011332 m!935435))

(declare-fun m!935501 () Bool)

(assert (=> b!1011332 m!935501))

(declare-fun m!935503 () Bool)

(assert (=> bm!42436 m!935503))

(assert (=> b!1010953 d!120123))

(declare-fun b!1011344 () Bool)

(declare-fun e!568996 () Bool)

(declare-fun lt!446968 () SeekEntryResult!9566)

(assert (=> b!1011344 (= e!568996 (bvsge (x!88078 lt!446968) #b01111111111111111111111111111110))))

(declare-fun b!1011345 () Bool)

(assert (=> b!1011345 (and (bvsge (index!40636 lt!446968) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446968) (size!31137 lt!446822)))))

(declare-fun res!679448 () Bool)

(assert (=> b!1011345 (= res!679448 (= (select (arr!30634 lt!446822) (index!40636 lt!446968)) lt!446825))))

(declare-fun e!568997 () Bool)

(assert (=> b!1011345 (=> res!679448 e!568997)))

(declare-fun e!569000 () Bool)

(assert (=> b!1011345 (= e!569000 e!568997)))

(declare-fun b!1011346 () Bool)

(assert (=> b!1011346 (= e!568996 e!569000)))

(declare-fun res!679447 () Bool)

(assert (=> b!1011346 (= res!679447 (and (is-Intermediate!9566 lt!446968) (not (undefined!10378 lt!446968)) (bvslt (x!88078 lt!446968) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446968) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446968) #b00000000000000000000000000000000)))))

(assert (=> b!1011346 (=> (not res!679447) (not e!569000))))

(declare-fun b!1011347 () Bool)

(declare-fun e!568998 () SeekEntryResult!9566)

(assert (=> b!1011347 (= e!568998 (Intermediate!9566 true (toIndex!0 lt!446825 mask!3464) #b00000000000000000000000000000000))))

(declare-fun e!568999 () SeekEntryResult!9566)

(declare-fun b!1011348 () Bool)

(assert (=> b!1011348 (= e!568999 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446825 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446825 lt!446822 mask!3464))))

(declare-fun b!1011349 () Bool)

(assert (=> b!1011349 (= e!568998 e!568999)))

(declare-fun c!102113 () Bool)

(declare-fun lt!446969 () (_ BitVec 64))

(assert (=> b!1011349 (= c!102113 (or (= lt!446969 lt!446825) (= (bvadd lt!446969 lt!446969) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120127 () Bool)

(assert (=> d!120127 e!568996))

(declare-fun c!102112 () Bool)

(assert (=> d!120127 (= c!102112 (and (is-Intermediate!9566 lt!446968) (undefined!10378 lt!446968)))))

(assert (=> d!120127 (= lt!446968 e!568998)))

(declare-fun c!102114 () Bool)

(assert (=> d!120127 (= c!102114 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120127 (= lt!446969 (select (arr!30634 lt!446822) (toIndex!0 lt!446825 mask!3464)))))

(assert (=> d!120127 (validMask!0 mask!3464)))

(assert (=> d!120127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446825 mask!3464) lt!446825 lt!446822 mask!3464) lt!446968)))

(declare-fun b!1011350 () Bool)

(assert (=> b!1011350 (and (bvsge (index!40636 lt!446968) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446968) (size!31137 lt!446822)))))

(declare-fun res!679446 () Bool)

(assert (=> b!1011350 (= res!679446 (= (select (arr!30634 lt!446822) (index!40636 lt!446968)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011350 (=> res!679446 e!568997)))

(declare-fun b!1011351 () Bool)

(assert (=> b!1011351 (and (bvsge (index!40636 lt!446968) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446968) (size!31137 lt!446822)))))

(assert (=> b!1011351 (= e!568997 (= (select (arr!30634 lt!446822) (index!40636 lt!446968)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011352 () Bool)

(assert (=> b!1011352 (= e!568999 (Intermediate!9566 false (toIndex!0 lt!446825 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!120127 c!102114) b!1011347))

(assert (= (and d!120127 (not c!102114)) b!1011349))

(assert (= (and b!1011349 c!102113) b!1011352))

(assert (= (and b!1011349 (not c!102113)) b!1011348))

(assert (= (and d!120127 c!102112) b!1011344))

(assert (= (and d!120127 (not c!102112)) b!1011346))

(assert (= (and b!1011346 res!679447) b!1011345))

(assert (= (and b!1011345 (not res!679448)) b!1011350))

(assert (= (and b!1011350 (not res!679446)) b!1011351))

(assert (=> b!1011348 m!935261))

(declare-fun m!935505 () Bool)

(assert (=> b!1011348 m!935505))

(assert (=> b!1011348 m!935505))

(declare-fun m!935511 () Bool)

(assert (=> b!1011348 m!935511))

(declare-fun m!935513 () Bool)

(assert (=> b!1011345 m!935513))

(assert (=> d!120127 m!935261))

(declare-fun m!935517 () Bool)

(assert (=> d!120127 m!935517))

(assert (=> d!120127 m!935247))

(assert (=> b!1011351 m!935513))

(assert (=> b!1011350 m!935513))

(assert (=> b!1010964 d!120127))

(declare-fun d!120129 () Bool)

(declare-fun lt!446979 () (_ BitVec 32))

(declare-fun lt!446978 () (_ BitVec 32))

(assert (=> d!120129 (= lt!446979 (bvmul (bvxor lt!446978 (bvlshr lt!446978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120129 (= lt!446978 ((_ extract 31 0) (bvand (bvxor lt!446825 (bvlshr lt!446825 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120129 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679449 (let ((h!22631 ((_ extract 31 0) (bvand (bvxor lt!446825 (bvlshr lt!446825 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88087 (bvmul (bvxor h!22631 (bvlshr h!22631 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88087 (bvlshr x!88087 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679449 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679449 #b00000000000000000000000000000000))))))

(assert (=> d!120129 (= (toIndex!0 lt!446825 mask!3464) (bvand (bvxor lt!446979 (bvlshr lt!446979 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010964 d!120129))

(declare-fun d!120133 () Bool)

(declare-fun lt!446984 () (_ BitVec 32))

(assert (=> d!120133 (and (bvsge lt!446984 #b00000000000000000000000000000000) (bvslt lt!446984 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!120133 (= lt!446984 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!120133 (validMask!0 mask!3464)))

(assert (=> d!120133 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446984)))

(declare-fun bs!28732 () Bool)

(assert (= bs!28732 d!120133))

(declare-fun m!935521 () Bool)

(assert (=> bs!28732 m!935521))

(assert (=> bs!28732 m!935247))

(assert (=> b!1010955 d!120133))

(declare-fun b!1011353 () Bool)

(declare-fun e!569001 () Bool)

(declare-fun lt!446985 () SeekEntryResult!9566)

(assert (=> b!1011353 (= e!569001 (bvsge (x!88078 lt!446985) #b01111111111111111111111111111110))))

(declare-fun b!1011354 () Bool)

(assert (=> b!1011354 (and (bvsge (index!40636 lt!446985) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446985) (size!31137 a!3219)))))

(declare-fun res!679453 () Bool)

(assert (=> b!1011354 (= res!679453 (= (select (arr!30634 a!3219) (index!40636 lt!446985)) (select (arr!30634 a!3219) j!170)))))

(declare-fun e!569002 () Bool)

(assert (=> b!1011354 (=> res!679453 e!569002)))

(declare-fun e!569005 () Bool)

(assert (=> b!1011354 (= e!569005 e!569002)))

(declare-fun b!1011355 () Bool)

(assert (=> b!1011355 (= e!569001 e!569005)))

(declare-fun res!679452 () Bool)

(assert (=> b!1011355 (= res!679452 (and (is-Intermediate!9566 lt!446985) (not (undefined!10378 lt!446985)) (bvslt (x!88078 lt!446985) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446985) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446985) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1011355 (=> (not res!679452) (not e!569005))))

(declare-fun b!1011356 () Bool)

(declare-fun e!569003 () SeekEntryResult!9566)

(assert (=> b!1011356 (= e!569003 (Intermediate!9566 true lt!446821 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1011357 () Bool)

(declare-fun e!569004 () SeekEntryResult!9566)

(assert (=> b!1011357 (= e!569004 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446821 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011358 () Bool)

(assert (=> b!1011358 (= e!569003 e!569004)))

(declare-fun lt!446986 () (_ BitVec 64))

(declare-fun c!102116 () Bool)

(assert (=> b!1011358 (= c!102116 (or (= lt!446986 (select (arr!30634 a!3219) j!170)) (= (bvadd lt!446986 lt!446986) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120137 () Bool)

(assert (=> d!120137 e!569001))

(declare-fun c!102115 () Bool)

(assert (=> d!120137 (= c!102115 (and (is-Intermediate!9566 lt!446985) (undefined!10378 lt!446985)))))

(assert (=> d!120137 (= lt!446985 e!569003)))

(declare-fun c!102117 () Bool)

(assert (=> d!120137 (= c!102117 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(assert (=> d!120137 (= lt!446986 (select (arr!30634 a!3219) lt!446821))))

(assert (=> d!120137 (validMask!0 mask!3464)))

(assert (=> d!120137 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446821 (select (arr!30634 a!3219) j!170) a!3219 mask!3464) lt!446985)))

(declare-fun b!1011359 () Bool)

(assert (=> b!1011359 (and (bvsge (index!40636 lt!446985) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446985) (size!31137 a!3219)))))

(declare-fun res!679451 () Bool)

(assert (=> b!1011359 (= res!679451 (= (select (arr!30634 a!3219) (index!40636 lt!446985)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011359 (=> res!679451 e!569002)))

(declare-fun b!1011360 () Bool)

(assert (=> b!1011360 (and (bvsge (index!40636 lt!446985) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446985) (size!31137 a!3219)))))

(assert (=> b!1011360 (= e!569002 (= (select (arr!30634 a!3219) (index!40636 lt!446985)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011361 () Bool)

(assert (=> b!1011361 (= e!569004 (Intermediate!9566 false lt!446821 (bvadd #b00000000000000000000000000000001 x!1245)))))

(assert (= (and d!120137 c!102117) b!1011356))

(assert (= (and d!120137 (not c!102117)) b!1011358))

(assert (= (and b!1011358 c!102116) b!1011361))

(assert (= (and b!1011358 (not c!102116)) b!1011357))

(assert (= (and d!120137 c!102115) b!1011353))

(assert (= (and d!120137 (not c!102115)) b!1011355))

(assert (= (and b!1011355 res!679452) b!1011354))

(assert (= (and b!1011354 (not res!679453)) b!1011359))

(assert (= (and b!1011359 (not res!679451)) b!1011360))

(assert (=> b!1011357 m!935421))

(assert (=> b!1011357 m!935421))

(assert (=> b!1011357 m!935233))

(declare-fun m!935523 () Bool)

(assert (=> b!1011357 m!935523))

(declare-fun m!935525 () Bool)

(assert (=> b!1011354 m!935525))

(declare-fun m!935527 () Bool)

(assert (=> d!120137 m!935527))

(assert (=> d!120137 m!935247))

(assert (=> b!1011360 m!935525))

(assert (=> b!1011359 m!935525))

(assert (=> b!1010966 d!120137))

(declare-fun d!120139 () Bool)

(assert (=> d!120139 (= (validKeyInArray!0 (select (arr!30634 a!3219) j!170)) (and (not (= (select (arr!30634 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30634 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010965 d!120139))

(declare-fun b!1011384 () Bool)

(declare-fun e!569023 () Bool)

(declare-fun e!569024 () Bool)

(assert (=> b!1011384 (= e!569023 e!569024)))

(declare-fun res!679468 () Bool)

(assert (=> b!1011384 (=> (not res!679468) (not e!569024))))

(declare-fun e!569026 () Bool)

(assert (=> b!1011384 (= res!679468 (not e!569026))))

(declare-fun res!679466 () Bool)

(assert (=> b!1011384 (=> (not res!679466) (not e!569026))))

(assert (=> b!1011384 (= res!679466 (validKeyInArray!0 (select (arr!30634 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1011385 () Bool)

(declare-fun e!569025 () Bool)

(declare-fun call!42445 () Bool)

(assert (=> b!1011385 (= e!569025 call!42445)))

(declare-fun b!1011386 () Bool)

(assert (=> b!1011386 (= e!569024 e!569025)))

(declare-fun c!102123 () Bool)

(assert (=> b!1011386 (= c!102123 (validKeyInArray!0 (select (arr!30634 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!120141 () Bool)

(declare-fun res!679467 () Bool)

(assert (=> d!120141 (=> res!679467 e!569023)))

(assert (=> d!120141 (= res!679467 (bvsge #b00000000000000000000000000000000 (size!31137 a!3219)))))

(assert (=> d!120141 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21433) e!569023)))

(declare-fun b!1011387 () Bool)

(declare-fun contains!5908 (List!21436 (_ BitVec 64)) Bool)

(assert (=> b!1011387 (= e!569026 (contains!5908 Nil!21433 (select (arr!30634 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42442 () Bool)

(assert (=> bm!42442 (= call!42445 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!102123 (Cons!21432 (select (arr!30634 a!3219) #b00000000000000000000000000000000) Nil!21433) Nil!21433)))))

(declare-fun b!1011388 () Bool)

(assert (=> b!1011388 (= e!569025 call!42445)))

(assert (= (and d!120141 (not res!679467)) b!1011384))

(assert (= (and b!1011384 res!679466) b!1011387))

(assert (= (and b!1011384 res!679468) b!1011386))

(assert (= (and b!1011386 c!102123) b!1011388))

(assert (= (and b!1011386 (not c!102123)) b!1011385))

(assert (= (or b!1011388 b!1011385) bm!42442))

(assert (=> b!1011384 m!935435))

(assert (=> b!1011384 m!935435))

(assert (=> b!1011384 m!935501))

(assert (=> b!1011386 m!935435))

(assert (=> b!1011386 m!935435))

(assert (=> b!1011386 m!935501))

(assert (=> b!1011387 m!935435))

(assert (=> b!1011387 m!935435))

(declare-fun m!935535 () Bool)

(assert (=> b!1011387 m!935535))

(assert (=> bm!42442 m!935435))

(declare-fun m!935539 () Bool)

(assert (=> bm!42442 m!935539))

(assert (=> b!1010967 d!120141))

(declare-fun d!120145 () Bool)

(assert (=> d!120145 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010956 d!120145))

(declare-fun b!1011389 () Bool)

(declare-fun e!569027 () Bool)

(declare-fun lt!446996 () SeekEntryResult!9566)

(assert (=> b!1011389 (= e!569027 (bvsge (x!88078 lt!446996) #b01111111111111111111111111111110))))

(declare-fun b!1011390 () Bool)

(assert (=> b!1011390 (and (bvsge (index!40636 lt!446996) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446996) (size!31137 a!3219)))))

(declare-fun res!679471 () Bool)

(assert (=> b!1011390 (= res!679471 (= (select (arr!30634 a!3219) (index!40636 lt!446996)) (select (arr!30634 a!3219) j!170)))))

(declare-fun e!569028 () Bool)

(assert (=> b!1011390 (=> res!679471 e!569028)))

(declare-fun e!569031 () Bool)

(assert (=> b!1011390 (= e!569031 e!569028)))

(declare-fun b!1011391 () Bool)

(assert (=> b!1011391 (= e!569027 e!569031)))

(declare-fun res!679470 () Bool)

(assert (=> b!1011391 (= res!679470 (and (is-Intermediate!9566 lt!446996) (not (undefined!10378 lt!446996)) (bvslt (x!88078 lt!446996) #b01111111111111111111111111111110) (bvsge (x!88078 lt!446996) #b00000000000000000000000000000000) (bvsge (x!88078 lt!446996) #b00000000000000000000000000000000)))))

(assert (=> b!1011391 (=> (not res!679470) (not e!569031))))

(declare-fun b!1011392 () Bool)

(declare-fun e!569029 () SeekEntryResult!9566)

(assert (=> b!1011392 (= e!569029 (Intermediate!9566 true (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1011393 () Bool)

(declare-fun e!569030 () SeekEntryResult!9566)

(assert (=> b!1011393 (= e!569030 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30634 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011394 () Bool)

(assert (=> b!1011394 (= e!569029 e!569030)))

(declare-fun lt!446997 () (_ BitVec 64))

(declare-fun c!102125 () Bool)

(assert (=> b!1011394 (= c!102125 (or (= lt!446997 (select (arr!30634 a!3219) j!170)) (= (bvadd lt!446997 lt!446997) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!120147 () Bool)

(assert (=> d!120147 e!569027))

(declare-fun c!102124 () Bool)

(assert (=> d!120147 (= c!102124 (and (is-Intermediate!9566 lt!446996) (undefined!10378 lt!446996)))))

(assert (=> d!120147 (= lt!446996 e!569029)))

(declare-fun c!102126 () Bool)

(assert (=> d!120147 (= c!102126 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!120147 (= lt!446997 (select (arr!30634 a!3219) (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464)))))

(assert (=> d!120147 (validMask!0 mask!3464)))

(assert (=> d!120147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) (select (arr!30634 a!3219) j!170) a!3219 mask!3464) lt!446996)))

(declare-fun b!1011395 () Bool)

(assert (=> b!1011395 (and (bvsge (index!40636 lt!446996) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446996) (size!31137 a!3219)))))

(declare-fun res!679469 () Bool)

(assert (=> b!1011395 (= res!679469 (= (select (arr!30634 a!3219) (index!40636 lt!446996)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1011395 (=> res!679469 e!569028)))

(declare-fun b!1011396 () Bool)

(assert (=> b!1011396 (and (bvsge (index!40636 lt!446996) #b00000000000000000000000000000000) (bvslt (index!40636 lt!446996) (size!31137 a!3219)))))

(assert (=> b!1011396 (= e!569028 (= (select (arr!30634 a!3219) (index!40636 lt!446996)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1011397 () Bool)

(assert (=> b!1011397 (= e!569030 (Intermediate!9566 false (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!120147 c!102126) b!1011392))

(assert (= (and d!120147 (not c!102126)) b!1011394))

(assert (= (and b!1011394 c!102125) b!1011397))

(assert (= (and b!1011394 (not c!102125)) b!1011393))

(assert (= (and d!120147 c!102124) b!1011389))

(assert (= (and d!120147 (not c!102124)) b!1011391))

(assert (= (and b!1011391 res!679470) b!1011390))

(assert (= (and b!1011390 (not res!679471)) b!1011395))

(assert (= (and b!1011395 (not res!679469)) b!1011396))

(assert (=> b!1011393 m!935237))

(declare-fun m!935541 () Bool)

(assert (=> b!1011393 m!935541))

(assert (=> b!1011393 m!935541))

(assert (=> b!1011393 m!935233))

(declare-fun m!935543 () Bool)

(assert (=> b!1011393 m!935543))

(declare-fun m!935545 () Bool)

(assert (=> b!1011390 m!935545))

(assert (=> d!120147 m!935237))

(declare-fun m!935547 () Bool)

(assert (=> d!120147 m!935547))

(assert (=> d!120147 m!935247))

(assert (=> b!1011396 m!935545))

(assert (=> b!1011395 m!935545))

(assert (=> b!1010957 d!120147))

(declare-fun d!120151 () Bool)

(declare-fun lt!447001 () (_ BitVec 32))

(declare-fun lt!447000 () (_ BitVec 32))

(assert (=> d!120151 (= lt!447001 (bvmul (bvxor lt!447000 (bvlshr lt!447000 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120151 (= lt!447000 ((_ extract 31 0) (bvand (bvxor (select (arr!30634 a!3219) j!170) (bvlshr (select (arr!30634 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120151 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!679449 (let ((h!22631 ((_ extract 31 0) (bvand (bvxor (select (arr!30634 a!3219) j!170) (bvlshr (select (arr!30634 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88087 (bvmul (bvxor h!22631 (bvlshr h!22631 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88087 (bvlshr x!88087 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!679449 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!679449 #b00000000000000000000000000000000))))))

(assert (=> d!120151 (= (toIndex!0 (select (arr!30634 a!3219) j!170) mask!3464) (bvand (bvxor lt!447001 (bvlshr lt!447001 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010957 d!120151))

(push 1)

(assert (not b!1011393))

(assert (not d!120133))

(assert (not b!1011384))

(assert (not b!1011357))

(assert (not b!1011386))

(assert (not b!1011348))

(assert (not d!120137))

(assert (not b!1011207))

(assert (not d!120121))

(assert (not d!120147))

(assert (not b!1011331))

(assert (not bm!42442))

(assert (not d!120075))

(assert (not bm!42436))

(assert (not b!1011216))

(assert (not d!120099))

(assert (not d!120103))

(assert (not b!1011293))

(assert (not b!1011234))

(assert (not d!120127))

(assert (not b!1011387))

(assert (not b!1011332))

(assert (not b!1011300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

