; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87088 () Bool)

(assert start!87088)

(declare-fun b!1009644 () Bool)

(declare-fun e!568068 () Bool)

(declare-fun e!568065 () Bool)

(assert (=> b!1009644 (= e!568068 e!568065)))

(declare-fun res!678344 () Bool)

(assert (=> b!1009644 (=> (not res!678344) (not e!568065))))

(declare-datatypes ((SeekEntryResult!9551 0))(
  ( (MissingZero!9551 (index!40574 (_ BitVec 32))) (Found!9551 (index!40575 (_ BitVec 32))) (Intermediate!9551 (undefined!10363 Bool) (index!40576 (_ BitVec 32)) (x!88005 (_ BitVec 32))) (Undefined!9551) (MissingVacant!9551 (index!40577 (_ BitVec 32))) )
))
(declare-fun lt!446241 () SeekEntryResult!9551)

(declare-fun lt!446242 () SeekEntryResult!9551)

(assert (=> b!1009644 (= res!678344 (= lt!446241 lt!446242))))

(declare-datatypes ((array!63607 0))(
  ( (array!63608 (arr!30619 (Array (_ BitVec 32) (_ BitVec 64))) (size!31122 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63607)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63607 (_ BitVec 32)) SeekEntryResult!9551)

(assert (=> b!1009644 (= lt!446241 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30619 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009645 () Bool)

(declare-fun res!678342 () Bool)

(declare-fun e!568069 () Bool)

(assert (=> b!1009645 (=> (not res!678342) (not e!568069))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009645 (= res!678342 (and (= (size!31122 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31122 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31122 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009646 () Bool)

(declare-fun e!568070 () Bool)

(assert (=> b!1009646 (= e!568065 e!568070)))

(declare-fun res!678345 () Bool)

(assert (=> b!1009646 (=> (not res!678345) (not e!568070))))

(declare-fun lt!446243 () SeekEntryResult!9551)

(declare-fun lt!446245 () array!63607)

(declare-fun lt!446244 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009646 (= res!678345 (not (= lt!446243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446244 mask!3464) lt!446244 lt!446245 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1009646 (= lt!446244 (select (store (arr!30619 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009646 (= lt!446245 (array!63608 (store (arr!30619 a!3219) i!1194 k!2224) (size!31122 a!3219)))))

(declare-fun b!1009647 () Bool)

(declare-fun res!678336 () Bool)

(assert (=> b!1009647 (=> (not res!678336) (not e!568069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009647 (= res!678336 (validKeyInArray!0 (select (arr!30619 a!3219) j!170)))))

(declare-fun b!1009648 () Bool)

(declare-fun res!678339 () Bool)

(assert (=> b!1009648 (=> (not res!678339) (not e!568070))))

(assert (=> b!1009648 (= res!678339 (not (= lt!446241 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446244 lt!446245 mask!3464))))))

(declare-fun b!1009649 () Bool)

(declare-fun e!568067 () Bool)

(assert (=> b!1009649 (= e!568069 e!568067)))

(declare-fun res!678334 () Bool)

(assert (=> b!1009649 (=> (not res!678334) (not e!568067))))

(declare-fun lt!446246 () SeekEntryResult!9551)

(assert (=> b!1009649 (= res!678334 (or (= lt!446246 (MissingVacant!9551 i!1194)) (= lt!446246 (MissingZero!9551 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63607 (_ BitVec 32)) SeekEntryResult!9551)

(assert (=> b!1009649 (= lt!446246 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1009650 () Bool)

(declare-fun res!678337 () Bool)

(assert (=> b!1009650 (=> (not res!678337) (not e!568067))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009650 (= res!678337 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31122 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31122 a!3219))))))

(declare-fun res!678333 () Bool)

(assert (=> start!87088 (=> (not res!678333) (not e!568069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87088 (= res!678333 (validMask!0 mask!3464))))

(assert (=> start!87088 e!568069))

(declare-fun array_inv!23609 (array!63607) Bool)

(assert (=> start!87088 (array_inv!23609 a!3219)))

(assert (=> start!87088 true))

(declare-fun b!1009651 () Bool)

(declare-fun res!678335 () Bool)

(assert (=> b!1009651 (=> (not res!678335) (not e!568069))))

(declare-fun arrayContainsKey!0 (array!63607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009651 (= res!678335 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009652 () Bool)

(assert (=> b!1009652 (= e!568067 e!568068)))

(declare-fun res!678340 () Bool)

(assert (=> b!1009652 (=> (not res!678340) (not e!568068))))

(assert (=> b!1009652 (= res!678340 (= lt!446243 lt!446242))))

(assert (=> b!1009652 (= lt!446242 (Intermediate!9551 false resIndex!38 resX!38))))

(assert (=> b!1009652 (= lt!446243 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) (select (arr!30619 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009653 () Bool)

(declare-fun res!678338 () Bool)

(assert (=> b!1009653 (=> (not res!678338) (not e!568070))))

(assert (=> b!1009653 (= res!678338 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009654 () Bool)

(declare-fun res!678346 () Bool)

(assert (=> b!1009654 (=> (not res!678346) (not e!568067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63607 (_ BitVec 32)) Bool)

(assert (=> b!1009654 (= res!678346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009655 () Bool)

(declare-fun res!678343 () Bool)

(assert (=> b!1009655 (=> (not res!678343) (not e!568069))))

(assert (=> b!1009655 (= res!678343 (validKeyInArray!0 k!2224))))

(declare-fun b!1009656 () Bool)

(declare-fun res!678341 () Bool)

(assert (=> b!1009656 (=> (not res!678341) (not e!568067))))

(declare-datatypes ((List!21421 0))(
  ( (Nil!21418) (Cons!21417 (h!22606 (_ BitVec 64)) (t!30430 List!21421)) )
))
(declare-fun arrayNoDuplicates!0 (array!63607 (_ BitVec 32) List!21421) Bool)

(assert (=> b!1009656 (= res!678341 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21418))))

(declare-fun b!1009657 () Bool)

(declare-fun lt!446247 () (_ BitVec 32))

(assert (=> b!1009657 (= e!568070 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (or (bvslt lt!446247 #b00000000000000000000000000000000) (bvsge lt!446247 (size!31122 a!3219)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009657 (= lt!446247 (nextIndex!0 index!1507 x!1245 mask!3464))))

(assert (= (and start!87088 res!678333) b!1009645))

(assert (= (and b!1009645 res!678342) b!1009647))

(assert (= (and b!1009647 res!678336) b!1009655))

(assert (= (and b!1009655 res!678343) b!1009651))

(assert (= (and b!1009651 res!678335) b!1009649))

(assert (= (and b!1009649 res!678334) b!1009654))

(assert (= (and b!1009654 res!678346) b!1009656))

(assert (= (and b!1009656 res!678341) b!1009650))

(assert (= (and b!1009650 res!678337) b!1009652))

(assert (= (and b!1009652 res!678340) b!1009644))

(assert (= (and b!1009644 res!678344) b!1009646))

(assert (= (and b!1009646 res!678345) b!1009648))

(assert (= (and b!1009648 res!678339) b!1009653))

(assert (= (and b!1009653 res!678338) b!1009657))

(declare-fun m!934281 () Bool)

(assert (=> b!1009657 m!934281))

(declare-fun m!934283 () Bool)

(assert (=> b!1009647 m!934283))

(assert (=> b!1009647 m!934283))

(declare-fun m!934285 () Bool)

(assert (=> b!1009647 m!934285))

(declare-fun m!934287 () Bool)

(assert (=> b!1009656 m!934287))

(declare-fun m!934289 () Bool)

(assert (=> b!1009651 m!934289))

(declare-fun m!934291 () Bool)

(assert (=> b!1009655 m!934291))

(declare-fun m!934293 () Bool)

(assert (=> b!1009646 m!934293))

(assert (=> b!1009646 m!934293))

(declare-fun m!934295 () Bool)

(assert (=> b!1009646 m!934295))

(declare-fun m!934297 () Bool)

(assert (=> b!1009646 m!934297))

(declare-fun m!934299 () Bool)

(assert (=> b!1009646 m!934299))

(declare-fun m!934301 () Bool)

(assert (=> b!1009648 m!934301))

(declare-fun m!934303 () Bool)

(assert (=> b!1009654 m!934303))

(assert (=> b!1009644 m!934283))

(assert (=> b!1009644 m!934283))

(declare-fun m!934305 () Bool)

(assert (=> b!1009644 m!934305))

(assert (=> b!1009652 m!934283))

(assert (=> b!1009652 m!934283))

(declare-fun m!934307 () Bool)

(assert (=> b!1009652 m!934307))

(assert (=> b!1009652 m!934307))

(assert (=> b!1009652 m!934283))

(declare-fun m!934309 () Bool)

(assert (=> b!1009652 m!934309))

(declare-fun m!934311 () Bool)

(assert (=> start!87088 m!934311))

(declare-fun m!934313 () Bool)

(assert (=> start!87088 m!934313))

(declare-fun m!934315 () Bool)

(assert (=> b!1009649 m!934315))

(push 1)

(assert (not b!1009652))

(assert (not b!1009648))

(assert (not b!1009644))

(assert (not b!1009649))

(assert (not b!1009655))

(assert (not b!1009654))

(assert (not b!1009657))

(assert (not b!1009651))

(assert (not b!1009656))

(assert (not start!87088))

(assert (not b!1009647))

(assert (not b!1009646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119883 () Bool)

(assert (=> d!119883 (= (validKeyInArray!0 (select (arr!30619 a!3219) j!170)) (and (not (= (select (arr!30619 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30619 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009647 d!119883))

(declare-fun b!1009868 () Bool)

(declare-fun lt!446325 () SeekEntryResult!9551)

(assert (=> b!1009868 (and (bvsge (index!40576 lt!446325) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446325) (size!31122 lt!446245)))))

(declare-fun e!568188 () Bool)

(assert (=> b!1009868 (= e!568188 (= (select (arr!30619 lt!446245) (index!40576 lt!446325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009869 () Bool)

(declare-fun e!568191 () SeekEntryResult!9551)

(assert (=> b!1009869 (= e!568191 (Intermediate!9551 false index!1507 x!1245))))

(declare-fun b!1009870 () Bool)

(declare-fun e!568189 () SeekEntryResult!9551)

(assert (=> b!1009870 (= e!568189 (Intermediate!9551 true index!1507 x!1245))))

(declare-fun b!1009871 () Bool)

(assert (=> b!1009871 (and (bvsge (index!40576 lt!446325) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446325) (size!31122 lt!446245)))))

(declare-fun res!678488 () Bool)

(assert (=> b!1009871 (= res!678488 (= (select (arr!30619 lt!446245) (index!40576 lt!446325)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009871 (=> res!678488 e!568188)))

(declare-fun b!1009872 () Bool)

(assert (=> b!1009872 (= e!568191 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446244 lt!446245 mask!3464))))

(declare-fun b!1009873 () Bool)

(assert (=> b!1009873 (and (bvsge (index!40576 lt!446325) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446325) (size!31122 lt!446245)))))

(declare-fun res!678487 () Bool)

(assert (=> b!1009873 (= res!678487 (= (select (arr!30619 lt!446245) (index!40576 lt!446325)) lt!446244))))

(assert (=> b!1009873 (=> res!678487 e!568188)))

(declare-fun e!568187 () Bool)

(assert (=> b!1009873 (= e!568187 e!568188)))

(declare-fun d!119885 () Bool)

(declare-fun e!568190 () Bool)

(assert (=> d!119885 e!568190))

(declare-fun c!101852 () Bool)

(assert (=> d!119885 (= c!101852 (and (is-Intermediate!9551 lt!446325) (undefined!10363 lt!446325)))))

(assert (=> d!119885 (= lt!446325 e!568189)))

(declare-fun c!101851 () Bool)

(assert (=> d!119885 (= c!101851 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!446326 () (_ BitVec 64))

(assert (=> d!119885 (= lt!446326 (select (arr!30619 lt!446245) index!1507))))

(assert (=> d!119885 (validMask!0 mask!3464)))

(assert (=> d!119885 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446244 lt!446245 mask!3464) lt!446325)))

(declare-fun b!1009874 () Bool)

(assert (=> b!1009874 (= e!568190 (bvsge (x!88005 lt!446325) #b01111111111111111111111111111110))))

(declare-fun b!1009875 () Bool)

(assert (=> b!1009875 (= e!568189 e!568191)))

(declare-fun c!101853 () Bool)

(assert (=> b!1009875 (= c!101853 (or (= lt!446326 lt!446244) (= (bvadd lt!446326 lt!446326) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009876 () Bool)

(assert (=> b!1009876 (= e!568190 e!568187)))

(declare-fun res!678489 () Bool)

(assert (=> b!1009876 (= res!678489 (and (is-Intermediate!9551 lt!446325) (not (undefined!10363 lt!446325)) (bvslt (x!88005 lt!446325) #b01111111111111111111111111111110) (bvsge (x!88005 lt!446325) #b00000000000000000000000000000000) (bvsge (x!88005 lt!446325) x!1245)))))

(assert (=> b!1009876 (=> (not res!678489) (not e!568187))))

(assert (= (and d!119885 c!101851) b!1009870))

(assert (= (and d!119885 (not c!101851)) b!1009875))

(assert (= (and b!1009875 c!101853) b!1009869))

(assert (= (and b!1009875 (not c!101853)) b!1009872))

(assert (= (and d!119885 c!101852) b!1009874))

(assert (= (and d!119885 (not c!101852)) b!1009876))

(assert (= (and b!1009876 res!678489) b!1009873))

(assert (= (and b!1009873 (not res!678487)) b!1009871))

(assert (= (and b!1009871 (not res!678488)) b!1009868))

(declare-fun m!934437 () Bool)

(assert (=> b!1009873 m!934437))

(declare-fun m!934439 () Bool)

(assert (=> d!119885 m!934439))

(assert (=> d!119885 m!934311))

(assert (=> b!1009872 m!934281))

(assert (=> b!1009872 m!934281))

(declare-fun m!934441 () Bool)

(assert (=> b!1009872 m!934441))

(assert (=> b!1009871 m!934437))

(assert (=> b!1009868 m!934437))

(assert (=> b!1009648 d!119885))

(declare-fun b!1009952 () Bool)

(declare-fun e!568239 () SeekEntryResult!9551)

(assert (=> b!1009952 (= e!568239 Undefined!9551)))

(declare-fun b!1009953 () Bool)

(declare-fun c!101881 () Bool)

(declare-fun lt!446360 () (_ BitVec 64))

(assert (=> b!1009953 (= c!101881 (= lt!446360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568237 () SeekEntryResult!9551)

(declare-fun e!568238 () SeekEntryResult!9551)

(assert (=> b!1009953 (= e!568237 e!568238)))

(declare-fun b!1009954 () Bool)

(declare-fun lt!446359 () SeekEntryResult!9551)

(assert (=> b!1009954 (= e!568237 (Found!9551 (index!40576 lt!446359)))))

(declare-fun b!1009955 () Bool)

(assert (=> b!1009955 (= e!568239 e!568237)))

(assert (=> b!1009955 (= lt!446360 (select (arr!30619 a!3219) (index!40576 lt!446359)))))

(declare-fun c!101883 () Bool)

(assert (=> b!1009955 (= c!101883 (= lt!446360 k!2224))))

(declare-fun d!119895 () Bool)

(declare-fun lt!446361 () SeekEntryResult!9551)

(assert (=> d!119895 (and (or (is-Undefined!9551 lt!446361) (not (is-Found!9551 lt!446361)) (and (bvsge (index!40575 lt!446361) #b00000000000000000000000000000000) (bvslt (index!40575 lt!446361) (size!31122 a!3219)))) (or (is-Undefined!9551 lt!446361) (is-Found!9551 lt!446361) (not (is-MissingZero!9551 lt!446361)) (and (bvsge (index!40574 lt!446361) #b00000000000000000000000000000000) (bvslt (index!40574 lt!446361) (size!31122 a!3219)))) (or (is-Undefined!9551 lt!446361) (is-Found!9551 lt!446361) (is-MissingZero!9551 lt!446361) (not (is-MissingVacant!9551 lt!446361)) (and (bvsge (index!40577 lt!446361) #b00000000000000000000000000000000) (bvslt (index!40577 lt!446361) (size!31122 a!3219)))) (or (is-Undefined!9551 lt!446361) (ite (is-Found!9551 lt!446361) (= (select (arr!30619 a!3219) (index!40575 lt!446361)) k!2224) (ite (is-MissingZero!9551 lt!446361) (= (select (arr!30619 a!3219) (index!40574 lt!446361)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9551 lt!446361) (= (select (arr!30619 a!3219) (index!40577 lt!446361)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119895 (= lt!446361 e!568239)))

(declare-fun c!101882 () Bool)

(assert (=> d!119895 (= c!101882 (and (is-Intermediate!9551 lt!446359) (undefined!10363 lt!446359)))))

(assert (=> d!119895 (= lt!446359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119895 (validMask!0 mask!3464)))

(assert (=> d!119895 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!446361)))

(declare-fun b!1009956 () Bool)

(assert (=> b!1009956 (= e!568238 (MissingZero!9551 (index!40576 lt!446359)))))

(declare-fun b!1009957 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63607 (_ BitVec 32)) SeekEntryResult!9551)

(assert (=> b!1009957 (= e!568238 (seekKeyOrZeroReturnVacant!0 (x!88005 lt!446359) (index!40576 lt!446359) (index!40576 lt!446359) k!2224 a!3219 mask!3464))))

(assert (= (and d!119895 c!101882) b!1009952))

(assert (= (and d!119895 (not c!101882)) b!1009955))

(assert (= (and b!1009955 c!101883) b!1009954))

(assert (= (and b!1009955 (not c!101883)) b!1009953))

(assert (= (and b!1009953 c!101881) b!1009956))

(assert (= (and b!1009953 (not c!101881)) b!1009957))

(declare-fun m!934487 () Bool)

(assert (=> b!1009955 m!934487))

(assert (=> d!119895 m!934311))

(declare-fun m!934489 () Bool)

(assert (=> d!119895 m!934489))

(declare-fun m!934491 () Bool)

(assert (=> d!119895 m!934491))

(declare-fun m!934493 () Bool)

(assert (=> d!119895 m!934493))

(declare-fun m!934495 () Bool)

(assert (=> d!119895 m!934495))

(declare-fun m!934497 () Bool)

(assert (=> d!119895 m!934497))

(assert (=> d!119895 m!934493))

(declare-fun m!934499 () Bool)

(assert (=> b!1009957 m!934499))

(assert (=> b!1009649 d!119895))

(declare-fun b!1009958 () Bool)

(declare-fun lt!446362 () SeekEntryResult!9551)

(assert (=> b!1009958 (and (bvsge (index!40576 lt!446362) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446362) (size!31122 a!3219)))))

(declare-fun e!568241 () Bool)

(assert (=> b!1009958 (= e!568241 (= (select (arr!30619 a!3219) (index!40576 lt!446362)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009959 () Bool)

(declare-fun e!568244 () SeekEntryResult!9551)

(assert (=> b!1009959 (= e!568244 (Intermediate!9551 false index!1507 x!1245))))

(declare-fun b!1009960 () Bool)

(declare-fun e!568242 () SeekEntryResult!9551)

(assert (=> b!1009960 (= e!568242 (Intermediate!9551 true index!1507 x!1245))))

(declare-fun b!1009961 () Bool)

(assert (=> b!1009961 (and (bvsge (index!40576 lt!446362) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446362) (size!31122 a!3219)))))

(declare-fun res!678512 () Bool)

(assert (=> b!1009961 (= res!678512 (= (select (arr!30619 a!3219) (index!40576 lt!446362)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009961 (=> res!678512 e!568241)))

(declare-fun b!1009962 () Bool)

(assert (=> b!1009962 (= e!568244 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30619 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009963 () Bool)

(assert (=> b!1009963 (and (bvsge (index!40576 lt!446362) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446362) (size!31122 a!3219)))))

(declare-fun res!678511 () Bool)

(assert (=> b!1009963 (= res!678511 (= (select (arr!30619 a!3219) (index!40576 lt!446362)) (select (arr!30619 a!3219) j!170)))))

(assert (=> b!1009963 (=> res!678511 e!568241)))

(declare-fun e!568240 () Bool)

(assert (=> b!1009963 (= e!568240 e!568241)))

(declare-fun d!119917 () Bool)

(declare-fun e!568243 () Bool)

(assert (=> d!119917 e!568243))

(declare-fun c!101885 () Bool)

(assert (=> d!119917 (= c!101885 (and (is-Intermediate!9551 lt!446362) (undefined!10363 lt!446362)))))

(assert (=> d!119917 (= lt!446362 e!568242)))

(declare-fun c!101884 () Bool)

(assert (=> d!119917 (= c!101884 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!446363 () (_ BitVec 64))

(assert (=> d!119917 (= lt!446363 (select (arr!30619 a!3219) index!1507))))

(assert (=> d!119917 (validMask!0 mask!3464)))

(assert (=> d!119917 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30619 a!3219) j!170) a!3219 mask!3464) lt!446362)))

(declare-fun b!1009964 () Bool)

(assert (=> b!1009964 (= e!568243 (bvsge (x!88005 lt!446362) #b01111111111111111111111111111110))))

(declare-fun b!1009965 () Bool)

(assert (=> b!1009965 (= e!568242 e!568244)))

(declare-fun c!101886 () Bool)

(assert (=> b!1009965 (= c!101886 (or (= lt!446363 (select (arr!30619 a!3219) j!170)) (= (bvadd lt!446363 lt!446363) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009966 () Bool)

(assert (=> b!1009966 (= e!568243 e!568240)))

(declare-fun res!678513 () Bool)

(assert (=> b!1009966 (= res!678513 (and (is-Intermediate!9551 lt!446362) (not (undefined!10363 lt!446362)) (bvslt (x!88005 lt!446362) #b01111111111111111111111111111110) (bvsge (x!88005 lt!446362) #b00000000000000000000000000000000) (bvsge (x!88005 lt!446362) x!1245)))))

(assert (=> b!1009966 (=> (not res!678513) (not e!568240))))

(assert (= (and d!119917 c!101884) b!1009960))

(assert (= (and d!119917 (not c!101884)) b!1009965))

(assert (= (and b!1009965 c!101886) b!1009959))

(assert (= (and b!1009965 (not c!101886)) b!1009962))

(assert (= (and d!119917 c!101885) b!1009964))

(assert (= (and d!119917 (not c!101885)) b!1009966))

(assert (= (and b!1009966 res!678513) b!1009963))

(assert (= (and b!1009963 (not res!678511)) b!1009961))

(assert (= (and b!1009961 (not res!678512)) b!1009958))

(declare-fun m!934501 () Bool)

(assert (=> b!1009963 m!934501))

(declare-fun m!934503 () Bool)

(assert (=> d!119917 m!934503))

(assert (=> d!119917 m!934311))

(assert (=> b!1009962 m!934281))

(assert (=> b!1009962 m!934281))

(assert (=> b!1009962 m!934283))

(declare-fun m!934505 () Bool)

(assert (=> b!1009962 m!934505))

(assert (=> b!1009961 m!934501))

(assert (=> b!1009958 m!934501))

(assert (=> b!1009644 d!119917))

(declare-fun d!119919 () Bool)

(assert (=> d!119919 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009655 d!119919))

(declare-fun b!1009998 () Bool)

(declare-fun e!568267 () Bool)

(declare-fun e!568268 () Bool)

(assert (=> b!1009998 (= e!568267 e!568268)))

(declare-fun res!678531 () Bool)

(assert (=> b!1009998 (=> (not res!678531) (not e!568268))))

(declare-fun e!568269 () Bool)

(assert (=> b!1009998 (= res!678531 (not e!568269))))

(declare-fun res!678529 () Bool)

(assert (=> b!1009998 (=> (not res!678529) (not e!568269))))

(assert (=> b!1009998 (= res!678529 (validKeyInArray!0 (select (arr!30619 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42403 () Bool)

(declare-fun call!42406 () Bool)

(declare-fun c!101895 () Bool)

(assert (=> bm!42403 (= call!42406 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101895 (Cons!21417 (select (arr!30619 a!3219) #b00000000000000000000000000000000) Nil!21418) Nil!21418)))))

(declare-fun d!119921 () Bool)

(declare-fun res!678530 () Bool)

(assert (=> d!119921 (=> res!678530 e!568267)))

(assert (=> d!119921 (= res!678530 (bvsge #b00000000000000000000000000000000 (size!31122 a!3219)))))

(assert (=> d!119921 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21418) e!568267)))

(declare-fun b!1009999 () Bool)

(declare-fun e!568270 () Bool)

(assert (=> b!1009999 (= e!568270 call!42406)))

(declare-fun b!1010000 () Bool)

(assert (=> b!1010000 (= e!568270 call!42406)))

(declare-fun b!1010001 () Bool)

(declare-fun contains!5902 (List!21421 (_ BitVec 64)) Bool)

(assert (=> b!1010001 (= e!568269 (contains!5902 Nil!21418 (select (arr!30619 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010002 () Bool)

(assert (=> b!1010002 (= e!568268 e!568270)))

(assert (=> b!1010002 (= c!101895 (validKeyInArray!0 (select (arr!30619 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119921 (not res!678530)) b!1009998))

(assert (= (and b!1009998 res!678529) b!1010001))

(assert (= (and b!1009998 res!678531) b!1010002))

(assert (= (and b!1010002 c!101895) b!1009999))

(assert (= (and b!1010002 (not c!101895)) b!1010000))

(assert (= (or b!1009999 b!1010000) bm!42403))

(declare-fun m!934525 () Bool)

(assert (=> b!1009998 m!934525))

(assert (=> b!1009998 m!934525))

(declare-fun m!934527 () Bool)

(assert (=> b!1009998 m!934527))

(assert (=> bm!42403 m!934525))

(declare-fun m!934529 () Bool)

(assert (=> bm!42403 m!934529))

(assert (=> b!1010001 m!934525))

(assert (=> b!1010001 m!934525))

(declare-fun m!934531 () Bool)

(assert (=> b!1010001 m!934531))

(assert (=> b!1010002 m!934525))

(assert (=> b!1010002 m!934525))

(assert (=> b!1010002 m!934527))

(assert (=> b!1009656 d!119921))

(declare-fun b!1010003 () Bool)

(declare-fun lt!446380 () SeekEntryResult!9551)

(assert (=> b!1010003 (and (bvsge (index!40576 lt!446380) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446380) (size!31122 lt!446245)))))

(declare-fun e!568272 () Bool)

(assert (=> b!1010003 (= e!568272 (= (select (arr!30619 lt!446245) (index!40576 lt!446380)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010004 () Bool)

(declare-fun e!568275 () SeekEntryResult!9551)

(assert (=> b!1010004 (= e!568275 (Intermediate!9551 false (toIndex!0 lt!446244 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010005 () Bool)

(declare-fun e!568273 () SeekEntryResult!9551)

(assert (=> b!1010005 (= e!568273 (Intermediate!9551 true (toIndex!0 lt!446244 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010006 () Bool)

(assert (=> b!1010006 (and (bvsge (index!40576 lt!446380) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446380) (size!31122 lt!446245)))))

(declare-fun res!678533 () Bool)

(assert (=> b!1010006 (= res!678533 (= (select (arr!30619 lt!446245) (index!40576 lt!446380)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010006 (=> res!678533 e!568272)))

(declare-fun b!1010007 () Bool)

(assert (=> b!1010007 (= e!568275 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446244 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446244 lt!446245 mask!3464))))

(declare-fun b!1010008 () Bool)

(assert (=> b!1010008 (and (bvsge (index!40576 lt!446380) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446380) (size!31122 lt!446245)))))

(declare-fun res!678532 () Bool)

(assert (=> b!1010008 (= res!678532 (= (select (arr!30619 lt!446245) (index!40576 lt!446380)) lt!446244))))

(assert (=> b!1010008 (=> res!678532 e!568272)))

(declare-fun e!568271 () Bool)

(assert (=> b!1010008 (= e!568271 e!568272)))

(declare-fun d!119935 () Bool)

(declare-fun e!568274 () Bool)

(assert (=> d!119935 e!568274))

(declare-fun c!101897 () Bool)

(assert (=> d!119935 (= c!101897 (and (is-Intermediate!9551 lt!446380) (undefined!10363 lt!446380)))))

(assert (=> d!119935 (= lt!446380 e!568273)))

(declare-fun c!101896 () Bool)

(assert (=> d!119935 (= c!101896 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446381 () (_ BitVec 64))

(assert (=> d!119935 (= lt!446381 (select (arr!30619 lt!446245) (toIndex!0 lt!446244 mask!3464)))))

(assert (=> d!119935 (validMask!0 mask!3464)))

(assert (=> d!119935 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446244 mask!3464) lt!446244 lt!446245 mask!3464) lt!446380)))

(declare-fun b!1010009 () Bool)

(assert (=> b!1010009 (= e!568274 (bvsge (x!88005 lt!446380) #b01111111111111111111111111111110))))

(declare-fun b!1010010 () Bool)

(assert (=> b!1010010 (= e!568273 e!568275)))

(declare-fun c!101898 () Bool)

(assert (=> b!1010010 (= c!101898 (or (= lt!446381 lt!446244) (= (bvadd lt!446381 lt!446381) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010011 () Bool)

(assert (=> b!1010011 (= e!568274 e!568271)))

(declare-fun res!678534 () Bool)

(assert (=> b!1010011 (= res!678534 (and (is-Intermediate!9551 lt!446380) (not (undefined!10363 lt!446380)) (bvslt (x!88005 lt!446380) #b01111111111111111111111111111110) (bvsge (x!88005 lt!446380) #b00000000000000000000000000000000) (bvsge (x!88005 lt!446380) #b00000000000000000000000000000000)))))

(assert (=> b!1010011 (=> (not res!678534) (not e!568271))))

(assert (= (and d!119935 c!101896) b!1010005))

(assert (= (and d!119935 (not c!101896)) b!1010010))

(assert (= (and b!1010010 c!101898) b!1010004))

(assert (= (and b!1010010 (not c!101898)) b!1010007))

(assert (= (and d!119935 c!101897) b!1010009))

(assert (= (and d!119935 (not c!101897)) b!1010011))

(assert (= (and b!1010011 res!678534) b!1010008))

(assert (= (and b!1010008 (not res!678532)) b!1010006))

(assert (= (and b!1010006 (not res!678533)) b!1010003))

(declare-fun m!934533 () Bool)

(assert (=> b!1010008 m!934533))

(assert (=> d!119935 m!934293))

(declare-fun m!934535 () Bool)

(assert (=> d!119935 m!934535))

(assert (=> d!119935 m!934311))

(assert (=> b!1010007 m!934293))

(declare-fun m!934537 () Bool)

(assert (=> b!1010007 m!934537))

(assert (=> b!1010007 m!934537))

(declare-fun m!934539 () Bool)

(assert (=> b!1010007 m!934539))

(assert (=> b!1010006 m!934533))

(assert (=> b!1010003 m!934533))

(assert (=> b!1009646 d!119935))

(declare-fun d!119937 () Bool)

(declare-fun lt!446387 () (_ BitVec 32))

(declare-fun lt!446386 () (_ BitVec 32))

(assert (=> d!119937 (= lt!446387 (bvmul (bvxor lt!446386 (bvlshr lt!446386 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119937 (= lt!446386 ((_ extract 31 0) (bvand (bvxor lt!446244 (bvlshr lt!446244 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119937 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678535 (let ((h!22611 ((_ extract 31 0) (bvand (bvxor lt!446244 (bvlshr lt!446244 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88015 (bvmul (bvxor h!22611 (bvlshr h!22611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88015 (bvlshr x!88015 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678535 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678535 #b00000000000000000000000000000000))))))

(assert (=> d!119937 (= (toIndex!0 lt!446244 mask!3464) (bvand (bvxor lt!446387 (bvlshr lt!446387 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009646 d!119937))

(declare-fun d!119939 () Bool)

(declare-fun lt!446390 () (_ BitVec 32))

(assert (=> d!119939 (and (bvsge lt!446390 #b00000000000000000000000000000000) (bvslt lt!446390 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119939 (= lt!446390 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119939 (validMask!0 mask!3464)))

(assert (=> d!119939 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446390)))

(declare-fun bs!28711 () Bool)

(assert (= bs!28711 d!119939))

(declare-fun m!934541 () Bool)

(assert (=> bs!28711 m!934541))

(assert (=> bs!28711 m!934311))

(assert (=> b!1009657 d!119939))

(declare-fun b!1010012 () Bool)

(declare-fun lt!446391 () SeekEntryResult!9551)

(assert (=> b!1010012 (and (bvsge (index!40576 lt!446391) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446391) (size!31122 a!3219)))))

(declare-fun e!568277 () Bool)

(assert (=> b!1010012 (= e!568277 (= (select (arr!30619 a!3219) (index!40576 lt!446391)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010013 () Bool)

(declare-fun e!568280 () SeekEntryResult!9551)

(assert (=> b!1010013 (= e!568280 (Intermediate!9551 false (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun e!568278 () SeekEntryResult!9551)

(declare-fun b!1010014 () Bool)

(assert (=> b!1010014 (= e!568278 (Intermediate!9551 true (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010015 () Bool)

(assert (=> b!1010015 (and (bvsge (index!40576 lt!446391) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446391) (size!31122 a!3219)))))

(declare-fun res!678537 () Bool)

(assert (=> b!1010015 (= res!678537 (= (select (arr!30619 a!3219) (index!40576 lt!446391)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010015 (=> res!678537 e!568277)))

(declare-fun b!1010016 () Bool)

(assert (=> b!1010016 (= e!568280 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30619 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010017 () Bool)

(assert (=> b!1010017 (and (bvsge (index!40576 lt!446391) #b00000000000000000000000000000000) (bvslt (index!40576 lt!446391) (size!31122 a!3219)))))

(declare-fun res!678536 () Bool)

(assert (=> b!1010017 (= res!678536 (= (select (arr!30619 a!3219) (index!40576 lt!446391)) (select (arr!30619 a!3219) j!170)))))

(assert (=> b!1010017 (=> res!678536 e!568277)))

(declare-fun e!568276 () Bool)

(assert (=> b!1010017 (= e!568276 e!568277)))

(declare-fun d!119941 () Bool)

(declare-fun e!568279 () Bool)

(assert (=> d!119941 e!568279))

(declare-fun c!101900 () Bool)

(assert (=> d!119941 (= c!101900 (and (is-Intermediate!9551 lt!446391) (undefined!10363 lt!446391)))))

(assert (=> d!119941 (= lt!446391 e!568278)))

(declare-fun c!101899 () Bool)

(assert (=> d!119941 (= c!101899 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446392 () (_ BitVec 64))

(assert (=> d!119941 (= lt!446392 (select (arr!30619 a!3219) (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464)))))

(assert (=> d!119941 (validMask!0 mask!3464)))

(assert (=> d!119941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) (select (arr!30619 a!3219) j!170) a!3219 mask!3464) lt!446391)))

(declare-fun b!1010018 () Bool)

(assert (=> b!1010018 (= e!568279 (bvsge (x!88005 lt!446391) #b01111111111111111111111111111110))))

(declare-fun b!1010019 () Bool)

(assert (=> b!1010019 (= e!568278 e!568280)))

(declare-fun c!101901 () Bool)

(assert (=> b!1010019 (= c!101901 (or (= lt!446392 (select (arr!30619 a!3219) j!170)) (= (bvadd lt!446392 lt!446392) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010020 () Bool)

(assert (=> b!1010020 (= e!568279 e!568276)))

(declare-fun res!678538 () Bool)

(assert (=> b!1010020 (= res!678538 (and (is-Intermediate!9551 lt!446391) (not (undefined!10363 lt!446391)) (bvslt (x!88005 lt!446391) #b01111111111111111111111111111110) (bvsge (x!88005 lt!446391) #b00000000000000000000000000000000) (bvsge (x!88005 lt!446391) #b00000000000000000000000000000000)))))

(assert (=> b!1010020 (=> (not res!678538) (not e!568276))))

(assert (= (and d!119941 c!101899) b!1010014))

(assert (= (and d!119941 (not c!101899)) b!1010019))

(assert (= (and b!1010019 c!101901) b!1010013))

(assert (= (and b!1010019 (not c!101901)) b!1010016))

(assert (= (and d!119941 c!101900) b!1010018))

(assert (= (and d!119941 (not c!101900)) b!1010020))

(assert (= (and b!1010020 res!678538) b!1010017))

(assert (= (and b!1010017 (not res!678536)) b!1010015))

(assert (= (and b!1010015 (not res!678537)) b!1010012))

(declare-fun m!934543 () Bool)

(assert (=> b!1010017 m!934543))

(assert (=> d!119941 m!934307))

(declare-fun m!934545 () Bool)

(assert (=> d!119941 m!934545))

(assert (=> d!119941 m!934311))

(assert (=> b!1010016 m!934307))

(declare-fun m!934547 () Bool)

(assert (=> b!1010016 m!934547))

(assert (=> b!1010016 m!934547))

(assert (=> b!1010016 m!934283))

(declare-fun m!934549 () Bool)

(assert (=> b!1010016 m!934549))

(assert (=> b!1010015 m!934543))

(assert (=> b!1010012 m!934543))

(assert (=> b!1009652 d!119941))

(declare-fun d!119943 () Bool)

(declare-fun lt!446394 () (_ BitVec 32))

(declare-fun lt!446393 () (_ BitVec 32))

(assert (=> d!119943 (= lt!446394 (bvmul (bvxor lt!446393 (bvlshr lt!446393 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119943 (= lt!446393 ((_ extract 31 0) (bvand (bvxor (select (arr!30619 a!3219) j!170) (bvlshr (select (arr!30619 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119943 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678535 (let ((h!22611 ((_ extract 31 0) (bvand (bvxor (select (arr!30619 a!3219) j!170) (bvlshr (select (arr!30619 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88015 (bvmul (bvxor h!22611 (bvlshr h!22611 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88015 (bvlshr x!88015 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678535 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678535 #b00000000000000000000000000000000))))))

(assert (=> d!119943 (= (toIndex!0 (select (arr!30619 a!3219) j!170) mask!3464) (bvand (bvxor lt!446394 (bvlshr lt!446394 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009652 d!119943))

(declare-fun d!119945 () Bool)

(declare-fun res!678543 () Bool)

(declare-fun e!568298 () Bool)

(assert (=> d!119945 (=> res!678543 e!568298)))

(assert (=> d!119945 (= res!678543 (bvsge #b00000000000000000000000000000000 (size!31122 a!3219)))))

(assert (=> d!119945 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568298)))

(declare-fun b!1010047 () Bool)

(declare-fun e!568297 () Bool)

(declare-fun call!42409 () Bool)

(assert (=> b!1010047 (= e!568297 call!42409)))

(declare-fun b!1010048 () Bool)

(assert (=> b!1010048 (= e!568298 e!568297)))

(declare-fun c!101913 () Bool)

(assert (=> b!1010048 (= c!101913 (validKeyInArray!0 (select (arr!30619 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010049 () Bool)

(declare-fun e!568296 () Bool)

(assert (=> b!1010049 (= e!568297 e!568296)))

(declare-fun lt!446411 () (_ BitVec 64))

(assert (=> b!1010049 (= lt!446411 (select (arr!30619 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32970 0))(
  ( (Unit!32971) )
))
(declare-fun lt!446410 () Unit!32970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63607 (_ BitVec 64) (_ BitVec 32)) Unit!32970)

(assert (=> b!1010049 (= lt!446410 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446411 #b00000000000000000000000000000000))))

(assert (=> b!1010049 (arrayContainsKey!0 a!3219 lt!446411 #b00000000000000000000000000000000)))

(declare-fun lt!446412 () Unit!32970)

(assert (=> b!1010049 (= lt!446412 lt!446410)))

(declare-fun res!678544 () Bool)

(assert (=> b!1010049 (= res!678544 (= (seekEntryOrOpen!0 (select (arr!30619 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9551 #b00000000000000000000000000000000)))))

(assert (=> b!1010049 (=> (not res!678544) (not e!568296))))

(declare-fun b!1010050 () Bool)

(assert (=> b!1010050 (= e!568296 call!42409)))

(declare-fun bm!42406 () Bool)

(assert (=> bm!42406 (= call!42409 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(assert (= (and d!119945 (not res!678543)) b!1010048))

(assert (= (and b!1010048 c!101913) b!1010049))

(assert (= (and b!1010048 (not c!101913)) b!1010047))

(assert (= (and b!1010049 res!678544) b!1010050))

(assert (= (or b!1010050 b!1010047) bm!42406))

(assert (=> b!1010048 m!934525))

(assert (=> b!1010048 m!934525))

(assert (=> b!1010048 m!934527))

(assert (=> b!1010049 m!934525))

(declare-fun m!934565 () Bool)

(assert (=> b!1010049 m!934565))

(declare-fun m!934567 () Bool)

(assert (=> b!1010049 m!934567))

(assert (=> b!1010049 m!934525))

(declare-fun m!934569 () Bool)

(assert (=> b!1010049 m!934569))

(declare-fun m!934571 () Bool)

(assert (=> bm!42406 m!934571))

(assert (=> b!1009654 d!119945))

(declare-fun d!119949 () Bool)

(declare-fun res!678549 () Bool)

(declare-fun e!568303 () Bool)

(assert (=> d!119949 (=> res!678549 e!568303)))

(assert (=> d!119949 (= res!678549 (= (select (arr!30619 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119949 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568303)))

(declare-fun b!1010055 () Bool)

(declare-fun e!568304 () Bool)

(assert (=> b!1010055 (= e!568303 e!568304)))

(declare-fun res!678550 () Bool)

(assert (=> b!1010055 (=> (not res!678550) (not e!568304))))

(assert (=> b!1010055 (= res!678550 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31122 a!3219)))))

(declare-fun b!1010056 () Bool)

(assert (=> b!1010056 (= e!568304 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119949 (not res!678549)) b!1010055))

(assert (= (and b!1010055 res!678550) b!1010056))

(assert (=> d!119949 m!934525))

(declare-fun m!934573 () Bool)

(assert (=> b!1010056 m!934573))

(assert (=> b!1009651 d!119949))

(declare-fun d!119951 () Bool)

(assert (=> d!119951 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87088 d!119951))

(declare-fun d!119953 () Bool)

(assert (=> d!119953 (= (array_inv!23609 a!3219) (bvsge (size!31122 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87088 d!119953))

(push 1)

