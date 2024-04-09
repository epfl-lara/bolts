; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105656 () Bool)

(assert start!105656)

(declare-fun b_free!27221 () Bool)

(declare-fun b_next!27221 () Bool)

(assert (=> start!105656 (= b_free!27221 (not b_next!27221))))

(declare-fun tp!95187 () Bool)

(declare-fun b_and!45105 () Bool)

(assert (=> start!105656 (= tp!95187 b_and!45105)))

(declare-fun b!1258031 () Bool)

(declare-fun e!715480 () Bool)

(declare-fun tp_is_empty!32123 () Bool)

(assert (=> b!1258031 (= e!715480 tp_is_empty!32123)))

(declare-fun b!1258032 () Bool)

(declare-fun res!838595 () Bool)

(declare-fun e!715476 () Bool)

(assert (=> b!1258032 (=> (not res!838595) (not e!715476))))

(declare-datatypes ((array!81869 0))(
  ( (array!81870 (arr!39486 (Array (_ BitVec 32) (_ BitVec 64))) (size!40023 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81869)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81869 (_ BitVec 32)) Bool)

(assert (=> b!1258032 (= res!838595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258033 () Bool)

(declare-fun e!715479 () Bool)

(assert (=> b!1258033 (= e!715479 true)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48195 0))(
  ( (V!48196 (val!16124 Int)) )
))
(declare-datatypes ((tuple2!20990 0))(
  ( (tuple2!20991 (_1!10505 (_ BitVec 64)) (_2!10505 V!48195)) )
))
(declare-datatypes ((List!28221 0))(
  ( (Nil!28218) (Cons!28217 (h!29426 tuple2!20990) (t!41721 List!28221)) )
))
(declare-datatypes ((ListLongMap!18875 0))(
  ( (ListLongMap!18876 (toList!9453 List!28221)) )
))
(declare-fun lt!568984 () ListLongMap!18875)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48195)

(declare-datatypes ((ValueCell!15298 0))(
  ( (ValueCellFull!15298 (v!18826 V!48195)) (EmptyCell!15298) )
))
(declare-datatypes ((array!81871 0))(
  ( (array!81872 (arr!39487 (Array (_ BitVec 32) ValueCell!15298)) (size!40024 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81871)

(declare-fun minValueBefore!43 () V!48195)

(declare-fun getCurrentListMap!4593 (array!81869 array!81871 (_ BitVec 32) (_ BitVec 32) V!48195 V!48195 (_ BitVec 32) Int) ListLongMap!18875)

(assert (=> b!1258033 (= lt!568984 (getCurrentListMap!4593 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!838594 () Bool)

(assert (=> start!105656 (=> (not res!838594) (not e!715476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105656 (= res!838594 (validMask!0 mask!1466))))

(assert (=> start!105656 e!715476))

(assert (=> start!105656 true))

(assert (=> start!105656 tp!95187))

(assert (=> start!105656 tp_is_empty!32123))

(declare-fun array_inv!30025 (array!81869) Bool)

(assert (=> start!105656 (array_inv!30025 _keys!1118)))

(declare-fun e!715478 () Bool)

(declare-fun array_inv!30026 (array!81871) Bool)

(assert (=> start!105656 (and (array_inv!30026 _values!914) e!715478)))

(declare-fun b!1258034 () Bool)

(declare-fun res!838596 () Bool)

(assert (=> b!1258034 (=> (not res!838596) (not e!715476))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1258034 (= res!838596 (and (= (size!40024 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40023 _keys!1118) (size!40024 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49978 () Bool)

(declare-fun mapRes!49978 () Bool)

(declare-fun tp!95186 () Bool)

(assert (=> mapNonEmpty!49978 (= mapRes!49978 (and tp!95186 e!715480))))

(declare-fun mapKey!49978 () (_ BitVec 32))

(declare-fun mapRest!49978 () (Array (_ BitVec 32) ValueCell!15298))

(declare-fun mapValue!49978 () ValueCell!15298)

(assert (=> mapNonEmpty!49978 (= (arr!39487 _values!914) (store mapRest!49978 mapKey!49978 mapValue!49978))))

(declare-fun b!1258035 () Bool)

(assert (=> b!1258035 (= e!715476 (not e!715479))))

(declare-fun res!838598 () Bool)

(assert (=> b!1258035 (=> res!838598 e!715479)))

(assert (=> b!1258035 (= res!838598 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!568985 () ListLongMap!18875)

(declare-fun lt!568983 () ListLongMap!18875)

(assert (=> b!1258035 (= lt!568985 lt!568983)))

(declare-datatypes ((Unit!41880 0))(
  ( (Unit!41881) )
))
(declare-fun lt!568986 () Unit!41880)

(declare-fun minValueAfter!43 () V!48195)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1123 (array!81869 array!81871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48195 V!48195 V!48195 V!48195 (_ BitVec 32) Int) Unit!41880)

(assert (=> b!1258035 (= lt!568986 (lemmaNoChangeToArrayThenSameMapNoExtras!1123 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5805 (array!81869 array!81871 (_ BitVec 32) (_ BitVec 32) V!48195 V!48195 (_ BitVec 32) Int) ListLongMap!18875)

(assert (=> b!1258035 (= lt!568983 (getCurrentListMapNoExtraKeys!5805 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258035 (= lt!568985 (getCurrentListMapNoExtraKeys!5805 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49978 () Bool)

(assert (=> mapIsEmpty!49978 mapRes!49978))

(declare-fun b!1258036 () Bool)

(declare-fun e!715475 () Bool)

(assert (=> b!1258036 (= e!715475 tp_is_empty!32123)))

(declare-fun b!1258037 () Bool)

(declare-fun res!838597 () Bool)

(assert (=> b!1258037 (=> (not res!838597) (not e!715476))))

(declare-datatypes ((List!28222 0))(
  ( (Nil!28219) (Cons!28218 (h!29427 (_ BitVec 64)) (t!41722 List!28222)) )
))
(declare-fun arrayNoDuplicates!0 (array!81869 (_ BitVec 32) List!28222) Bool)

(assert (=> b!1258037 (= res!838597 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28219))))

(declare-fun b!1258038 () Bool)

(assert (=> b!1258038 (= e!715478 (and e!715475 mapRes!49978))))

(declare-fun condMapEmpty!49978 () Bool)

(declare-fun mapDefault!49978 () ValueCell!15298)

