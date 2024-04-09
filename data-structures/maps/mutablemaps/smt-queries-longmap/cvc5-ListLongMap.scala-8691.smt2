; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105602 () Bool)

(assert start!105602)

(declare-fun b_free!27181 () Bool)

(declare-fun b_next!27181 () Bool)

(assert (=> start!105602 (= b_free!27181 (not b_next!27181))))

(declare-fun tp!95064 () Bool)

(declare-fun b_and!45057 () Bool)

(assert (=> start!105602 (= tp!95064 b_and!45057)))

(declare-fun b!1257518 () Bool)

(declare-fun e!715116 () Bool)

(declare-fun tp_is_empty!32083 () Bool)

(assert (=> b!1257518 (= e!715116 tp_is_empty!32083)))

(declare-fun b!1257519 () Bool)

(declare-fun e!715114 () Bool)

(assert (=> b!1257519 (= e!715114 tp_is_empty!32083)))

(declare-fun b!1257520 () Bool)

(declare-fun e!715115 () Bool)

(assert (=> b!1257520 (= e!715115 (not true))))

(declare-datatypes ((V!48143 0))(
  ( (V!48144 (val!16104 Int)) )
))
(declare-datatypes ((tuple2!20964 0))(
  ( (tuple2!20965 (_1!10492 (_ BitVec 64)) (_2!10492 V!48143)) )
))
(declare-datatypes ((List!28195 0))(
  ( (Nil!28192) (Cons!28191 (h!29400 tuple2!20964) (t!41693 List!28195)) )
))
(declare-datatypes ((ListLongMap!18849 0))(
  ( (ListLongMap!18850 (toList!9440 List!28195)) )
))
(declare-fun lt!568756 () ListLongMap!18849)

(declare-fun lt!568757 () ListLongMap!18849)

(assert (=> b!1257520 (= lt!568756 lt!568757)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48143)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48143)

(declare-datatypes ((ValueCell!15278 0))(
  ( (ValueCellFull!15278 (v!18806 V!48143)) (EmptyCell!15278) )
))
(declare-datatypes ((array!81797 0))(
  ( (array!81798 (arr!39451 (Array (_ BitVec 32) ValueCell!15278)) (size!39988 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81797)

(declare-fun minValueBefore!43 () V!48143)

(declare-datatypes ((array!81799 0))(
  ( (array!81800 (arr!39452 (Array (_ BitVec 32) (_ BitVec 64))) (size!39989 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81799)

(declare-datatypes ((Unit!41854 0))(
  ( (Unit!41855) )
))
(declare-fun lt!568755 () Unit!41854)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1110 (array!81799 array!81797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48143 V!48143 V!48143 V!48143 (_ BitVec 32) Int) Unit!41854)

(assert (=> b!1257520 (= lt!568755 (lemmaNoChangeToArrayThenSameMapNoExtras!1110 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5792 (array!81799 array!81797 (_ BitVec 32) (_ BitVec 32) V!48143 V!48143 (_ BitVec 32) Int) ListLongMap!18849)

(assert (=> b!1257520 (= lt!568757 (getCurrentListMapNoExtraKeys!5792 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257520 (= lt!568756 (getCurrentListMapNoExtraKeys!5792 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49915 () Bool)

(declare-fun mapRes!49915 () Bool)

(assert (=> mapIsEmpty!49915 mapRes!49915))

(declare-fun res!838318 () Bool)

(assert (=> start!105602 (=> (not res!838318) (not e!715115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105602 (= res!838318 (validMask!0 mask!1466))))

(assert (=> start!105602 e!715115))

(assert (=> start!105602 true))

(assert (=> start!105602 tp!95064))

(assert (=> start!105602 tp_is_empty!32083))

(declare-fun array_inv!29999 (array!81799) Bool)

(assert (=> start!105602 (array_inv!29999 _keys!1118)))

(declare-fun e!715113 () Bool)

(declare-fun array_inv!30000 (array!81797) Bool)

(assert (=> start!105602 (and (array_inv!30000 _values!914) e!715113)))

(declare-fun b!1257521 () Bool)

(declare-fun res!838315 () Bool)

(assert (=> b!1257521 (=> (not res!838315) (not e!715115))))

(declare-datatypes ((List!28196 0))(
  ( (Nil!28193) (Cons!28192 (h!29401 (_ BitVec 64)) (t!41694 List!28196)) )
))
(declare-fun arrayNoDuplicates!0 (array!81799 (_ BitVec 32) List!28196) Bool)

(assert (=> b!1257521 (= res!838315 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28193))))

(declare-fun b!1257522 () Bool)

(declare-fun res!838316 () Bool)

(assert (=> b!1257522 (=> (not res!838316) (not e!715115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81799 (_ BitVec 32)) Bool)

(assert (=> b!1257522 (= res!838316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49915 () Bool)

(declare-fun tp!95063 () Bool)

(assert (=> mapNonEmpty!49915 (= mapRes!49915 (and tp!95063 e!715114))))

(declare-fun mapRest!49915 () (Array (_ BitVec 32) ValueCell!15278))

(declare-fun mapValue!49915 () ValueCell!15278)

(declare-fun mapKey!49915 () (_ BitVec 32))

(assert (=> mapNonEmpty!49915 (= (arr!39451 _values!914) (store mapRest!49915 mapKey!49915 mapValue!49915))))

(declare-fun b!1257523 () Bool)

(assert (=> b!1257523 (= e!715113 (and e!715116 mapRes!49915))))

(declare-fun condMapEmpty!49915 () Bool)

(declare-fun mapDefault!49915 () ValueCell!15278)

