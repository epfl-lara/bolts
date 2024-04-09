; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83852 () Bool)

(assert start!83852)

(declare-fun b_free!19633 () Bool)

(declare-fun b_next!19633 () Bool)

(assert (=> start!83852 (= b_free!19633 (not b_next!19633))))

(declare-fun tp!68341 () Bool)

(declare-fun b_and!31373 () Bool)

(assert (=> start!83852 (= tp!68341 b_and!31373)))

(declare-fun res!655265 () Bool)

(declare-fun e!551895 () Bool)

(assert (=> start!83852 (=> (not res!655265) (not e!551895))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83852 (= res!655265 (validMask!0 mask!1948))))

(assert (=> start!83852 e!551895))

(assert (=> start!83852 true))

(declare-fun tp_is_empty!22627 () Bool)

(assert (=> start!83852 tp_is_empty!22627))

(declare-datatypes ((V!35153 0))(
  ( (V!35154 (val!11364 Int)) )
))
(declare-datatypes ((ValueCell!10832 0))(
  ( (ValueCellFull!10832 (v!13926 V!35153)) (EmptyCell!10832) )
))
(declare-datatypes ((array!61267 0))(
  ( (array!61268 (arr!29487 (Array (_ BitVec 32) ValueCell!10832)) (size!29967 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61267)

(declare-fun e!551899 () Bool)

(declare-fun array_inv!22697 (array!61267) Bool)

(assert (=> start!83852 (and (array_inv!22697 _values!1278) e!551899)))

(assert (=> start!83852 tp!68341))

(declare-datatypes ((array!61269 0))(
  ( (array!61270 (arr!29488 (Array (_ BitVec 32) (_ BitVec 64))) (size!29968 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61269)

(declare-fun array_inv!22698 (array!61269) Bool)

(assert (=> start!83852 (array_inv!22698 _keys!1544)))

(declare-fun b!978971 () Bool)

(declare-fun res!655266 () Bool)

(assert (=> b!978971 (=> (not res!655266) (not e!551895))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978971 (= res!655266 (and (= (size!29967 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29968 _keys!1544) (size!29967 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978972 () Bool)

(declare-fun e!551897 () Bool)

(assert (=> b!978972 (= e!551897 true)))

(declare-datatypes ((tuple2!14670 0))(
  ( (tuple2!14671 (_1!7345 (_ BitVec 64)) (_2!7345 V!35153)) )
))
(declare-datatypes ((List!20568 0))(
  ( (Nil!20565) (Cons!20564 (h!21726 tuple2!14670) (t!29165 List!20568)) )
))
(declare-datatypes ((ListLongMap!13381 0))(
  ( (ListLongMap!13382 (toList!6706 List!20568)) )
))
(declare-fun lt!434130 () ListLongMap!13381)

(declare-fun lt!434132 () tuple2!14670)

(declare-fun lt!434134 () tuple2!14670)

(declare-fun lt!434128 () ListLongMap!13381)

(declare-fun +!2912 (ListLongMap!13381 tuple2!14670) ListLongMap!13381)

(assert (=> b!978972 (= lt!434128 (+!2912 (+!2912 lt!434130 lt!434132) lt!434134))))

(declare-fun lt!434133 () V!35153)

(declare-fun zeroValue!1220 () V!35153)

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((Unit!32499 0))(
  ( (Unit!32500) )
))
(declare-fun lt!434131 () Unit!32499)

(declare-fun addCommutativeForDiffKeys!574 (ListLongMap!13381 (_ BitVec 64) V!35153 (_ BitVec 64) V!35153) Unit!32499)

(assert (=> b!978972 (= lt!434131 (addCommutativeForDiffKeys!574 lt!434130 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29488 _keys!1544) from!1932) lt!434133))))

(declare-fun b!978973 () Bool)

(declare-fun res!655260 () Bool)

(assert (=> b!978973 (=> (not res!655260) (not e!551895))))

(assert (=> b!978973 (= res!655260 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978974 () Bool)

(assert (=> b!978974 (= e!551895 (not e!551897))))

(declare-fun res!655261 () Bool)

(assert (=> b!978974 (=> res!655261 e!551897)))

(assert (=> b!978974 (= res!655261 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29488 _keys!1544) from!1932)))))

(declare-fun lt!434127 () tuple2!14670)

(declare-fun lt!434125 () ListLongMap!13381)

(assert (=> b!978974 (= (+!2912 lt!434125 lt!434132) (+!2912 lt!434128 lt!434127))))

(declare-fun lt!434129 () ListLongMap!13381)

(assert (=> b!978974 (= lt!434128 (+!2912 lt!434129 lt!434132))))

(assert (=> b!978974 (= lt!434132 (tuple2!14671 (select (arr!29488 _keys!1544) from!1932) lt!434133))))

(assert (=> b!978974 (= lt!434125 (+!2912 lt!434129 lt!434127))))

(declare-fun minValue!1220 () V!35153)

(assert (=> b!978974 (= lt!434127 (tuple2!14671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!434126 () Unit!32499)

(assert (=> b!978974 (= lt!434126 (addCommutativeForDiffKeys!574 lt!434129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29488 _keys!1544) from!1932) lt!434133))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15291 (ValueCell!10832 V!35153) V!35153)

(declare-fun dynLambda!1748 (Int (_ BitVec 64)) V!35153)

(assert (=> b!978974 (= lt!434133 (get!15291 (select (arr!29487 _values!1278) from!1932) (dynLambda!1748 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!978974 (= lt!434129 (+!2912 lt!434130 lt!434134))))

(assert (=> b!978974 (= lt!434134 (tuple2!14671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3373 (array!61269 array!61267 (_ BitVec 32) (_ BitVec 32) V!35153 V!35153 (_ BitVec 32) Int) ListLongMap!13381)

(assert (=> b!978974 (= lt!434130 (getCurrentListMapNoExtraKeys!3373 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!978975 () Bool)

(declare-fun res!655262 () Bool)

(assert (=> b!978975 (=> (not res!655262) (not e!551895))))

(assert (=> b!978975 (= res!655262 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29968 _keys!1544))))))

(declare-fun b!978976 () Bool)

(declare-fun e!551900 () Bool)

(assert (=> b!978976 (= e!551900 tp_is_empty!22627)))

(declare-fun b!978977 () Bool)

(declare-fun res!655263 () Bool)

(assert (=> b!978977 (=> (not res!655263) (not e!551895))))

(declare-datatypes ((List!20569 0))(
  ( (Nil!20566) (Cons!20565 (h!21727 (_ BitVec 64)) (t!29166 List!20569)) )
))
(declare-fun arrayNoDuplicates!0 (array!61269 (_ BitVec 32) List!20569) Bool)

(assert (=> b!978977 (= res!655263 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20566))))

(declare-fun b!978978 () Bool)

(declare-fun mapRes!35969 () Bool)

(assert (=> b!978978 (= e!551899 (and e!551900 mapRes!35969))))

(declare-fun condMapEmpty!35969 () Bool)

(declare-fun mapDefault!35969 () ValueCell!10832)

