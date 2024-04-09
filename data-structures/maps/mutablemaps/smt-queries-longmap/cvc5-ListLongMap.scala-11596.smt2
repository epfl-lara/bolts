; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135222 () Bool)

(assert start!135222)

(declare-fun res!1074848 () Bool)

(declare-fun e!877197 () Bool)

(assert (=> start!135222 (=> (not res!1074848) (not e!877197))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135222 (= res!1074848 (validMask!0 mask!889))))

(assert (=> start!135222 e!877197))

(assert (=> start!135222 true))

(declare-datatypes ((array!105067 0))(
  ( (array!105068 (arr!50689 (Array (_ BitVec 32) (_ BitVec 64))) (size!51240 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105067)

(declare-fun array_inv!39334 (array!105067) Bool)

(assert (=> start!135222 (array_inv!39334 _keys!600)))

(declare-fun b!1573007 () Bool)

(declare-fun e!877196 () Bool)

(declare-datatypes ((SeekEntryResult!13618 0))(
  ( (MissingZero!13618 (index!56869 (_ BitVec 32))) (Found!13618 (index!56870 (_ BitVec 32))) (Intermediate!13618 (undefined!14430 Bool) (index!56871 (_ BitVec 32)) (x!141664 (_ BitVec 32))) (Undefined!13618) (MissingVacant!13618 (index!56872 (_ BitVec 32))) )
))
(declare-fun lt!674200 () SeekEntryResult!13618)

(assert (=> b!1573007 (= e!877196 (and (not (is-MissingVacant!13618 lt!674200)) (not (is-Found!13618 lt!674200)) (not (is-MissingZero!13618 lt!674200)) (not (is-Undefined!13618 lt!674200))))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun lt!674199 () SeekEntryResult!13618)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105067 (_ BitVec 32)) SeekEntryResult!13618)

(assert (=> b!1573007 (= lt!674200 (seekKeyOrZeroReturnVacant!0 (x!141664 lt!674199) (index!56871 lt!674199) (index!56871 lt!674199) k!754 _keys!600 mask!889))))

(declare-fun b!1573006 () Bool)

(assert (=> b!1573006 (= e!877197 e!877196)))

(declare-fun res!1074849 () Bool)

(assert (=> b!1573006 (=> (not res!1074849) (not e!877196))))

(assert (=> b!1573006 (= res!1074849 (and (not (undefined!14430 lt!674199)) (is-Intermediate!13618 lt!674199) (not (= (select (arr!50689 _keys!600) (index!56871 lt!674199)) k!754)) (not (= (select (arr!50689 _keys!600) (index!56871 lt!674199)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50689 _keys!600) (index!56871 lt!674199)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56871 lt!674199) #b00000000000000000000000000000000) (bvslt (index!56871 lt!674199) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105067 (_ BitVec 32)) SeekEntryResult!13618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573006 (= lt!674199 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573005 () Bool)

(declare-fun res!1074850 () Bool)

(assert (=> b!1573005 (=> (not res!1074850) (not e!877197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573005 (= res!1074850 (validKeyInArray!0 k!754))))

(declare-fun b!1573004 () Bool)

(declare-fun res!1074851 () Bool)

(assert (=> b!1573004 (=> (not res!1074851) (not e!877197))))

(assert (=> b!1573004 (= res!1074851 (= (size!51240 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135222 res!1074848) b!1573004))

(assert (= (and b!1573004 res!1074851) b!1573005))

(assert (= (and b!1573005 res!1074850) b!1573006))

(assert (= (and b!1573006 res!1074849) b!1573007))

(declare-fun m!1446619 () Bool)

(assert (=> start!135222 m!1446619))

(declare-fun m!1446621 () Bool)

(assert (=> start!135222 m!1446621))

(declare-fun m!1446623 () Bool)

(assert (=> b!1573007 m!1446623))

(declare-fun m!1446625 () Bool)

(assert (=> b!1573006 m!1446625))

(declare-fun m!1446627 () Bool)

(assert (=> b!1573006 m!1446627))

(assert (=> b!1573006 m!1446627))

(declare-fun m!1446629 () Bool)

(assert (=> b!1573006 m!1446629))

(declare-fun m!1446631 () Bool)

(assert (=> b!1573005 m!1446631))

(push 1)

(assert (not b!1573006))

(assert (not b!1573005))

(assert (not start!135222))

(assert (not b!1573007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!877236 () SeekEntryResult!13618)

(declare-fun b!1573068 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1573068 (= e!877236 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1573069 () Bool)

(declare-fun e!877239 () Bool)

(declare-fun lt!674223 () SeekEntryResult!13618)

(assert (=> b!1573069 (= e!877239 (bvsge (x!141664 lt!674223) #b01111111111111111111111111111110))))

(declare-fun b!1573070 () Bool)

(declare-fun e!877237 () SeekEntryResult!13618)

(assert (=> b!1573070 (= e!877237 (Intermediate!13618 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573071 () Bool)

(assert (=> b!1573071 (and (bvsge (index!56871 lt!674223) #b00000000000000000000000000000000) (bvslt (index!56871 lt!674223) (size!51240 _keys!600)))))

(declare-fun e!877238 () Bool)

(assert (=> b!1573071 (= e!877238 (= (select (arr!50689 _keys!600) (index!56871 lt!674223)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1573072 () Bool)

(assert (=> b!1573072 (= e!877236 (Intermediate!13618 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1573073 () Bool)

(declare-fun e!877235 () Bool)

(assert (=> b!1573073 (= e!877239 e!877235)))

(declare-fun res!1074882 () Bool)

(assert (=> b!1573073 (= res!1074882 (and (is-Intermediate!13618 lt!674223) (not (undefined!14430 lt!674223)) (bvslt (x!141664 lt!674223) #b01111111111111111111111111111110) (bvsge (x!141664 lt!674223) #b00000000000000000000000000000000) (bvsge (x!141664 lt!674223) #b00000000000000000000000000000000)))))

(assert (=> b!1573073 (=> (not res!1074882) (not e!877235))))

(declare-fun b!1573074 () Bool)

(assert (=> b!1573074 (and (bvsge (index!56871 lt!674223) #b00000000000000000000000000000000) (bvslt (index!56871 lt!674223) (size!51240 _keys!600)))))

(declare-fun res!1074883 () Bool)

(assert (=> b!1573074 (= res!1074883 (= (select (arr!50689 _keys!600) (index!56871 lt!674223)) k!754))))

(assert (=> b!1573074 (=> res!1074883 e!877238)))

(assert (=> b!1573074 (= e!877235 e!877238)))

(declare-fun b!1573075 () Bool)

(assert (=> b!1573075 (and (bvsge (index!56871 lt!674223) #b00000000000000000000000000000000) (bvslt (index!56871 lt!674223) (size!51240 _keys!600)))))

(declare-fun res!1074884 () Bool)

(assert (=> b!1573075 (= res!1074884 (= (select (arr!50689 _keys!600) (index!56871 lt!674223)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573075 (=> res!1074884 e!877238)))

(declare-fun b!1573076 () Bool)

(assert (=> b!1573076 (= e!877237 e!877236)))

(declare-fun c!145345 () Bool)

(declare-fun lt!674224 () (_ BitVec 64))

(assert (=> b!1573076 (= c!145345 (or (= lt!674224 k!754) (= (bvadd lt!674224 lt!674224) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!164849 () Bool)

(assert (=> d!164849 e!877239))

(declare-fun c!145346 () Bool)

(assert (=> d!164849 (= c!145346 (and (is-Intermediate!13618 lt!674223) (undefined!14430 lt!674223)))))

(assert (=> d!164849 (= lt!674223 e!877237)))

(declare-fun c!145347 () Bool)

(assert (=> d!164849 (= c!145347 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!164849 (= lt!674224 (select (arr!50689 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164849 (validMask!0 mask!889)))

(assert (=> d!164849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674223)))

(assert (= (and d!164849 c!145347) b!1573070))

(assert (= (and d!164849 (not c!145347)) b!1573076))

(assert (= (and b!1573076 c!145345) b!1573072))

(assert (= (and b!1573076 (not c!145345)) b!1573068))

(assert (= (and d!164849 c!145346) b!1573069))

(assert (= (and d!164849 (not c!145346)) b!1573073))

(assert (= (and b!1573073 res!1074882) b!1573074))

(assert (= (and b!1573074 (not res!1074883)) b!1573075))

(assert (= (and b!1573075 (not res!1074884)) b!1573071))

(declare-fun m!1446669 () Bool)

(assert (=> b!1573075 m!1446669))

(assert (=> b!1573068 m!1446627))

(declare-fun m!1446671 () Bool)

(assert (=> b!1573068 m!1446671))

(assert (=> b!1573068 m!1446671))

(declare-fun m!1446673 () Bool)

(assert (=> b!1573068 m!1446673))

(assert (=> b!1573074 m!1446669))

(assert (=> d!164849 m!1446627))

(declare-fun m!1446675 () Bool)

(assert (=> d!164849 m!1446675))

(assert (=> d!164849 m!1446619))

(assert (=> b!1573071 m!1446669))

(assert (=> b!1573006 d!164849))

(declare-fun d!164855 () Bool)

(declare-fun lt!674234 () (_ BitVec 32))

(declare-fun lt!674233 () (_ BitVec 32))

(assert (=> d!164855 (= lt!674234 (bvmul (bvxor lt!674233 (bvlshr lt!674233 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164855 (= lt!674233 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164855 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074885 (let ((h!38393 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141669 (bvmul (bvxor h!38393 (bvlshr h!38393 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141669 (bvlshr x!141669 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074885 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074885 #b00000000000000000000000000000000))))))

(assert (=> d!164855 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674234 (bvlshr lt!674234 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1573006 d!164855))

(declare-fun d!164857 () Bool)

(assert (=> d!164857 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1573005 d!164857))

(declare-fun d!164859 () Bool)

(assert (=> d!164859 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135222 d!164859))

(declare-fun d!164867 () Bool)

(assert (=> d!164867 (= (array_inv!39334 _keys!600) (bvsge (size!51240 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135222 d!164867))

(declare-fun e!877278 () SeekEntryResult!13618)

(declare-fun b!1573143 () Bool)

(assert (=> b!1573143 (= e!877278 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141664 lt!674199) #b00000000000000000000000000000001) (nextIndex!0 (index!56871 lt!674199) (x!141664 lt!674199) mask!889) (index!56871 lt!674199) k!754 _keys!600 mask!889))))

(declare-fun b!1573144 () Bool)

(declare-fun e!877277 () SeekEntryResult!13618)

(declare-fun e!877276 () SeekEntryResult!13618)

(assert (=> b!1573144 (= e!877277 e!877276)))

(declare-fun c!145372 () Bool)

(declare-fun lt!674259 () (_ BitVec 64))

(assert (=> b!1573144 (= c!145372 (= lt!674259 k!754))))

(declare-fun b!1573145 () Bool)

(assert (=> b!1573145 (= e!877276 (Found!13618 (index!56871 lt!674199)))))

(declare-fun b!1573146 () Bool)

(assert (=> b!1573146 (= e!877278 (MissingVacant!13618 (index!56871 lt!674199)))))

(declare-fun d!164871 () Bool)

(declare-fun lt!674260 () SeekEntryResult!13618)

(assert (=> d!164871 (and (or (is-Undefined!13618 lt!674260) (not (is-Found!13618 lt!674260)) (and (bvsge (index!56870 lt!674260) #b00000000000000000000000000000000) (bvslt (index!56870 lt!674260) (size!51240 _keys!600)))) (or (is-Undefined!13618 lt!674260) (is-Found!13618 lt!674260) (not (is-MissingVacant!13618 lt!674260)) (not (= (index!56872 lt!674260) (index!56871 lt!674199))) (and (bvsge (index!56872 lt!674260) #b00000000000000000000000000000000) (bvslt (index!56872 lt!674260) (size!51240 _keys!600)))) (or (is-Undefined!13618 lt!674260) (ite (is-Found!13618 lt!674260) (= (select (arr!50689 _keys!600) (index!56870 lt!674260)) k!754) (and (is-MissingVacant!13618 lt!674260) (= (index!56872 lt!674260) (index!56871 lt!674199)) (= (select (arr!50689 _keys!600) (index!56872 lt!674260)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164871 (= lt!674260 e!877277)))

(declare-fun c!145374 () Bool)

(assert (=> d!164871 (= c!145374 (bvsge (x!141664 lt!674199) #b01111111111111111111111111111110))))

(assert (=> d!164871 (= lt!674259 (select (arr!50689 _keys!600) (index!56871 lt!674199)))))

(assert (=> d!164871 (validMask!0 mask!889)))

(assert (=> d!164871 (= (seekKeyOrZeroReturnVacant!0 (x!141664 lt!674199) (index!56871 lt!674199) (index!56871 lt!674199) k!754 _keys!600 mask!889) lt!674260)))

(declare-fun b!1573147 () Bool)

(declare-fun c!145373 () Bool)

(assert (=> b!1573147 (= c!145373 (= lt!674259 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1573147 (= e!877276 e!877278)))

(declare-fun b!1573148 () Bool)

(assert (=> b!1573148 (= e!877277 Undefined!13618)))

(assert (= (and d!164871 c!145374) b!1573148))

(assert (= (and d!164871 (not c!145374)) b!1573144))

(assert (= (and b!1573144 c!145372) b!1573145))

(assert (= (and b!1573144 (not c!145372)) b!1573147))

(assert (= (and b!1573147 c!145373) b!1573146))

(assert (= (and b!1573147 (not c!145373)) b!1573143))

(declare-fun m!1446693 () Bool)

(assert (=> b!1573143 m!1446693))

(assert (=> b!1573143 m!1446693))

(declare-fun m!1446695 () Bool)

(assert (=> b!1573143 m!1446695))

(declare-fun m!1446697 () Bool)

(assert (=> d!164871 m!1446697))

(declare-fun m!1446699 () Bool)

(assert (=> d!164871 m!1446699))

(assert (=> d!164871 m!1446625))

(assert (=> d!164871 m!1446619))

(assert (=> b!1573007 d!164871))

(push 1)

