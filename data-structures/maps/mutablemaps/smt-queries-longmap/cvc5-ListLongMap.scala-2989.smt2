; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42232 () Bool)

(assert start!42232)

(declare-fun b_free!11743 () Bool)

(declare-fun b_next!11743 () Bool)

(assert (=> start!42232 (= b_free!11743 (not b_next!11743))))

(declare-fun tp!41253 () Bool)

(declare-fun b_and!20191 () Bool)

(assert (=> start!42232 (= tp!41253 b_and!20191)))

(declare-fun mapIsEmpty!21460 () Bool)

(declare-fun mapRes!21460 () Bool)

(assert (=> mapIsEmpty!21460 mapRes!21460))

(declare-fun b!471072 () Bool)

(declare-fun res!281509 () Bool)

(declare-fun e!276075 () Bool)

(assert (=> b!471072 (=> (not res!281509) (not e!276075))))

(declare-datatypes ((array!30069 0))(
  ( (array!30070 (arr!14454 (Array (_ BitVec 32) (_ BitVec 64))) (size!14806 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30069)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30069 (_ BitVec 32)) Bool)

(assert (=> b!471072 (= res!281509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471073 () Bool)

(declare-fun e!276076 () Bool)

(declare-fun tp_is_empty!13171 () Bool)

(assert (=> b!471073 (= e!276076 tp_is_empty!13171)))

(declare-fun b!471074 () Bool)

(assert (=> b!471074 (= e!276075 (not true))))

(declare-datatypes ((V!18667 0))(
  ( (V!18668 (val!6630 Int)) )
))
(declare-datatypes ((tuple2!8702 0))(
  ( (tuple2!8703 (_1!4361 (_ BitVec 64)) (_2!4361 V!18667)) )
))
(declare-datatypes ((List!8822 0))(
  ( (Nil!8819) (Cons!8818 (h!9674 tuple2!8702) (t!14794 List!8822)) )
))
(declare-datatypes ((ListLongMap!7629 0))(
  ( (ListLongMap!7630 (toList!3830 List!8822)) )
))
(declare-fun lt!213775 () ListLongMap!7629)

(declare-fun lt!213776 () ListLongMap!7629)

(assert (=> b!471074 (= lt!213775 lt!213776)))

(declare-fun minValueBefore!38 () V!18667)

(declare-fun zeroValue!794 () V!18667)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6242 0))(
  ( (ValueCellFull!6242 (v!8917 V!18667)) (EmptyCell!6242) )
))
(declare-datatypes ((array!30071 0))(
  ( (array!30072 (arr!14455 (Array (_ BitVec 32) ValueCell!6242)) (size!14807 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30071)

(declare-fun minValueAfter!38 () V!18667)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13786 0))(
  ( (Unit!13787) )
))
(declare-fun lt!213774 () Unit!13786)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!187 (array!30069 array!30071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18667 V!18667 V!18667 V!18667 (_ BitVec 32) Int) Unit!13786)

(assert (=> b!471074 (= lt!213774 (lemmaNoChangeToArrayThenSameMapNoExtras!187 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1992 (array!30069 array!30071 (_ BitVec 32) (_ BitVec 32) V!18667 V!18667 (_ BitVec 32) Int) ListLongMap!7629)

(assert (=> b!471074 (= lt!213776 (getCurrentListMapNoExtraKeys!1992 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471074 (= lt!213775 (getCurrentListMapNoExtraKeys!1992 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471075 () Bool)

(declare-fun res!281510 () Bool)

(assert (=> b!471075 (=> (not res!281510) (not e!276075))))

(declare-datatypes ((List!8823 0))(
  ( (Nil!8820) (Cons!8819 (h!9675 (_ BitVec 64)) (t!14795 List!8823)) )
))
(declare-fun arrayNoDuplicates!0 (array!30069 (_ BitVec 32) List!8823) Bool)

(assert (=> b!471075 (= res!281510 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8820))))

(declare-fun b!471076 () Bool)

(declare-fun res!281511 () Bool)

(assert (=> b!471076 (=> (not res!281511) (not e!276075))))

(assert (=> b!471076 (= res!281511 (and (= (size!14807 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14806 _keys!1025) (size!14807 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!281512 () Bool)

(assert (=> start!42232 (=> (not res!281512) (not e!276075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42232 (= res!281512 (validMask!0 mask!1365))))

(assert (=> start!42232 e!276075))

(assert (=> start!42232 tp_is_empty!13171))

(assert (=> start!42232 tp!41253))

(assert (=> start!42232 true))

(declare-fun array_inv!10428 (array!30069) Bool)

(assert (=> start!42232 (array_inv!10428 _keys!1025)))

(declare-fun e!276077 () Bool)

(declare-fun array_inv!10429 (array!30071) Bool)

(assert (=> start!42232 (and (array_inv!10429 _values!833) e!276077)))

(declare-fun mapNonEmpty!21460 () Bool)

(declare-fun tp!41254 () Bool)

(assert (=> mapNonEmpty!21460 (= mapRes!21460 (and tp!41254 e!276076))))

(declare-fun mapKey!21460 () (_ BitVec 32))

(declare-fun mapRest!21460 () (Array (_ BitVec 32) ValueCell!6242))

(declare-fun mapValue!21460 () ValueCell!6242)

(assert (=> mapNonEmpty!21460 (= (arr!14455 _values!833) (store mapRest!21460 mapKey!21460 mapValue!21460))))

(declare-fun b!471077 () Bool)

(declare-fun e!276078 () Bool)

(assert (=> b!471077 (= e!276078 tp_is_empty!13171)))

(declare-fun b!471078 () Bool)

(assert (=> b!471078 (= e!276077 (and e!276078 mapRes!21460))))

(declare-fun condMapEmpty!21460 () Bool)

(declare-fun mapDefault!21460 () ValueCell!6242)

