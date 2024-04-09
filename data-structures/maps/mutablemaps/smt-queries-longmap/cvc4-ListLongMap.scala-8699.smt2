; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105668 () Bool)

(assert start!105668)

(declare-fun b_free!27233 () Bool)

(declare-fun b_next!27233 () Bool)

(assert (=> start!105668 (= b_free!27233 (not b_next!27233))))

(declare-fun tp!95223 () Bool)

(declare-fun b_and!45117 () Bool)

(assert (=> start!105668 (= tp!95223 b_and!45117)))

(declare-fun mapIsEmpty!49996 () Bool)

(declare-fun mapRes!49996 () Bool)

(assert (=> mapIsEmpty!49996 mapRes!49996))

(declare-fun b!1258175 () Bool)

(declare-fun e!715585 () Bool)

(assert (=> b!1258175 (= e!715585 true)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!48211 0))(
  ( (V!48212 (val!16130 Int)) )
))
(declare-fun zeroValue!871 () V!48211)

(declare-datatypes ((array!81893 0))(
  ( (array!81894 (arr!39498 (Array (_ BitVec 32) (_ BitVec 64))) (size!40035 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81893)

(declare-datatypes ((ValueCell!15304 0))(
  ( (ValueCellFull!15304 (v!18832 V!48211)) (EmptyCell!15304) )
))
(declare-datatypes ((array!81895 0))(
  ( (array!81896 (arr!39499 (Array (_ BitVec 32) ValueCell!15304)) (size!40036 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81895)

(declare-datatypes ((tuple2!21000 0))(
  ( (tuple2!21001 (_1!10510 (_ BitVec 64)) (_2!10510 V!48211)) )
))
(declare-datatypes ((List!28232 0))(
  ( (Nil!28229) (Cons!28228 (h!29437 tuple2!21000) (t!41732 List!28232)) )
))
(declare-datatypes ((ListLongMap!18885 0))(
  ( (ListLongMap!18886 (toList!9458 List!28232)) )
))
(declare-fun lt!569057 () ListLongMap!18885)

(declare-fun minValueBefore!43 () V!48211)

(declare-fun getCurrentListMap!4598 (array!81893 array!81895 (_ BitVec 32) (_ BitVec 32) V!48211 V!48211 (_ BitVec 32) Int) ListLongMap!18885)

(assert (=> b!1258175 (= lt!569057 (getCurrentListMap!4598 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258176 () Bool)

(declare-fun res!838688 () Bool)

(declare-fun e!715587 () Bool)

(assert (=> b!1258176 (=> (not res!838688) (not e!715587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81893 (_ BitVec 32)) Bool)

(assert (=> b!1258176 (= res!838688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258177 () Bool)

(assert (=> b!1258177 (= e!715587 (not e!715585))))

(declare-fun res!838687 () Bool)

(assert (=> b!1258177 (=> res!838687 e!715585)))

(assert (=> b!1258177 (= res!838687 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569056 () ListLongMap!18885)

(declare-fun lt!569058 () ListLongMap!18885)

(assert (=> b!1258177 (= lt!569056 lt!569058)))

(declare-fun minValueAfter!43 () V!48211)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41888 0))(
  ( (Unit!41889) )
))
(declare-fun lt!569055 () Unit!41888)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1127 (array!81893 array!81895 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48211 V!48211 V!48211 V!48211 (_ BitVec 32) Int) Unit!41888)

(assert (=> b!1258177 (= lt!569055 (lemmaNoChangeToArrayThenSameMapNoExtras!1127 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5809 (array!81893 array!81895 (_ BitVec 32) (_ BitVec 32) V!48211 V!48211 (_ BitVec 32) Int) ListLongMap!18885)

(assert (=> b!1258177 (= lt!569058 (getCurrentListMapNoExtraKeys!5809 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258177 (= lt!569056 (getCurrentListMapNoExtraKeys!5809 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258178 () Bool)

(declare-fun e!715584 () Bool)

(declare-fun tp_is_empty!32135 () Bool)

(assert (=> b!1258178 (= e!715584 tp_is_empty!32135)))

(declare-fun b!1258179 () Bool)

(declare-fun e!715588 () Bool)

(assert (=> b!1258179 (= e!715588 tp_is_empty!32135)))

(declare-fun b!1258180 () Bool)

(declare-fun res!838684 () Bool)

(assert (=> b!1258180 (=> (not res!838684) (not e!715587))))

(declare-datatypes ((List!28233 0))(
  ( (Nil!28230) (Cons!28229 (h!29438 (_ BitVec 64)) (t!41733 List!28233)) )
))
(declare-fun arrayNoDuplicates!0 (array!81893 (_ BitVec 32) List!28233) Bool)

(assert (=> b!1258180 (= res!838684 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28230))))

(declare-fun mapNonEmpty!49996 () Bool)

(declare-fun tp!95222 () Bool)

(assert (=> mapNonEmpty!49996 (= mapRes!49996 (and tp!95222 e!715588))))

(declare-fun mapRest!49996 () (Array (_ BitVec 32) ValueCell!15304))

(declare-fun mapKey!49996 () (_ BitVec 32))

(declare-fun mapValue!49996 () ValueCell!15304)

(assert (=> mapNonEmpty!49996 (= (arr!39499 _values!914) (store mapRest!49996 mapKey!49996 mapValue!49996))))

(declare-fun b!1258181 () Bool)

(declare-fun res!838685 () Bool)

(assert (=> b!1258181 (=> (not res!838685) (not e!715587))))

(assert (=> b!1258181 (= res!838685 (and (= (size!40036 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40035 _keys!1118) (size!40036 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258182 () Bool)

(declare-fun e!715586 () Bool)

(assert (=> b!1258182 (= e!715586 (and e!715584 mapRes!49996))))

(declare-fun condMapEmpty!49996 () Bool)

(declare-fun mapDefault!49996 () ValueCell!15304)

