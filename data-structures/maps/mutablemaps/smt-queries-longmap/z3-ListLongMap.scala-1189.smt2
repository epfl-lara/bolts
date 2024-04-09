; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25566 () Bool)

(assert start!25566)

(declare-fun b!265366 () Bool)

(declare-fun res!129774 () Bool)

(declare-fun e!171852 () Bool)

(assert (=> b!265366 (=> (not res!129774) (not e!171852))))

(declare-datatypes ((array!12777 0))(
  ( (array!12778 (arr!6044 (Array (_ BitVec 32) (_ BitVec 64))) (size!6396 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12777)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12777 (_ BitVec 32)) Bool)

(assert (=> b!265366 (= res!129774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265367 () Bool)

(declare-fun res!129773 () Bool)

(declare-fun e!171853 () Bool)

(assert (=> b!265367 (=> (not res!129773) (not e!171853))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265367 (= res!129773 (and (= (size!6396 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6396 a!3436))))))

(declare-fun b!265368 () Bool)

(declare-fun res!129772 () Bool)

(assert (=> b!265368 (=> (not res!129772) (not e!171853))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265368 (= res!129772 (validKeyInArray!0 k0!2698))))

(declare-fun b!265369 () Bool)

(declare-fun res!129779 () Bool)

(assert (=> b!265369 (=> (not res!129779) (not e!171853))))

(declare-fun arrayContainsKey!0 (array!12777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265369 (= res!129779 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265370 () Bool)

(declare-fun res!129778 () Bool)

(assert (=> b!265370 (=> (not res!129778) (not e!171852))))

(declare-datatypes ((List!3879 0))(
  ( (Nil!3876) (Cons!3875 (h!4542 (_ BitVec 64)) (t!8969 List!3879)) )
))
(declare-fun noDuplicate!108 (List!3879) Bool)

(assert (=> b!265370 (= res!129778 (noDuplicate!108 Nil!3876))))

(declare-fun b!265371 () Bool)

(declare-fun e!171850 () Bool)

(assert (=> b!265371 (= e!171852 e!171850)))

(declare-fun res!129780 () Bool)

(assert (=> b!265371 (=> res!129780 e!171850)))

(declare-fun contains!1919 (List!3879 (_ BitVec 64)) Bool)

(assert (=> b!265371 (= res!129780 (contains!1919 Nil!3876 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265372 () Bool)

(assert (=> b!265372 (= e!171853 e!171852)))

(declare-fun res!129777 () Bool)

(assert (=> b!265372 (=> (not res!129777) (not e!171852))))

(declare-datatypes ((SeekEntryResult!1246 0))(
  ( (MissingZero!1246 (index!7154 (_ BitVec 32))) (Found!1246 (index!7155 (_ BitVec 32))) (Intermediate!1246 (undefined!2058 Bool) (index!7156 (_ BitVec 32)) (x!25443 (_ BitVec 32))) (Undefined!1246) (MissingVacant!1246 (index!7157 (_ BitVec 32))) )
))
(declare-fun lt!134111 () SeekEntryResult!1246)

(assert (=> b!265372 (= res!129777 (or (= lt!134111 (MissingZero!1246 i!1355)) (= lt!134111 (MissingVacant!1246 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12777 (_ BitVec 32)) SeekEntryResult!1246)

(assert (=> b!265372 (= lt!134111 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!129776 () Bool)

(assert (=> start!25566 (=> (not res!129776) (not e!171853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25566 (= res!129776 (validMask!0 mask!4002))))

(assert (=> start!25566 e!171853))

(assert (=> start!25566 true))

(declare-fun array_inv!3998 (array!12777) Bool)

(assert (=> start!25566 (array_inv!3998 a!3436)))

(declare-fun b!265373 () Bool)

(assert (=> b!265373 (= e!171850 (contains!1919 Nil!3876 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265374 () Bool)

(declare-fun res!129775 () Bool)

(assert (=> b!265374 (=> (not res!129775) (not e!171852))))

(assert (=> b!265374 (= res!129775 (and (bvsle #b00000000000000000000000000000000 (size!6396 a!3436)) (bvslt (size!6396 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25566 res!129776) b!265367))

(assert (= (and b!265367 res!129773) b!265368))

(assert (= (and b!265368 res!129772) b!265369))

(assert (= (and b!265369 res!129779) b!265372))

(assert (= (and b!265372 res!129777) b!265366))

(assert (= (and b!265366 res!129774) b!265374))

(assert (= (and b!265374 res!129775) b!265370))

(assert (= (and b!265370 res!129778) b!265371))

(assert (= (and b!265371 (not res!129780)) b!265373))

(declare-fun m!282215 () Bool)

(assert (=> b!265368 m!282215))

(declare-fun m!282217 () Bool)

(assert (=> b!265369 m!282217))

(declare-fun m!282219 () Bool)

(assert (=> b!265370 m!282219))

(declare-fun m!282221 () Bool)

(assert (=> b!265366 m!282221))

(declare-fun m!282223 () Bool)

(assert (=> b!265373 m!282223))

(declare-fun m!282225 () Bool)

(assert (=> b!265372 m!282225))

(declare-fun m!282227 () Bool)

(assert (=> b!265371 m!282227))

(declare-fun m!282229 () Bool)

(assert (=> start!25566 m!282229))

(declare-fun m!282231 () Bool)

(assert (=> start!25566 m!282231))

(check-sat (not b!265372) (not b!265371) (not b!265369) (not b!265368) (not b!265366) (not b!265370) (not b!265373) (not start!25566))
(check-sat)
(get-model)

(declare-fun d!64103 () Bool)

(declare-fun res!129816 () Bool)

(declare-fun e!171874 () Bool)

(assert (=> d!64103 (=> res!129816 e!171874)))

(get-info :version)

(assert (=> d!64103 (= res!129816 ((_ is Nil!3876) Nil!3876))))

(assert (=> d!64103 (= (noDuplicate!108 Nil!3876) e!171874)))

(declare-fun b!265410 () Bool)

(declare-fun e!171875 () Bool)

(assert (=> b!265410 (= e!171874 e!171875)))

(declare-fun res!129817 () Bool)

(assert (=> b!265410 (=> (not res!129817) (not e!171875))))

(assert (=> b!265410 (= res!129817 (not (contains!1919 (t!8969 Nil!3876) (h!4542 Nil!3876))))))

(declare-fun b!265411 () Bool)

(assert (=> b!265411 (= e!171875 (noDuplicate!108 (t!8969 Nil!3876)))))

(assert (= (and d!64103 (not res!129816)) b!265410))

(assert (= (and b!265410 res!129817) b!265411))

(declare-fun m!282251 () Bool)

(assert (=> b!265410 m!282251))

(declare-fun m!282253 () Bool)

(assert (=> b!265411 m!282253))

(assert (=> b!265370 d!64103))

(declare-fun d!64109 () Bool)

(declare-fun res!129826 () Bool)

(declare-fun e!171884 () Bool)

(assert (=> d!64109 (=> res!129826 e!171884)))

(assert (=> d!64109 (= res!129826 (= (select (arr!6044 a!3436) #b00000000000000000000000000000000) k0!2698))))

(assert (=> d!64109 (= (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000) e!171884)))

(declare-fun b!265420 () Bool)

(declare-fun e!171885 () Bool)

(assert (=> b!265420 (= e!171884 e!171885)))

(declare-fun res!129827 () Bool)

(assert (=> b!265420 (=> (not res!129827) (not e!171885))))

(assert (=> b!265420 (= res!129827 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6396 a!3436)))))

(declare-fun b!265421 () Bool)

(assert (=> b!265421 (= e!171885 (arrayContainsKey!0 a!3436 k0!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64109 (not res!129826)) b!265420))

(assert (= (and b!265420 res!129827) b!265421))

(declare-fun m!282265 () Bool)

(assert (=> d!64109 m!282265))

(declare-fun m!282267 () Bool)

(assert (=> b!265421 m!282267))

(assert (=> b!265369 d!64109))

(declare-fun d!64115 () Bool)

(assert (=> d!64115 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25566 d!64115))

(declare-fun d!64123 () Bool)

(assert (=> d!64123 (= (array_inv!3998 a!3436) (bvsge (size!6396 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25566 d!64123))

(declare-fun b!265486 () Bool)

(declare-fun e!171937 () Bool)

(declare-fun call!25334 () Bool)

(assert (=> b!265486 (= e!171937 call!25334)))

(declare-fun d!64125 () Bool)

(declare-fun res!129865 () Bool)

(declare-fun e!171938 () Bool)

(assert (=> d!64125 (=> res!129865 e!171938)))

(assert (=> d!64125 (= res!129865 (bvsge #b00000000000000000000000000000000 (size!6396 a!3436)))))

(assert (=> d!64125 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171938)))

(declare-fun bm!25331 () Bool)

(assert (=> bm!25331 (= call!25334 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265487 () Bool)

(declare-fun e!171936 () Bool)

(assert (=> b!265487 (= e!171936 e!171937)))

(declare-fun lt!134148 () (_ BitVec 64))

(assert (=> b!265487 (= lt!134148 (select (arr!6044 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8266 0))(
  ( (Unit!8267) )
))
(declare-fun lt!134147 () Unit!8266)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12777 (_ BitVec 64) (_ BitVec 32)) Unit!8266)

(assert (=> b!265487 (= lt!134147 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134148 #b00000000000000000000000000000000))))

(assert (=> b!265487 (arrayContainsKey!0 a!3436 lt!134148 #b00000000000000000000000000000000)))

(declare-fun lt!134149 () Unit!8266)

(assert (=> b!265487 (= lt!134149 lt!134147)))

(declare-fun res!129864 () Bool)

(assert (=> b!265487 (= res!129864 (= (seekEntryOrOpen!0 (select (arr!6044 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1246 #b00000000000000000000000000000000)))))

(assert (=> b!265487 (=> (not res!129864) (not e!171937))))

(declare-fun b!265488 () Bool)

(assert (=> b!265488 (= e!171938 e!171936)))

(declare-fun c!45362 () Bool)

(assert (=> b!265488 (= c!45362 (validKeyInArray!0 (select (arr!6044 a!3436) #b00000000000000000000000000000000)))))

(declare-fun b!265489 () Bool)

(assert (=> b!265489 (= e!171936 call!25334)))

(assert (= (and d!64125 (not res!129865)) b!265488))

(assert (= (and b!265488 c!45362) b!265487))

(assert (= (and b!265488 (not c!45362)) b!265489))

(assert (= (and b!265487 res!129864) b!265486))

(assert (= (or b!265486 b!265489) bm!25331))

(declare-fun m!282317 () Bool)

(assert (=> bm!25331 m!282317))

(assert (=> b!265487 m!282265))

(declare-fun m!282319 () Bool)

(assert (=> b!265487 m!282319))

(declare-fun m!282321 () Bool)

(assert (=> b!265487 m!282321))

(assert (=> b!265487 m!282265))

(declare-fun m!282323 () Bool)

(assert (=> b!265487 m!282323))

(assert (=> b!265488 m!282265))

(assert (=> b!265488 m!282265))

(declare-fun m!282325 () Bool)

(assert (=> b!265488 m!282325))

(assert (=> b!265366 d!64125))

(declare-fun d!64143 () Bool)

(declare-fun lt!134158 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!179 (List!3879) (InoxSet (_ BitVec 64)))

(assert (=> d!64143 (= lt!134158 (select (content!179 Nil!3876) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171950 () Bool)

(assert (=> d!64143 (= lt!134158 e!171950)))

(declare-fun res!129875 () Bool)

(assert (=> d!64143 (=> (not res!129875) (not e!171950))))

(assert (=> d!64143 (= res!129875 ((_ is Cons!3875) Nil!3876))))

(assert (=> d!64143 (= (contains!1919 Nil!3876 #b0000000000000000000000000000000000000000000000000000000000000000) lt!134158)))

(declare-fun b!265502 () Bool)

(declare-fun e!171949 () Bool)

(assert (=> b!265502 (= e!171950 e!171949)))

(declare-fun res!129874 () Bool)

(assert (=> b!265502 (=> res!129874 e!171949)))

(assert (=> b!265502 (= res!129874 (= (h!4542 Nil!3876) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265503 () Bool)

(assert (=> b!265503 (= e!171949 (contains!1919 (t!8969 Nil!3876) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64143 res!129875) b!265502))

(assert (= (and b!265502 (not res!129874)) b!265503))

(declare-fun m!282327 () Bool)

(assert (=> d!64143 m!282327))

(declare-fun m!282329 () Bool)

(assert (=> d!64143 m!282329))

(declare-fun m!282331 () Bool)

(assert (=> b!265503 m!282331))

(assert (=> b!265371 d!64143))

(declare-fun b!265544 () Bool)

(declare-fun e!171977 () SeekEntryResult!1246)

(declare-fun e!171976 () SeekEntryResult!1246)

(assert (=> b!265544 (= e!171977 e!171976)))

(declare-fun lt!134178 () (_ BitVec 64))

(declare-fun lt!134177 () SeekEntryResult!1246)

(assert (=> b!265544 (= lt!134178 (select (arr!6044 a!3436) (index!7156 lt!134177)))))

(declare-fun c!45382 () Bool)

(assert (=> b!265544 (= c!45382 (= lt!134178 k0!2698))))

(declare-fun b!265545 () Bool)

(declare-fun c!45383 () Bool)

(assert (=> b!265545 (= c!45383 (= lt!134178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171975 () SeekEntryResult!1246)

(assert (=> b!265545 (= e!171976 e!171975)))

(declare-fun b!265546 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12777 (_ BitVec 32)) SeekEntryResult!1246)

(assert (=> b!265546 (= e!171975 (seekKeyOrZeroReturnVacant!0 (x!25443 lt!134177) (index!7156 lt!134177) (index!7156 lt!134177) k0!2698 a!3436 mask!4002))))

(declare-fun d!64145 () Bool)

(declare-fun lt!134179 () SeekEntryResult!1246)

(assert (=> d!64145 (and (or ((_ is Undefined!1246) lt!134179) (not ((_ is Found!1246) lt!134179)) (and (bvsge (index!7155 lt!134179) #b00000000000000000000000000000000) (bvslt (index!7155 lt!134179) (size!6396 a!3436)))) (or ((_ is Undefined!1246) lt!134179) ((_ is Found!1246) lt!134179) (not ((_ is MissingZero!1246) lt!134179)) (and (bvsge (index!7154 lt!134179) #b00000000000000000000000000000000) (bvslt (index!7154 lt!134179) (size!6396 a!3436)))) (or ((_ is Undefined!1246) lt!134179) ((_ is Found!1246) lt!134179) ((_ is MissingZero!1246) lt!134179) (not ((_ is MissingVacant!1246) lt!134179)) (and (bvsge (index!7157 lt!134179) #b00000000000000000000000000000000) (bvslt (index!7157 lt!134179) (size!6396 a!3436)))) (or ((_ is Undefined!1246) lt!134179) (ite ((_ is Found!1246) lt!134179) (= (select (arr!6044 a!3436) (index!7155 lt!134179)) k0!2698) (ite ((_ is MissingZero!1246) lt!134179) (= (select (arr!6044 a!3436) (index!7154 lt!134179)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1246) lt!134179) (= (select (arr!6044 a!3436) (index!7157 lt!134179)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64145 (= lt!134179 e!171977)))

(declare-fun c!45381 () Bool)

(assert (=> d!64145 (= c!45381 (and ((_ is Intermediate!1246) lt!134177) (undefined!2058 lt!134177)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12777 (_ BitVec 32)) SeekEntryResult!1246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64145 (= lt!134177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2698 mask!4002) k0!2698 a!3436 mask!4002))))

(assert (=> d!64145 (validMask!0 mask!4002)))

(assert (=> d!64145 (= (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002) lt!134179)))

(declare-fun b!265547 () Bool)

(assert (=> b!265547 (= e!171976 (Found!1246 (index!7156 lt!134177)))))

(declare-fun b!265548 () Bool)

(assert (=> b!265548 (= e!171977 Undefined!1246)))

(declare-fun b!265549 () Bool)

(assert (=> b!265549 (= e!171975 (MissingZero!1246 (index!7156 lt!134177)))))

(assert (= (and d!64145 c!45381) b!265548))

(assert (= (and d!64145 (not c!45381)) b!265544))

(assert (= (and b!265544 c!45382) b!265547))

(assert (= (and b!265544 (not c!45382)) b!265545))

(assert (= (and b!265545 c!45383) b!265549))

(assert (= (and b!265545 (not c!45383)) b!265546))

(declare-fun m!282359 () Bool)

(assert (=> b!265544 m!282359))

(declare-fun m!282361 () Bool)

(assert (=> b!265546 m!282361))

(declare-fun m!282363 () Bool)

(assert (=> d!64145 m!282363))

(declare-fun m!282365 () Bool)

(assert (=> d!64145 m!282365))

(declare-fun m!282367 () Bool)

(assert (=> d!64145 m!282367))

(assert (=> d!64145 m!282367))

(declare-fun m!282369 () Bool)

(assert (=> d!64145 m!282369))

(assert (=> d!64145 m!282229))

(declare-fun m!282371 () Bool)

(assert (=> d!64145 m!282371))

(assert (=> b!265372 d!64145))

(declare-fun d!64153 () Bool)

(assert (=> d!64153 (= (validKeyInArray!0 k0!2698) (and (not (= k0!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265368 d!64153))

(declare-fun d!64155 () Bool)

(declare-fun lt!134180 () Bool)

(assert (=> d!64155 (= lt!134180 (select (content!179 Nil!3876) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171979 () Bool)

(assert (=> d!64155 (= lt!134180 e!171979)))

(declare-fun res!129885 () Bool)

(assert (=> d!64155 (=> (not res!129885) (not e!171979))))

(assert (=> d!64155 (= res!129885 ((_ is Cons!3875) Nil!3876))))

(assert (=> d!64155 (= (contains!1919 Nil!3876 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134180)))

(declare-fun b!265550 () Bool)

(declare-fun e!171978 () Bool)

(assert (=> b!265550 (= e!171979 e!171978)))

(declare-fun res!129884 () Bool)

(assert (=> b!265550 (=> res!129884 e!171978)))

(assert (=> b!265550 (= res!129884 (= (h!4542 Nil!3876) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265551 () Bool)

(assert (=> b!265551 (= e!171978 (contains!1919 (t!8969 Nil!3876) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64155 res!129885) b!265550))

(assert (= (and b!265550 (not res!129884)) b!265551))

(assert (=> d!64155 m!282327))

(declare-fun m!282373 () Bool)

(assert (=> d!64155 m!282373))

