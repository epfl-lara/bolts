; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135180 () Bool)

(assert start!135180)

(declare-fun b!1572834 () Bool)

(declare-fun res!1074784 () Bool)

(declare-fun e!877098 () Bool)

(assert (=> b!1572834 (=> (not res!1074784) (not e!877098))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572834 (= res!1074784 (validKeyInArray!0 k!754))))

(declare-fun res!1074783 () Bool)

(assert (=> start!135180 (=> (not res!1074783) (not e!877098))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135180 (= res!1074783 (validMask!0 mask!889))))

(assert (=> start!135180 e!877098))

(assert (=> start!135180 true))

(declare-datatypes ((array!105058 0))(
  ( (array!105059 (arr!50686 (Array (_ BitVec 32) (_ BitVec 64))) (size!51237 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105058)

(declare-fun array_inv!39331 (array!105058) Bool)

(assert (=> start!135180 (array_inv!39331 _keys!600)))

(declare-fun b!1572835 () Bool)

(declare-fun e!877097 () Bool)

(assert (=> b!1572835 (= e!877098 e!877097)))

(declare-fun res!1074785 () Bool)

(assert (=> b!1572835 (=> (not res!1074785) (not e!877097))))

(declare-datatypes ((SeekEntryResult!13615 0))(
  ( (MissingZero!13615 (index!56857 (_ BitVec 32))) (Found!13615 (index!56858 (_ BitVec 32))) (Intermediate!13615 (undefined!14427 Bool) (index!56859 (_ BitVec 32)) (x!141644 (_ BitVec 32))) (Undefined!13615) (MissingVacant!13615 (index!56860 (_ BitVec 32))) )
))
(declare-fun lt!674128 () SeekEntryResult!13615)

(assert (=> b!1572835 (= res!1074785 (and (not (undefined!14427 lt!674128)) (is-Intermediate!13615 lt!674128) (not (= (select (arr!50686 _keys!600) (index!56859 lt!674128)) k!754)) (not (= (select (arr!50686 _keys!600) (index!56859 lt!674128)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50686 _keys!600) (index!56859 lt!674128)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56859 lt!674128) #b00000000000000000000000000000000) (bvslt (index!56859 lt!674128) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105058 (_ BitVec 32)) SeekEntryResult!13615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572835 (= lt!674128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572836 () Bool)

(declare-fun lt!674127 () SeekEntryResult!13615)

(assert (=> b!1572836 (= e!877097 (and (not (is-MissingVacant!13615 lt!674127)) (is-Found!13615 lt!674127) (or (bvslt (index!56858 lt!674127) #b00000000000000000000000000000000) (bvsge (index!56858 lt!674127) (size!51237 _keys!600)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105058 (_ BitVec 32)) SeekEntryResult!13615)

(assert (=> b!1572836 (= lt!674127 (seekKeyOrZeroReturnVacant!0 (x!141644 lt!674128) (index!56859 lt!674128) (index!56859 lt!674128) k!754 _keys!600 mask!889))))

(declare-fun b!1572833 () Bool)

(declare-fun res!1074782 () Bool)

(assert (=> b!1572833 (=> (not res!1074782) (not e!877098))))

(assert (=> b!1572833 (= res!1074782 (= (size!51237 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(assert (= (and start!135180 res!1074783) b!1572833))

(assert (= (and b!1572833 res!1074782) b!1572834))

(assert (= (and b!1572834 res!1074784) b!1572835))

(assert (= (and b!1572835 res!1074785) b!1572836))

(declare-fun m!1446529 () Bool)

(assert (=> b!1572834 m!1446529))

(declare-fun m!1446531 () Bool)

(assert (=> start!135180 m!1446531))

(declare-fun m!1446533 () Bool)

(assert (=> start!135180 m!1446533))

(declare-fun m!1446535 () Bool)

(assert (=> b!1572835 m!1446535))

(declare-fun m!1446537 () Bool)

(assert (=> b!1572835 m!1446537))

(assert (=> b!1572835 m!1446537))

(declare-fun m!1446539 () Bool)

(assert (=> b!1572835 m!1446539))

(declare-fun m!1446541 () Bool)

(assert (=> b!1572836 m!1446541))

(push 1)

(assert (not b!1572834))

(assert (not start!135180))

(assert (not b!1572835))

(assert (not b!1572836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164811 () Bool)

(assert (=> d!164811 (= (validKeyInArray!0 k!754) (and (not (= k!754 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!754 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1572834 d!164811))

(declare-fun d!164813 () Bool)

(assert (=> d!164813 (= (validMask!0 mask!889) (and (or (= mask!889 #b00000000000000000000000000000111) (= mask!889 #b00000000000000000000000000001111) (= mask!889 #b00000000000000000000000000011111) (= mask!889 #b00000000000000000000000000111111) (= mask!889 #b00000000000000000000000001111111) (= mask!889 #b00000000000000000000000011111111) (= mask!889 #b00000000000000000000000111111111) (= mask!889 #b00000000000000000000001111111111) (= mask!889 #b00000000000000000000011111111111) (= mask!889 #b00000000000000000000111111111111) (= mask!889 #b00000000000000000001111111111111) (= mask!889 #b00000000000000000011111111111111) (= mask!889 #b00000000000000000111111111111111) (= mask!889 #b00000000000000001111111111111111) (= mask!889 #b00000000000000011111111111111111) (= mask!889 #b00000000000000111111111111111111) (= mask!889 #b00000000000001111111111111111111) (= mask!889 #b00000000000011111111111111111111) (= mask!889 #b00000000000111111111111111111111) (= mask!889 #b00000000001111111111111111111111) (= mask!889 #b00000000011111111111111111111111) (= mask!889 #b00000000111111111111111111111111) (= mask!889 #b00000001111111111111111111111111) (= mask!889 #b00000011111111111111111111111111) (= mask!889 #b00000111111111111111111111111111) (= mask!889 #b00001111111111111111111111111111) (= mask!889 #b00011111111111111111111111111111) (= mask!889 #b00111111111111111111111111111111)) (bvsle mask!889 #b00111111111111111111111111111111)))))

(assert (=> start!135180 d!164813))

(declare-fun d!164823 () Bool)

(assert (=> d!164823 (= (array_inv!39331 _keys!600) (bvsge (size!51237 _keys!600) #b00000000000000000000000000000000))))

(assert (=> start!135180 d!164823))

(declare-fun b!1572906 () Bool)

(declare-fun lt!674156 () SeekEntryResult!13615)

(assert (=> b!1572906 (and (bvsge (index!56859 lt!674156) #b00000000000000000000000000000000) (bvslt (index!56859 lt!674156) (size!51237 _keys!600)))))

(declare-fun res!1074827 () Bool)

(assert (=> b!1572906 (= res!1074827 (= (select (arr!50686 _keys!600) (index!56859 lt!674156)) k!754))))

(declare-fun e!877143 () Bool)

(assert (=> b!1572906 (=> res!1074827 e!877143)))

(declare-fun e!877142 () Bool)

(assert (=> b!1572906 (= e!877142 e!877143)))

(declare-fun b!1572907 () Bool)

(declare-fun e!877145 () SeekEntryResult!13615)

(assert (=> b!1572907 (= e!877145 (Intermediate!13615 false (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun d!164825 () Bool)

(declare-fun e!877144 () Bool)

(assert (=> d!164825 e!877144))

(declare-fun c!145291 () Bool)

(assert (=> d!164825 (= c!145291 (and (is-Intermediate!13615 lt!674156) (undefined!14427 lt!674156)))))

(declare-fun e!877146 () SeekEntryResult!13615)

(assert (=> d!164825 (= lt!674156 e!877146)))

(declare-fun c!145293 () Bool)

(assert (=> d!164825 (= c!145293 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!674155 () (_ BitVec 64))

(assert (=> d!164825 (= lt!674155 (select (arr!50686 _keys!600) (toIndex!0 k!754 mask!889)))))

(assert (=> d!164825 (validMask!0 mask!889)))

(assert (=> d!164825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889) lt!674156)))

(declare-fun b!1572908 () Bool)

(assert (=> b!1572908 (= e!877144 (bvsge (x!141644 lt!674156) #b01111111111111111111111111111110))))

(declare-fun b!1572909 () Bool)

(assert (=> b!1572909 (= e!877146 e!877145)))

(declare-fun c!145292 () Bool)

(assert (=> b!1572909 (= c!145292 (or (= lt!674155 k!754) (= (bvadd lt!674155 lt!674155) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1572910 () Bool)

(assert (=> b!1572910 (and (bvsge (index!56859 lt!674156) #b00000000000000000000000000000000) (bvslt (index!56859 lt!674156) (size!51237 _keys!600)))))

(assert (=> b!1572910 (= e!877143 (= (select (arr!50686 _keys!600) (index!56859 lt!674156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1572911 () Bool)

(assert (=> b!1572911 (= e!877144 e!877142)))

(declare-fun res!1074828 () Bool)

(assert (=> b!1572911 (= res!1074828 (and (is-Intermediate!13615 lt!674156) (not (undefined!14427 lt!674156)) (bvslt (x!141644 lt!674156) #b01111111111111111111111111111110) (bvsge (x!141644 lt!674156) #b00000000000000000000000000000000) (bvsge (x!141644 lt!674156) #b00000000000000000000000000000000)))))

(assert (=> b!1572911 (=> (not res!1074828) (not e!877142))))

(declare-fun b!1572912 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572912 (= e!877145 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572913 () Bool)

(assert (=> b!1572913 (= e!877146 (Intermediate!13615 true (toIndex!0 k!754 mask!889) #b00000000000000000000000000000000))))

(declare-fun b!1572914 () Bool)

(assert (=> b!1572914 (and (bvsge (index!56859 lt!674156) #b00000000000000000000000000000000) (bvslt (index!56859 lt!674156) (size!51237 _keys!600)))))

(declare-fun res!1074826 () Bool)

(assert (=> b!1572914 (= res!1074826 (= (select (arr!50686 _keys!600) (index!56859 lt!674156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572914 (=> res!1074826 e!877143)))

(assert (= (and d!164825 c!145293) b!1572913))

(assert (= (and d!164825 (not c!145293)) b!1572909))

(assert (= (and b!1572909 c!145292) b!1572907))

(assert (= (and b!1572909 (not c!145292)) b!1572912))

(assert (= (and d!164825 c!145291) b!1572908))

(assert (= (and d!164825 (not c!145291)) b!1572911))

(assert (= (and b!1572911 res!1074828) b!1572906))

(assert (= (and b!1572906 (not res!1074827)) b!1572914))

(assert (= (and b!1572914 (not res!1074826)) b!1572910))

(declare-fun m!1446579 () Bool)

(assert (=> b!1572910 m!1446579))

(assert (=> b!1572906 m!1446579))

(assert (=> d!164825 m!1446537))

(declare-fun m!1446581 () Bool)

(assert (=> d!164825 m!1446581))

(assert (=> d!164825 m!1446531))

(assert (=> b!1572912 m!1446537))

(declare-fun m!1446583 () Bool)

(assert (=> b!1572912 m!1446583))

(assert (=> b!1572912 m!1446583))

(declare-fun m!1446585 () Bool)

(assert (=> b!1572912 m!1446585))

(assert (=> b!1572914 m!1446579))

(assert (=> b!1572835 d!164825))

(declare-fun d!164835 () Bool)

(declare-fun lt!674168 () (_ BitVec 32))

(declare-fun lt!674167 () (_ BitVec 32))

(assert (=> d!164835 (= lt!674168 (bvmul (bvxor lt!674167 (bvlshr lt!674167 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!164835 (= lt!674167 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!164835 (and (bvsge mask!889 #b00000000000000000000000000000000) (let ((res!1074829 (let ((h!38391 ((_ extract 31 0) (bvand (bvxor k!754 (bvlshr k!754 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!141650 (bvmul (bvxor h!38391 (bvlshr h!38391 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!141650 (bvlshr x!141650 #b00000000000000000000000000001101)) mask!889))))) (and (bvslt res!1074829 (bvadd mask!889 #b00000000000000000000000000000001)) (bvsge res!1074829 #b00000000000000000000000000000000))))))

(assert (=> d!164835 (= (toIndex!0 k!754 mask!889) (bvand (bvxor lt!674168 (bvlshr lt!674168 #b00000000000000000000000000001101)) mask!889))))

(assert (=> b!1572835 d!164835))

(declare-fun b!1572972 () Bool)

(declare-fun e!877179 () SeekEntryResult!13615)

(assert (=> b!1572972 (= e!877179 (MissingVacant!13615 (index!56859 lt!674128)))))

(declare-fun b!1572973 () Bool)

(declare-fun e!877178 () SeekEntryResult!13615)

(assert (=> b!1572973 (= e!877178 (Found!13615 (index!56859 lt!674128)))))

(declare-fun b!1572974 () Bool)

(declare-fun c!145319 () Bool)

(declare-fun lt!674188 () (_ BitVec 64))

(assert (=> b!1572974 (= c!145319 (= lt!674188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1572974 (= e!877178 e!877179)))

(declare-fun b!1572975 () Bool)

(assert (=> b!1572975 (= e!877179 (seekKeyOrZeroReturnVacant!0 (bvadd (x!141644 lt!674128) #b00000000000000000000000000000001) (nextIndex!0 (index!56859 lt!674128) (x!141644 lt!674128) mask!889) (index!56859 lt!674128) k!754 _keys!600 mask!889))))

(declare-fun b!1572976 () Bool)

(declare-fun e!877177 () SeekEntryResult!13615)

(assert (=> b!1572976 (= e!877177 e!877178)))

(declare-fun c!145318 () Bool)

(assert (=> b!1572976 (= c!145318 (= lt!674188 k!754))))

(declare-fun d!164837 () Bool)

(declare-fun lt!674187 () SeekEntryResult!13615)

(assert (=> d!164837 (and (or (is-Undefined!13615 lt!674187) (not (is-Found!13615 lt!674187)) (and (bvsge (index!56858 lt!674187) #b00000000000000000000000000000000) (bvslt (index!56858 lt!674187) (size!51237 _keys!600)))) (or (is-Undefined!13615 lt!674187) (is-Found!13615 lt!674187) (not (is-MissingVacant!13615 lt!674187)) (not (= (index!56860 lt!674187) (index!56859 lt!674128))) (and (bvsge (index!56860 lt!674187) #b00000000000000000000000000000000) (bvslt (index!56860 lt!674187) (size!51237 _keys!600)))) (or (is-Undefined!13615 lt!674187) (ite (is-Found!13615 lt!674187) (= (select (arr!50686 _keys!600) (index!56858 lt!674187)) k!754) (and (is-MissingVacant!13615 lt!674187) (= (index!56860 lt!674187) (index!56859 lt!674128)) (= (select (arr!50686 _keys!600) (index!56860 lt!674187)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!164837 (= lt!674187 e!877177)))

(declare-fun c!145320 () Bool)

(assert (=> d!164837 (= c!145320 (bvsge (x!141644 lt!674128) #b01111111111111111111111111111110))))

(assert (=> d!164837 (= lt!674188 (select (arr!50686 _keys!600) (index!56859 lt!674128)))))

(assert (=> d!164837 (validMask!0 mask!889)))

(assert (=> d!164837 (= (seekKeyOrZeroReturnVacant!0 (x!141644 lt!674128) (index!56859 lt!674128) (index!56859 lt!674128) k!754 _keys!600 mask!889) lt!674187)))

(declare-fun b!1572977 () Bool)

(assert (=> b!1572977 (= e!877177 Undefined!13615)))

(assert (= (and d!164837 c!145320) b!1572977))

(assert (= (and d!164837 (not c!145320)) b!1572976))

(assert (= (and b!1572976 c!145318) b!1572973))

(assert (= (and b!1572976 (not c!145318)) b!1572974))

(assert (= (and b!1572974 c!145319) b!1572972))

(assert (= (and b!1572974 (not c!145319)) b!1572975))

(declare-fun m!1446603 () Bool)

(assert (=> b!1572975 m!1446603))

(assert (=> b!1572975 m!1446603))

(declare-fun m!1446605 () Bool)

(assert (=> b!1572975 m!1446605))

(declare-fun m!1446607 () Bool)

(assert (=> d!164837 m!1446607))

(declare-fun m!1446609 () Bool)

(assert (=> d!164837 m!1446609))

(assert (=> d!164837 m!1446535))

(assert (=> d!164837 m!1446531))

(assert (=> b!1572836 d!164837))

(push 1)

(assert (not b!1572912))

(assert (not b!1572975))

(assert (not d!164825))

(assert (not d!164837))

(check-sat)

(pop 1)

(push 1)

(check-sat)

