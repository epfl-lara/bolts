; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128632 () Bool)

(assert start!128632)

(declare-fun b!1507451 () Bool)

(declare-fun res!1027748 () Bool)

(declare-fun e!842290 () Bool)

(assert (=> b!1507451 (=> (not res!1027748) (not e!842290))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100518 0))(
  ( (array!100519 (arr!48496 (Array (_ BitVec 32) (_ BitVec 64))) (size!49047 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100518)

(assert (=> b!1507451 (= res!1027748 (and (= (size!49047 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49047 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49047 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507452 () Bool)

(declare-fun res!1027742 () Bool)

(assert (=> b!1507452 (=> (not res!1027742) (not e!842290))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507452 (= res!1027742 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49047 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49047 a!2804))))))

(declare-fun b!1507453 () Bool)

(declare-fun res!1027745 () Bool)

(assert (=> b!1507453 (=> (not res!1027745) (not e!842290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507453 (= res!1027745 (validKeyInArray!0 (select (arr!48496 a!2804) j!70)))))

(declare-fun b!1507454 () Bool)

(declare-fun res!1027741 () Bool)

(assert (=> b!1507454 (=> (not res!1027741) (not e!842290))))

(assert (=> b!1507454 (= res!1027741 (validKeyInArray!0 (select (arr!48496 a!2804) i!961)))))

(declare-fun b!1507455 () Bool)

(declare-fun res!1027747 () Bool)

(declare-fun e!842291 () Bool)

(assert (=> b!1507455 (=> (not res!1027747) (not e!842291))))

(declare-datatypes ((SeekEntryResult!12688 0))(
  ( (MissingZero!12688 (index!53146 (_ BitVec 32))) (Found!12688 (index!53147 (_ BitVec 32))) (Intermediate!12688 (undefined!13500 Bool) (index!53148 (_ BitVec 32)) (x!134913 (_ BitVec 32))) (Undefined!12688) (MissingVacant!12688 (index!53149 (_ BitVec 32))) )
))
(declare-fun lt!654360 () SeekEntryResult!12688)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100518 (_ BitVec 32)) SeekEntryResult!12688)

(assert (=> b!1507455 (= res!1027747 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48496 a!2804) j!70) a!2804 mask!2512) lt!654360))))

(declare-fun res!1027744 () Bool)

(assert (=> start!128632 (=> (not res!1027744) (not e!842290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128632 (= res!1027744 (validMask!0 mask!2512))))

(assert (=> start!128632 e!842290))

(assert (=> start!128632 true))

(declare-fun array_inv!37441 (array!100518) Bool)

(assert (=> start!128632 (array_inv!37441 a!2804)))

(declare-fun b!1507456 () Bool)

(declare-fun res!1027749 () Bool)

(assert (=> b!1507456 (=> (not res!1027749) (not e!842290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100518 (_ BitVec 32)) Bool)

(assert (=> b!1507456 (= res!1027749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507457 () Bool)

(declare-fun lt!654361 () (_ BitVec 32))

(assert (=> b!1507457 (= e!842291 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654361 #b00000000000000000000000000000000) (bvsge lt!654361 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun b!1507458 () Bool)

(assert (=> b!1507458 (= e!842290 e!842291)))

(declare-fun res!1027746 () Bool)

(assert (=> b!1507458 (=> (not res!1027746) (not e!842291))))

(assert (=> b!1507458 (= res!1027746 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654361 (select (arr!48496 a!2804) j!70) a!2804 mask!2512) lt!654360))))

(assert (=> b!1507458 (= lt!654360 (Intermediate!12688 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507458 (= lt!654361 (toIndex!0 (select (arr!48496 a!2804) j!70) mask!2512))))

(declare-fun b!1507459 () Bool)

(declare-fun res!1027743 () Bool)

(assert (=> b!1507459 (=> (not res!1027743) (not e!842290))))

(declare-datatypes ((List!35159 0))(
  ( (Nil!35156) (Cons!35155 (h!36559 (_ BitVec 64)) (t!49860 List!35159)) )
))
(declare-fun arrayNoDuplicates!0 (array!100518 (_ BitVec 32) List!35159) Bool)

(assert (=> b!1507459 (= res!1027743 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35156))))

(assert (= (and start!128632 res!1027744) b!1507451))

(assert (= (and b!1507451 res!1027748) b!1507454))

(assert (= (and b!1507454 res!1027741) b!1507453))

(assert (= (and b!1507453 res!1027745) b!1507456))

(assert (= (and b!1507456 res!1027749) b!1507459))

(assert (= (and b!1507459 res!1027743) b!1507452))

(assert (= (and b!1507452 res!1027742) b!1507458))

(assert (= (and b!1507458 res!1027746) b!1507455))

(assert (= (and b!1507455 res!1027747) b!1507457))

(declare-fun m!1390251 () Bool)

(assert (=> start!128632 m!1390251))

(declare-fun m!1390253 () Bool)

(assert (=> start!128632 m!1390253))

(declare-fun m!1390255 () Bool)

(assert (=> b!1507458 m!1390255))

(assert (=> b!1507458 m!1390255))

(declare-fun m!1390257 () Bool)

(assert (=> b!1507458 m!1390257))

(assert (=> b!1507458 m!1390255))

(declare-fun m!1390259 () Bool)

(assert (=> b!1507458 m!1390259))

(assert (=> b!1507453 m!1390255))

(assert (=> b!1507453 m!1390255))

(declare-fun m!1390261 () Bool)

(assert (=> b!1507453 m!1390261))

(declare-fun m!1390263 () Bool)

(assert (=> b!1507459 m!1390263))

(assert (=> b!1507455 m!1390255))

(assert (=> b!1507455 m!1390255))

(declare-fun m!1390265 () Bool)

(assert (=> b!1507455 m!1390265))

(declare-fun m!1390267 () Bool)

(assert (=> b!1507454 m!1390267))

(assert (=> b!1507454 m!1390267))

(declare-fun m!1390269 () Bool)

(assert (=> b!1507454 m!1390269))

(declare-fun m!1390271 () Bool)

(assert (=> b!1507456 m!1390271))

(push 1)

(assert (not start!128632))

(assert (not b!1507456))

(assert (not b!1507455))

(assert (not b!1507454))

(assert (not b!1507453))

(assert (not b!1507459))

(assert (not b!1507458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1507560 () Bool)

(declare-fun e!842347 () Bool)

(declare-fun e!842346 () Bool)

(assert (=> b!1507560 (= e!842347 e!842346)))

(declare-fun c!139405 () Bool)

(assert (=> b!1507560 (= c!139405 (validKeyInArray!0 (select (arr!48496 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68262 () Bool)

(declare-fun call!68267 () Bool)

(assert (=> bm!68262 (= call!68267 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!158287 () Bool)

(declare-fun res!1027831 () Bool)

(assert (=> d!158287 (=> res!1027831 e!842347)))

(assert (=> d!158287 (= res!1027831 (bvsge #b00000000000000000000000000000000 (size!49047 a!2804)))))

(assert (=> d!158287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842347)))

(declare-fun b!1507561 () Bool)

(assert (=> b!1507561 (= e!842346 call!68267)))

(declare-fun b!1507562 () Bool)

(declare-fun e!842348 () Bool)

(assert (=> b!1507562 (= e!842346 e!842348)))

(declare-fun lt!654388 () (_ BitVec 64))

(assert (=> b!1507562 (= lt!654388 (select (arr!48496 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50280 0))(
  ( (Unit!50281) )
))
(declare-fun lt!654386 () Unit!50280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100518 (_ BitVec 64) (_ BitVec 32)) Unit!50280)

(assert (=> b!1507562 (= lt!654386 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654388 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1507562 (arrayContainsKey!0 a!2804 lt!654388 #b00000000000000000000000000000000)))

(declare-fun lt!654387 () Unit!50280)

(assert (=> b!1507562 (= lt!654387 lt!654386)))

(declare-fun res!1027830 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100518 (_ BitVec 32)) SeekEntryResult!12688)

(assert (=> b!1507562 (= res!1027830 (= (seekEntryOrOpen!0 (select (arr!48496 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12688 #b00000000000000000000000000000000)))))

(assert (=> b!1507562 (=> (not res!1027830) (not e!842348))))

(declare-fun b!1507563 () Bool)

(assert (=> b!1507563 (= e!842348 call!68267)))

(assert (= (and d!158287 (not res!1027831)) b!1507560))

(assert (= (and b!1507560 c!139405) b!1507562))

(assert (= (and b!1507560 (not c!139405)) b!1507561))

(assert (= (and b!1507562 res!1027830) b!1507563))

(assert (= (or b!1507563 b!1507561) bm!68262))

(declare-fun m!1390333 () Bool)

(assert (=> b!1507560 m!1390333))

(assert (=> b!1507560 m!1390333))

(declare-fun m!1390335 () Bool)

(assert (=> b!1507560 m!1390335))

(declare-fun m!1390337 () Bool)

(assert (=> bm!68262 m!1390337))

(assert (=> b!1507562 m!1390333))

(declare-fun m!1390339 () Bool)

(assert (=> b!1507562 m!1390339))

(declare-fun m!1390341 () Bool)

(assert (=> b!1507562 m!1390341))

(assert (=> b!1507562 m!1390333))

(declare-fun m!1390343 () Bool)

(assert (=> b!1507562 m!1390343))

(assert (=> b!1507456 d!158287))

(declare-fun d!158295 () Bool)

(declare-fun e!842403 () Bool)

(assert (=> d!158295 e!842403))

(declare-fun c!139435 () Bool)

(declare-fun lt!654424 () SeekEntryResult!12688)

(assert (=> d!158295 (= c!139435 (and (is-Intermediate!12688 lt!654424) (undefined!13500 lt!654424)))))

(declare-fun e!842404 () SeekEntryResult!12688)

(assert (=> d!158295 (= lt!654424 e!842404)))

(declare-fun c!139434 () Bool)

(assert (=> d!158295 (= c!139434 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!654423 () (_ BitVec 64))

(assert (=> d!158295 (= lt!654423 (select (arr!48496 a!2804) index!487))))

(assert (=> d!158295 (validMask!0 mask!2512)))

(assert (=> d!158295 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48496 a!2804) j!70) a!2804 mask!2512) lt!654424)))

(declare-fun b!1507652 () Bool)

(assert (=> b!1507652 (and (bvsge (index!53148 lt!654424) #b00000000000000000000000000000000) (bvslt (index!53148 lt!654424) (size!49047 a!2804)))))

(declare-fun e!842402 () Bool)

(assert (=> b!1507652 (= e!842402 (= (select (arr!48496 a!2804) (index!53148 lt!654424)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507653 () Bool)

(declare-fun e!842401 () SeekEntryResult!12688)

(assert (=> b!1507653 (= e!842404 e!842401)))

(declare-fun c!139436 () Bool)

(assert (=> b!1507653 (= c!139436 (or (= lt!654423 (select (arr!48496 a!2804) j!70)) (= (bvadd lt!654423 lt!654423) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507654 () Bool)

(assert (=> b!1507654 (= e!842403 (bvsge (x!134913 lt!654424) #b01111111111111111111111111111110))))

(declare-fun b!1507655 () Bool)

(assert (=> b!1507655 (and (bvsge (index!53148 lt!654424) #b00000000000000000000000000000000) (bvslt (index!53148 lt!654424) (size!49047 a!2804)))))

(declare-fun res!1027866 () Bool)

(assert (=> b!1507655 (= res!1027866 (= (select (arr!48496 a!2804) (index!53148 lt!654424)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507655 (=> res!1027866 e!842402)))

(declare-fun b!1507656 () Bool)

(declare-fun e!842405 () Bool)

(assert (=> b!1507656 (= e!842403 e!842405)))

(declare-fun res!1027865 () Bool)

(assert (=> b!1507656 (= res!1027865 (and (is-Intermediate!12688 lt!654424) (not (undefined!13500 lt!654424)) (bvslt (x!134913 lt!654424) #b01111111111111111111111111111110) (bvsge (x!134913 lt!654424) #b00000000000000000000000000000000) (bvsge (x!134913 lt!654424) x!534)))))

(assert (=> b!1507656 (=> (not res!1027865) (not e!842405))))

(declare-fun b!1507657 () Bool)

(assert (=> b!1507657 (= e!842404 (Intermediate!12688 true index!487 x!534))))

(declare-fun b!1507658 () Bool)

(assert (=> b!1507658 (= e!842401 (Intermediate!12688 false index!487 x!534))))

(declare-fun b!1507659 () Bool)

(assert (=> b!1507659 (and (bvsge (index!53148 lt!654424) #b00000000000000000000000000000000) (bvslt (index!53148 lt!654424) (size!49047 a!2804)))))

(declare-fun res!1027867 () Bool)

(assert (=> b!1507659 (= res!1027867 (= (select (arr!48496 a!2804) (index!53148 lt!654424)) (select (arr!48496 a!2804) j!70)))))

(assert (=> b!1507659 (=> res!1027867 e!842402)))

(assert (=> b!1507659 (= e!842405 e!842402)))

(declare-fun b!1507660 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507660 (= e!842401 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48496 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158295 c!139434) b!1507657))

(assert (= (and d!158295 (not c!139434)) b!1507653))

(assert (= (and b!1507653 c!139436) b!1507658))

(assert (= (and b!1507653 (not c!139436)) b!1507660))

(assert (= (and d!158295 c!139435) b!1507654))

(assert (= (and d!158295 (not c!139435)) b!1507656))

(assert (= (and b!1507656 res!1027865) b!1507659))

(assert (= (and b!1507659 (not res!1027867)) b!1507655))

(assert (= (and b!1507655 (not res!1027866)) b!1507652))

(declare-fun m!1390377 () Bool)

(assert (=> b!1507660 m!1390377))

(assert (=> b!1507660 m!1390377))

(assert (=> b!1507660 m!1390255))

(declare-fun m!1390379 () Bool)

(assert (=> b!1507660 m!1390379))

(declare-fun m!1390381 () Bool)

(assert (=> b!1507652 m!1390381))

(declare-fun m!1390383 () Bool)

(assert (=> d!158295 m!1390383))

(assert (=> d!158295 m!1390251))

(assert (=> b!1507655 m!1390381))

(assert (=> b!1507659 m!1390381))

(assert (=> b!1507455 d!158295))

(declare-fun d!158307 () Bool)

(assert (=> d!158307 (= (validKeyInArray!0 (select (arr!48496 a!2804) j!70)) (and (not (= (select (arr!48496 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48496 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507453 d!158307))

(declare-fun d!158309 () Bool)

(declare-fun e!842408 () Bool)

(assert (=> d!158309 e!842408))

(declare-fun c!139438 () Bool)

(declare-fun lt!654426 () SeekEntryResult!12688)

(assert (=> d!158309 (= c!139438 (and (is-Intermediate!12688 lt!654426) (undefined!13500 lt!654426)))))

(declare-fun e!842409 () SeekEntryResult!12688)

(assert (=> d!158309 (= lt!654426 e!842409)))

(declare-fun c!139437 () Bool)

(assert (=> d!158309 (= c!139437 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!654425 () (_ BitVec 64))

(assert (=> d!158309 (= lt!654425 (select (arr!48496 a!2804) lt!654361))))

(assert (=> d!158309 (validMask!0 mask!2512)))

(assert (=> d!158309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!654361 (select (arr!48496 a!2804) j!70) a!2804 mask!2512) lt!654426)))

(declare-fun b!1507661 () Bool)

(assert (=> b!1507661 (and (bvsge (index!53148 lt!654426) #b00000000000000000000000000000000) (bvslt (index!53148 lt!654426) (size!49047 a!2804)))))

(declare-fun e!842407 () Bool)

(assert (=> b!1507661 (= e!842407 (= (select (arr!48496 a!2804) (index!53148 lt!654426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1507662 () Bool)

(declare-fun e!842406 () SeekEntryResult!12688)

(assert (=> b!1507662 (= e!842409 e!842406)))

(declare-fun c!139439 () Bool)

(assert (=> b!1507662 (= c!139439 (or (= lt!654425 (select (arr!48496 a!2804) j!70)) (= (bvadd lt!654425 lt!654425) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1507663 () Bool)

(assert (=> b!1507663 (= e!842408 (bvsge (x!134913 lt!654426) #b01111111111111111111111111111110))))

(declare-fun b!1507664 () Bool)

(assert (=> b!1507664 (and (bvsge (index!53148 lt!654426) #b00000000000000000000000000000000) (bvslt (index!53148 lt!654426) (size!49047 a!2804)))))

(declare-fun res!1027869 () Bool)

(assert (=> b!1507664 (= res!1027869 (= (select (arr!48496 a!2804) (index!53148 lt!654426)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1507664 (=> res!1027869 e!842407)))

(declare-fun b!1507665 () Bool)

