; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107370 () Bool)

(assert start!107370)

(declare-fun b_free!27653 () Bool)

(declare-fun b_next!27653 () Bool)

(assert (=> start!107370 (= b_free!27653 (not b_next!27653))))

(declare-fun tp!97465 () Bool)

(declare-fun b_and!45695 () Bool)

(assert (=> start!107370 (= tp!97465 b_and!45695)))

(declare-fun b!1271965 () Bool)

(declare-fun res!846262 () Bool)

(declare-fun e!725483 () Bool)

(assert (=> b!1271965 (=> (not res!846262) (not e!725483))))

(declare-datatypes ((array!83237 0))(
  ( (array!83238 (arr!40151 (Array (_ BitVec 32) (_ BitVec 64))) (size!40688 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83237)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83237 (_ BitVec 32)) Bool)

(assert (=> b!1271965 (= res!846262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!51115 () Bool)

(declare-fun mapRes!51115 () Bool)

(declare-fun tp!97466 () Bool)

(declare-fun e!725479 () Bool)

(assert (=> mapNonEmpty!51115 (= mapRes!51115 (and tp!97466 e!725479))))

(declare-datatypes ((V!49223 0))(
  ( (V!49224 (val!16586 Int)) )
))
(declare-datatypes ((ValueCell!15658 0))(
  ( (ValueCellFull!15658 (v!19221 V!49223)) (EmptyCell!15658) )
))
(declare-datatypes ((array!83239 0))(
  ( (array!83240 (arr!40152 (Array (_ BitVec 32) ValueCell!15658)) (size!40689 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83239)

(declare-fun mapValue!51115 () ValueCell!15658)

(declare-fun mapRest!51115 () (Array (_ BitVec 32) ValueCell!15658))

(declare-fun mapKey!51115 () (_ BitVec 32))

(assert (=> mapNonEmpty!51115 (= (arr!40152 _values!1134) (store mapRest!51115 mapKey!51115 mapValue!51115))))

(declare-fun b!1271966 () Bool)

(declare-fun e!725482 () Bool)

(declare-fun tp_is_empty!33023 () Bool)

(assert (=> b!1271966 (= e!725482 tp_is_empty!33023)))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun minValueAfter!52 () V!49223)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!49223)

(declare-fun b!1271967 () Bool)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!49223)

(declare-fun zeroValueBefore!52 () V!49223)

(declare-datatypes ((tuple2!21514 0))(
  ( (tuple2!21515 (_1!10767 (_ BitVec 64)) (_2!10767 V!49223)) )
))
(declare-datatypes ((List!28709 0))(
  ( (Nil!28706) (Cons!28705 (h!29914 tuple2!21514) (t!42245 List!28709)) )
))
(declare-datatypes ((ListLongMap!19255 0))(
  ( (ListLongMap!19256 (toList!9643 List!28709)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5951 (array!83237 array!83239 (_ BitVec 32) (_ BitVec 32) V!49223 V!49223 (_ BitVec 32) Int) ListLongMap!19255)

(assert (=> b!1271967 (= e!725483 (not (= (getCurrentListMapNoExtraKeys!5951 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) (getCurrentListMapNoExtraKeys!5951 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142))))))

(assert (=> b!1271967 (= (getCurrentListMapNoExtraKeys!5951 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5951 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42258 0))(
  ( (Unit!42259) )
))
(declare-fun lt!574889 () Unit!42258)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1247 (array!83237 array!83239 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!49223 V!49223 V!49223 V!49223 (_ BitVec 32) Int) Unit!42258)

(assert (=> b!1271967 (= lt!574889 (lemmaNoChangeToArrayThenSameMapNoExtras!1247 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1271968 () Bool)

(declare-fun res!846265 () Bool)

(assert (=> b!1271968 (=> (not res!846265) (not e!725483))))

(assert (=> b!1271968 (= res!846265 (and (= (size!40689 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40688 _keys!1364) (size!40689 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!846264 () Bool)

(assert (=> start!107370 (=> (not res!846264) (not e!725483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107370 (= res!846264 (validMask!0 mask!1730))))

(assert (=> start!107370 e!725483))

(declare-fun e!725481 () Bool)

(declare-fun array_inv!30481 (array!83239) Bool)

(assert (=> start!107370 (and (array_inv!30481 _values!1134) e!725481)))

(assert (=> start!107370 true))

(declare-fun array_inv!30482 (array!83237) Bool)

(assert (=> start!107370 (array_inv!30482 _keys!1364)))

(assert (=> start!107370 tp_is_empty!33023))

(assert (=> start!107370 tp!97465))

(declare-fun b!1271969 () Bool)

(assert (=> b!1271969 (= e!725481 (and e!725482 mapRes!51115))))

(declare-fun condMapEmpty!51115 () Bool)

(declare-fun mapDefault!51115 () ValueCell!15658)

