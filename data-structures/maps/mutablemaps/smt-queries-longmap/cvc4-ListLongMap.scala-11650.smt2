; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136144 () Bool)

(assert start!136144)

(declare-fun res!1076930 () Bool)

(declare-fun e!879150 () Bool)

(assert (=> start!136144 (=> (not res!1076930) (not e!879150))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136144 (= res!1076930 (validMask!0 mask!898))))

(assert (=> start!136144 e!879150))

(assert (=> start!136144 true))

(declare-datatypes ((array!105455 0))(
  ( (array!105456 (arr!50853 (Array (_ BitVec 32) (_ BitVec 64))) (size!51404 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105455)

(declare-fun array_inv!39498 (array!105455) Bool)

(assert (=> start!136144 (array_inv!39498 _keys!605)))

(declare-fun b!1576170 () Bool)

(declare-fun res!1076932 () Bool)

(assert (=> b!1576170 (=> (not res!1076932) (not e!879150))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1576170 (= res!1076932 (validKeyInArray!0 k!761))))

(declare-fun b!1576169 () Bool)

(declare-fun res!1076933 () Bool)

(assert (=> b!1576169 (=> (not res!1076933) (not e!879150))))

(assert (=> b!1576169 (= res!1076933 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51404 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-datatypes ((SeekEntryResult!13734 0))(
  ( (MissingZero!13734 (index!57333 (_ BitVec 32))) (Found!13734 (index!57334 (_ BitVec 32))) (Intermediate!13734 (undefined!14546 Bool) (index!57335 (_ BitVec 32)) (x!142326 (_ BitVec 32))) (Undefined!13734) (MissingVacant!13734 (index!57336 (_ BitVec 32))) )
))
(declare-fun lt!675471 () SeekEntryResult!13734)

(declare-fun e!879149 () Bool)

(declare-fun b!1576172 () Bool)

(assert (=> b!1576172 (= e!879149 (and (not (is-Undefined!13734 lt!675471)) (ite (is-Found!13734 lt!675471) (not (= (select (arr!50853 _keys!605) (index!57334 lt!675471)) k!761)) (ite (is-MissingZero!13734 lt!675471) (not (= (select (arr!50853 _keys!605) (index!57333 lt!675471)) #b0000000000000000000000000000000000000000000000000000000000000000)) (or (not (is-MissingVacant!13734 lt!675471)) (not (= (select (arr!50853 _keys!605) (index!57336 lt!675471)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!675472 () SeekEntryResult!13734)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105455 (_ BitVec 32)) SeekEntryResult!13734)

(assert (=> b!1576172 (= lt!675471 (seekKeyOrZeroReturnVacant!0 (x!142326 lt!675472) (index!57335 lt!675472) (index!57335 lt!675472) k!761 _keys!605 mask!898))))

(declare-fun b!1576171 () Bool)

(assert (=> b!1576171 (= e!879150 e!879149)))

(declare-fun res!1076931 () Bool)

(assert (=> b!1576171 (=> (not res!1076931) (not e!879149))))

(assert (=> b!1576171 (= res!1076931 (and (not (undefined!14546 lt!675472)) (is-Intermediate!13734 lt!675472) (not (= (select (arr!50853 _keys!605) (index!57335 lt!675472)) k!761)) (not (= (select (arr!50853 _keys!605) (index!57335 lt!675472)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50853 _keys!605) (index!57335 lt!675472)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!57335 lt!675472) #b00000000000000000000000000000000) (bvslt (index!57335 lt!675472) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105455 (_ BitVec 32)) SeekEntryResult!13734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576171 (= lt!675472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!136144 res!1076930) b!1576169))

(assert (= (and b!1576169 res!1076933) b!1576170))

(assert (= (and b!1576170 res!1076932) b!1576171))

(assert (= (and b!1576171 res!1076931) b!1576172))

(declare-fun m!1448921 () Bool)

(assert (=> start!136144 m!1448921))

(declare-fun m!1448923 () Bool)

(assert (=> start!136144 m!1448923))

(declare-fun m!1448925 () Bool)

(assert (=> b!1576170 m!1448925))

(declare-fun m!1448927 () Bool)

(assert (=> b!1576172 m!1448927))

(declare-fun m!1448929 () Bool)

(assert (=> b!1576172 m!1448929))

(declare-fun m!1448931 () Bool)

(assert (=> b!1576172 m!1448931))

(declare-fun m!1448933 () Bool)

(assert (=> b!1576172 m!1448933))

(declare-fun m!1448935 () Bool)

(assert (=> b!1576171 m!1448935))

(declare-fun m!1448937 () Bool)

(assert (=> b!1576171 m!1448937))

(assert (=> b!1576171 m!1448937))

(declare-fun m!1448939 () Bool)

(assert (=> b!1576171 m!1448939))

(push 1)

(assert (not b!1576171))

(assert (not b!1576170))

(assert (not start!136144))

(assert (not b!1576172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165561 () Bool)

(declare-fun e!879181 () Bool)

(assert (=> d!165561 e!879181))

(declare-fun c!145917 () Bool)

(declare-fun lt!675491 () SeekEntryResult!13734)

(assert (=> d!165561 (= c!145917 (and (is-Intermediate!13734 lt!675491) (undefined!14546 lt!675491)))))

(declare-fun e!879180 () SeekEntryResult!13734)

(assert (=> d!165561 (= lt!675491 e!879180)))

(declare-fun c!145916 () Bool)

(assert (=> d!165561 (= c!145916 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!675492 () (_ BitVec 64))

(assert (=> d!165561 (= lt!675492 (select (arr!50853 _keys!605) (toIndex!0 k!761 mask!898)))))

(assert (=> d!165561 (validMask!0 mask!898)))

(assert (=> d!165561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898) lt!675491)))

(declare-fun b!1576228 () Bool)

(assert (=> b!1576228 (and (bvsge (index!57335 lt!675491) #b00000000000000000000000000000000) (bvslt (index!57335 lt!675491) (size!51404 _keys!605)))))

(declare-fun res!1076951 () Bool)

(assert (=> b!1576228 (= res!1076951 (= (select (arr!50853 _keys!605) (index!57335 lt!675491)) k!761))))

(declare-fun e!879184 () Bool)

(assert (=> b!1576228 (=> res!1076951 e!879184)))

(declare-fun e!879182 () Bool)

(assert (=> b!1576228 (= e!879182 e!879184)))

(declare-fun b!1576229 () Bool)

(declare-fun e!879183 () SeekEntryResult!13734)

(assert (=> b!1576229 (= e!879180 e!879183)))

(declare-fun c!145918 () Bool)

(assert (=> b!1576229 (= c!145918 (or (= lt!675492 k!761) (= (bvadd lt!675492 lt!675492) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1576230 () Bool)

(assert (=> b!1576230 (and (bvsge (index!57335 lt!675491) #b00000000000000000000000000000000) (bvslt (index!57335 lt!675491) (size!51404 _keys!605)))))

(assert (=> b!1576230 (= e!879184 (= (select (arr!50853 _keys!605) (index!57335 lt!675491)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1576231 () Bool)

(assert (=> b!1576231 (= e!879180 (Intermediate!13734 true (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576232 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1576232 (= e!879183 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000 mask!898) k!761 _keys!605 mask!898))))

(declare-fun b!1576233 () Bool)

(assert (=> b!1576233 (= e!879181 (bvsge (x!142326 lt!675491) #b01111111111111111111111111111110))))

(declare-fun b!1576234 () Bool)

(assert (=> b!1576234 (= e!879183 (Intermediate!13734 false (toIndex!0 k!761 mask!898) #b00000000000000000000000000000000))))

(declare-fun b!1576235 () Bool)

(assert (=> b!1576235 (= e!879181 e!879182)))

(declare-fun res!1076952 () Bool)

(assert (=> b!1576235 (= res!1076952 (and (is-Intermediate!13734 lt!675491) (not (undefined!14546 lt!675491)) (bvslt (x!142326 lt!675491) #b01111111111111111111111111111110) (bvsge (x!142326 lt!675491) #b00000000000000000000000000000000) (bvsge (x!142326 lt!675491) #b00000000000000000000000000000000)))))

(assert (=> b!1576235 (=> (not res!1076952) (not e!879182))))

