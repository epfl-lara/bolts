; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83850 () Bool)

(assert start!83850)

(declare-fun b_free!19631 () Bool)

(declare-fun b_next!19631 () Bool)

(assert (=> start!83850 (= b_free!19631 (not b_next!19631))))

(declare-fun tp!68335 () Bool)

(declare-fun b_and!31369 () Bool)

(assert (=> start!83850 (= tp!68335 b_and!31369)))

(declare-fun b!978936 () Bool)

(declare-fun res!655241 () Bool)

(declare-fun e!551881 () Bool)

(assert (=> b!978936 (=> (not res!655241) (not e!551881))))

(declare-datatypes ((array!61263 0))(
  ( (array!61264 (arr!29485 (Array (_ BitVec 32) (_ BitVec 64))) (size!29965 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61263)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978936 (= res!655241 (validKeyInArray!0 (select (arr!29485 _keys!1544) from!1932)))))

(declare-fun b!978937 () Bool)

(declare-fun e!551882 () Bool)

(declare-fun tp_is_empty!22625 () Bool)

(assert (=> b!978937 (= e!551882 tp_is_empty!22625)))

(declare-fun b!978938 () Bool)

(declare-fun e!551877 () Bool)

(assert (=> b!978938 (= e!551877 tp_is_empty!22625)))

(declare-fun b!978939 () Bool)

(declare-fun res!655240 () Bool)

(assert (=> b!978939 (=> (not res!655240) (not e!551881))))

(declare-datatypes ((List!20566 0))(
  ( (Nil!20563) (Cons!20562 (h!21724 (_ BitVec 64)) (t!29161 List!20566)) )
))
(declare-fun arrayNoDuplicates!0 (array!61263 (_ BitVec 32) List!20566) Bool)

(assert (=> b!978939 (= res!655240 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20563))))

(declare-fun res!655238 () Bool)

(assert (=> start!83850 (=> (not res!655238) (not e!551881))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83850 (= res!655238 (validMask!0 mask!1948))))

(assert (=> start!83850 e!551881))

(assert (=> start!83850 true))

(assert (=> start!83850 tp_is_empty!22625))

(declare-datatypes ((V!35149 0))(
  ( (V!35150 (val!11363 Int)) )
))
(declare-datatypes ((ValueCell!10831 0))(
  ( (ValueCellFull!10831 (v!13925 V!35149)) (EmptyCell!10831) )
))
(declare-datatypes ((array!61265 0))(
  ( (array!61266 (arr!29486 (Array (_ BitVec 32) ValueCell!10831)) (size!29966 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61265)

(declare-fun e!551879 () Bool)

(declare-fun array_inv!22695 (array!61265) Bool)

(assert (=> start!83850 (and (array_inv!22695 _values!1278) e!551879)))

(assert (=> start!83850 tp!68335))

(declare-fun array_inv!22696 (array!61263) Bool)

(assert (=> start!83850 (array_inv!22696 _keys!1544)))

(declare-fun b!978940 () Bool)

(declare-fun res!655237 () Bool)

(assert (=> b!978940 (=> (not res!655237) (not e!551881))))

(assert (=> b!978940 (= res!655237 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29965 _keys!1544))))))

(declare-fun mapIsEmpty!35966 () Bool)

(declare-fun mapRes!35966 () Bool)

(assert (=> mapIsEmpty!35966 mapRes!35966))

(declare-fun b!978941 () Bool)

(declare-fun res!655242 () Bool)

(assert (=> b!978941 (=> (not res!655242) (not e!551881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61263 (_ BitVec 32)) Bool)

(assert (=> b!978941 (= res!655242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978942 () Bool)

(declare-fun res!655235 () Bool)

(assert (=> b!978942 (=> (not res!655235) (not e!551881))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978942 (= res!655235 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978943 () Bool)

(declare-fun res!655236 () Bool)

(assert (=> b!978943 (=> (not res!655236) (not e!551881))))

(assert (=> b!978943 (= res!655236 (and (= (size!29966 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29965 _keys!1544) (size!29966 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978944 () Bool)

(declare-fun e!551878 () Bool)

(assert (=> b!978944 (= e!551881 (not e!551878))))

(declare-fun res!655239 () Bool)

(assert (=> b!978944 (=> res!655239 e!551878)))

(assert (=> b!978944 (= res!655239 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29485 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14668 0))(
  ( (tuple2!14669 (_1!7344 (_ BitVec 64)) (_2!7344 V!35149)) )
))
(declare-fun lt!434102 () tuple2!14668)

(declare-datatypes ((List!20567 0))(
  ( (Nil!20564) (Cons!20563 (h!21725 tuple2!14668) (t!29162 List!20567)) )
))
(declare-datatypes ((ListLongMap!13379 0))(
  ( (ListLongMap!13380 (toList!6705 List!20567)) )
))
(declare-fun lt!434103 () ListLongMap!13379)

(declare-fun lt!434100 () ListLongMap!13379)

(declare-fun lt!434101 () tuple2!14668)

(declare-fun +!2911 (ListLongMap!13379 tuple2!14668) ListLongMap!13379)

(assert (=> b!978944 (= (+!2911 lt!434100 lt!434102) (+!2911 lt!434103 lt!434101))))

(declare-fun lt!434097 () ListLongMap!13379)

(assert (=> b!978944 (= lt!434103 (+!2911 lt!434097 lt!434102))))

(declare-fun lt!434099 () V!35149)

(assert (=> b!978944 (= lt!434102 (tuple2!14669 (select (arr!29485 _keys!1544) from!1932) lt!434099))))

(assert (=> b!978944 (= lt!434100 (+!2911 lt!434097 lt!434101))))

(declare-fun minValue!1220 () V!35149)

(assert (=> b!978944 (= lt!434101 (tuple2!14669 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32497 0))(
  ( (Unit!32498) )
))
(declare-fun lt!434096 () Unit!32497)

(declare-fun addCommutativeForDiffKeys!573 (ListLongMap!13379 (_ BitVec 64) V!35149 (_ BitVec 64) V!35149) Unit!32497)

(assert (=> b!978944 (= lt!434096 (addCommutativeForDiffKeys!573 lt!434097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29485 _keys!1544) from!1932) lt!434099))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15288 (ValueCell!10831 V!35149) V!35149)

(declare-fun dynLambda!1747 (Int (_ BitVec 64)) V!35149)

(assert (=> b!978944 (= lt!434099 (get!15288 (select (arr!29486 _values!1278) from!1932) (dynLambda!1747 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434104 () ListLongMap!13379)

(declare-fun lt!434098 () tuple2!14668)

(assert (=> b!978944 (= lt!434097 (+!2911 lt!434104 lt!434098))))

(declare-fun zeroValue!1220 () V!35149)

(assert (=> b!978944 (= lt!434098 (tuple2!14669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3372 (array!61263 array!61265 (_ BitVec 32) (_ BitVec 32) V!35149 V!35149 (_ BitVec 32) Int) ListLongMap!13379)

(assert (=> b!978944 (= lt!434104 (getCurrentListMapNoExtraKeys!3372 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!978945 () Bool)

(assert (=> b!978945 (= e!551879 (and e!551877 mapRes!35966))))

(declare-fun condMapEmpty!35966 () Bool)

(declare-fun mapDefault!35966 () ValueCell!10831)

