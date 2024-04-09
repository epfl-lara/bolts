; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105780 () Bool)

(assert start!105780)

(declare-fun b_free!27329 () Bool)

(declare-fun b_next!27329 () Bool)

(assert (=> start!105780 (= b_free!27329 (not b_next!27329))))

(declare-fun tp!95514 () Bool)

(declare-fun b_and!45223 () Bool)

(assert (=> start!105780 (= tp!95514 b_and!45223)))

(declare-fun mapIsEmpty!50143 () Bool)

(declare-fun mapRes!50143 () Bool)

(assert (=> mapIsEmpty!50143 mapRes!50143))

(declare-fun e!716640 () Bool)

(declare-fun b!1259572 () Bool)

(declare-datatypes ((V!48339 0))(
  ( (V!48340 (val!16178 Int)) )
))
(declare-datatypes ((tuple2!21078 0))(
  ( (tuple2!21079 (_1!10549 (_ BitVec 64)) (_2!10549 V!48339)) )
))
(declare-datatypes ((List!28304 0))(
  ( (Nil!28301) (Cons!28300 (h!29509 tuple2!21078) (t!41806 List!28304)) )
))
(declare-datatypes ((ListLongMap!18963 0))(
  ( (ListLongMap!18964 (toList!9497 List!28304)) )
))
(declare-fun lt!570251 () ListLongMap!18963)

(declare-fun lt!570246 () ListLongMap!18963)

(declare-fun lt!570247 () tuple2!21078)

(declare-fun +!4194 (ListLongMap!18963 tuple2!21078) ListLongMap!18963)

(assert (=> b!1259572 (= e!716640 (= lt!570246 (+!4194 lt!570251 lt!570247)))))

(declare-fun b!1259573 () Bool)

(declare-fun e!716638 () Bool)

(declare-fun tp_is_empty!32231 () Bool)

(assert (=> b!1259573 (= e!716638 tp_is_empty!32231)))

(declare-fun b!1259574 () Bool)

(declare-fun e!716639 () Bool)

(declare-fun e!716642 () Bool)

(assert (=> b!1259574 (= e!716639 e!716642)))

(declare-fun res!839562 () Bool)

(assert (=> b!1259574 (=> res!839562 e!716642)))

(declare-fun lt!570249 () ListLongMap!18963)

(declare-fun -!2127 (ListLongMap!18963 (_ BitVec 64)) ListLongMap!18963)

(assert (=> b!1259574 (= res!839562 (not (= (-!2127 lt!570249 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570246)))))

(declare-fun lt!570250 () ListLongMap!18963)

(declare-fun lt!570248 () ListLongMap!18963)

(assert (=> b!1259574 (= (-!2127 lt!570250 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570248)))

(declare-datatypes ((Unit!41961 0))(
  ( (Unit!41962) )
))
(declare-fun lt!570252 () Unit!41961)

(declare-fun minValueBefore!43 () V!48339)

(declare-fun addThenRemoveForNewKeyIsSame!352 (ListLongMap!18963 (_ BitVec 64) V!48339) Unit!41961)

(assert (=> b!1259574 (= lt!570252 (addThenRemoveForNewKeyIsSame!352 lt!570248 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259574 e!716640))

(declare-fun res!839561 () Bool)

(assert (=> b!1259574 (=> (not res!839561) (not e!716640))))

(assert (=> b!1259574 (= res!839561 (= lt!570249 lt!570250))))

(assert (=> b!1259574 (= lt!570250 (+!4194 lt!570248 (tuple2!21079 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570245 () ListLongMap!18963)

(assert (=> b!1259574 (= lt!570248 (+!4194 lt!570245 lt!570247))))

(declare-fun zeroValue!871 () V!48339)

(assert (=> b!1259574 (= lt!570247 (tuple2!21079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48339)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82075 0))(
  ( (array!82076 (arr!39588 (Array (_ BitVec 32) (_ BitVec 64))) (size!40125 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82075)

(declare-datatypes ((ValueCell!15352 0))(
  ( (ValueCellFull!15352 (v!18880 V!48339)) (EmptyCell!15352) )
))
(declare-datatypes ((array!82077 0))(
  ( (array!82078 (arr!39589 (Array (_ BitVec 32) ValueCell!15352)) (size!40126 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82077)

(declare-fun getCurrentListMap!4631 (array!82075 array!82077 (_ BitVec 32) (_ BitVec 32) V!48339 V!48339 (_ BitVec 32) Int) ListLongMap!18963)

(assert (=> b!1259574 (= lt!570246 (getCurrentListMap!4631 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259574 (= lt!570249 (getCurrentListMap!4631 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259575 () Bool)

(assert (=> b!1259575 (= e!716642 (bvsle #b00000000000000000000000000000000 (size!40125 _keys!1118)))))

(declare-fun b!1259576 () Bool)

(declare-fun e!716645 () Bool)

(declare-fun e!716643 () Bool)

(assert (=> b!1259576 (= e!716645 (and e!716643 mapRes!50143))))

(declare-fun condMapEmpty!50143 () Bool)

(declare-fun mapDefault!50143 () ValueCell!15352)

