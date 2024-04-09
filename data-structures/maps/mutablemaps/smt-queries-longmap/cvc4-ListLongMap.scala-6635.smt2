; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83814 () Bool)

(assert start!83814)

(declare-fun b_free!19595 () Bool)

(declare-fun b_next!19595 () Bool)

(assert (=> start!83814 (= b_free!19595 (not b_next!19595))))

(declare-fun tp!68228 () Bool)

(declare-fun b_and!31297 () Bool)

(assert (=> start!83814 (= tp!68228 b_and!31297)))

(declare-fun b!978343 () Bool)

(declare-fun res!654845 () Bool)

(declare-fun e!551591 () Bool)

(assert (=> b!978343 (=> (not res!654845) (not e!551591))))

(declare-datatypes ((array!61193 0))(
  ( (array!61194 (arr!29450 (Array (_ BitVec 32) (_ BitVec 64))) (size!29930 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61193)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61193 (_ BitVec 32)) Bool)

(assert (=> b!978343 (= res!654845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978344 () Bool)

(declare-fun e!551592 () Bool)

(declare-fun tp_is_empty!22589 () Bool)

(assert (=> b!978344 (= e!551592 tp_is_empty!22589)))

(declare-fun res!654846 () Bool)

(assert (=> start!83814 (=> (not res!654846) (not e!551591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83814 (= res!654846 (validMask!0 mask!1948))))

(assert (=> start!83814 e!551591))

(assert (=> start!83814 true))

(assert (=> start!83814 tp_is_empty!22589))

(declare-datatypes ((V!35101 0))(
  ( (V!35102 (val!11345 Int)) )
))
(declare-datatypes ((ValueCell!10813 0))(
  ( (ValueCellFull!10813 (v!13907 V!35101)) (EmptyCell!10813) )
))
(declare-datatypes ((array!61195 0))(
  ( (array!61196 (arr!29451 (Array (_ BitVec 32) ValueCell!10813)) (size!29931 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61195)

(declare-fun e!551594 () Bool)

(declare-fun array_inv!22663 (array!61195) Bool)

(assert (=> start!83814 (and (array_inv!22663 _values!1278) e!551594)))

(assert (=> start!83814 tp!68228))

(declare-fun array_inv!22664 (array!61193) Bool)

(assert (=> start!83814 (array_inv!22664 _keys!1544)))

(declare-fun b!978345 () Bool)

(declare-fun res!654840 () Bool)

(assert (=> b!978345 (=> (not res!654840) (not e!551591))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978345 (= res!654840 (and (= (size!29931 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29930 _keys!1544) (size!29931 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978346 () Bool)

(declare-fun res!654844 () Bool)

(assert (=> b!978346 (=> (not res!654844) (not e!551591))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!978346 (= res!654844 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29930 _keys!1544))))))

(declare-fun b!978347 () Bool)

(declare-fun res!654841 () Bool)

(assert (=> b!978347 (=> (not res!654841) (not e!551591))))

(assert (=> b!978347 (= res!654841 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978348 () Bool)

(declare-fun res!654843 () Bool)

(assert (=> b!978348 (=> (not res!654843) (not e!551591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978348 (= res!654843 (validKeyInArray!0 (select (arr!29450 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!35912 () Bool)

(declare-fun mapRes!35912 () Bool)

(assert (=> mapIsEmpty!35912 mapRes!35912))

(declare-fun b!978349 () Bool)

(declare-fun res!654842 () Bool)

(assert (=> b!978349 (=> (not res!654842) (not e!551591))))

(declare-datatypes ((List!20544 0))(
  ( (Nil!20541) (Cons!20540 (h!21702 (_ BitVec 64)) (t!29103 List!20544)) )
))
(declare-fun arrayNoDuplicates!0 (array!61193 (_ BitVec 32) List!20544) Bool)

(assert (=> b!978349 (= res!654842 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20541))))

(declare-fun b!978350 () Bool)

(assert (=> b!978350 (= e!551591 (not true))))

(declare-datatypes ((tuple2!14644 0))(
  ( (tuple2!14645 (_1!7332 (_ BitVec 64)) (_2!7332 V!35101)) )
))
(declare-datatypes ((List!20545 0))(
  ( (Nil!20542) (Cons!20541 (h!21703 tuple2!14644) (t!29104 List!20545)) )
))
(declare-datatypes ((ListLongMap!13355 0))(
  ( (ListLongMap!13356 (toList!6693 List!20545)) )
))
(declare-fun lt!433743 () ListLongMap!13355)

(declare-fun lt!433742 () tuple2!14644)

(declare-fun lt!433744 () tuple2!14644)

(declare-fun +!2899 (ListLongMap!13355 tuple2!14644) ListLongMap!13355)

(assert (=> b!978350 (= (+!2899 (+!2899 lt!433743 lt!433742) lt!433744) (+!2899 (+!2899 lt!433743 lt!433744) lt!433742))))

(declare-fun lt!433741 () V!35101)

(assert (=> b!978350 (= lt!433744 (tuple2!14645 (select (arr!29450 _keys!1544) from!1932) lt!433741))))

(declare-fun minValue!1220 () V!35101)

(assert (=> b!978350 (= lt!433742 (tuple2!14645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32473 0))(
  ( (Unit!32474) )
))
(declare-fun lt!433740 () Unit!32473)

(declare-fun addCommutativeForDiffKeys!561 (ListLongMap!13355 (_ BitVec 64) V!35101 (_ BitVec 64) V!35101) Unit!32473)

(assert (=> b!978350 (= lt!433740 (addCommutativeForDiffKeys!561 lt!433743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29450 _keys!1544) from!1932) lt!433741))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15264 (ValueCell!10813 V!35101) V!35101)

(declare-fun dynLambda!1735 (Int (_ BitVec 64)) V!35101)

(assert (=> b!978350 (= lt!433741 (get!15264 (select (arr!29451 _values!1278) from!1932) (dynLambda!1735 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35101)

(declare-fun getCurrentListMapNoExtraKeys!3360 (array!61193 array!61195 (_ BitVec 32) (_ BitVec 32) V!35101 V!35101 (_ BitVec 32) Int) ListLongMap!13355)

(assert (=> b!978350 (= lt!433743 (+!2899 (getCurrentListMapNoExtraKeys!3360 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14645 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun mapNonEmpty!35912 () Bool)

(declare-fun tp!68227 () Bool)

(assert (=> mapNonEmpty!35912 (= mapRes!35912 (and tp!68227 e!551592))))

(declare-fun mapRest!35912 () (Array (_ BitVec 32) ValueCell!10813))

(declare-fun mapKey!35912 () (_ BitVec 32))

(declare-fun mapValue!35912 () ValueCell!10813)

(assert (=> mapNonEmpty!35912 (= (arr!29451 _values!1278) (store mapRest!35912 mapKey!35912 mapValue!35912))))

(declare-fun b!978351 () Bool)

(declare-fun e!551590 () Bool)

(assert (=> b!978351 (= e!551590 tp_is_empty!22589)))

(declare-fun b!978352 () Bool)

(assert (=> b!978352 (= e!551594 (and e!551590 mapRes!35912))))

(declare-fun condMapEmpty!35912 () Bool)

(declare-fun mapDefault!35912 () ValueCell!10813)

