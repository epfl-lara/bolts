; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41524 () Bool)

(assert start!41524)

(declare-fun b_free!11183 () Bool)

(declare-fun b_next!11183 () Bool)

(assert (=> start!41524 (= b_free!11183 (not b_next!11183))))

(declare-fun tp!39546 () Bool)

(declare-fun b_and!19541 () Bool)

(assert (=> start!41524 (= tp!39546 b_and!19541)))

(declare-fun b!463573 () Bool)

(declare-fun e!270715 () Bool)

(declare-fun tp_is_empty!12611 () Bool)

(assert (=> b!463573 (= e!270715 tp_is_empty!12611)))

(declare-fun res!277246 () Bool)

(declare-fun e!270713 () Bool)

(assert (=> start!41524 (=> (not res!277246) (not e!270713))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41524 (= res!277246 (validMask!0 mask!1365))))

(assert (=> start!41524 e!270713))

(assert (=> start!41524 tp_is_empty!12611))

(assert (=> start!41524 tp!39546))

(assert (=> start!41524 true))

(declare-datatypes ((array!28979 0))(
  ( (array!28980 (arr!13918 (Array (_ BitVec 32) (_ BitVec 64))) (size!14270 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28979)

(declare-fun array_inv!10038 (array!28979) Bool)

(assert (=> start!41524 (array_inv!10038 _keys!1025)))

(declare-datatypes ((V!17919 0))(
  ( (V!17920 (val!6350 Int)) )
))
(declare-datatypes ((ValueCell!5962 0))(
  ( (ValueCellFull!5962 (v!8633 V!17919)) (EmptyCell!5962) )
))
(declare-datatypes ((array!28981 0))(
  ( (array!28982 (arr!13919 (Array (_ BitVec 32) ValueCell!5962)) (size!14271 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28981)

(declare-fun e!270712 () Bool)

(declare-fun array_inv!10039 (array!28981) Bool)

(assert (=> start!41524 (and (array_inv!10039 _values!833) e!270712)))

(declare-fun b!463574 () Bool)

(declare-fun e!270711 () Bool)

(assert (=> b!463574 (= e!270711 tp_is_empty!12611)))

(declare-fun b!463575 () Bool)

(declare-fun res!277245 () Bool)

(assert (=> b!463575 (=> (not res!277245) (not e!270713))))

(declare-datatypes ((List!8421 0))(
  ( (Nil!8418) (Cons!8417 (h!9273 (_ BitVec 64)) (t!14375 List!8421)) )
))
(declare-fun arrayNoDuplicates!0 (array!28979 (_ BitVec 32) List!8421) Bool)

(assert (=> b!463575 (= res!277245 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8418))))

(declare-fun mapIsEmpty!20593 () Bool)

(declare-fun mapRes!20593 () Bool)

(assert (=> mapIsEmpty!20593 mapRes!20593))

(declare-fun b!463576 () Bool)

(declare-fun res!277247 () Bool)

(assert (=> b!463576 (=> (not res!277247) (not e!270713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28979 (_ BitVec 32)) Bool)

(assert (=> b!463576 (= res!277247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20593 () Bool)

(declare-fun tp!39547 () Bool)

(assert (=> mapNonEmpty!20593 (= mapRes!20593 (and tp!39547 e!270715))))

(declare-fun mapValue!20593 () ValueCell!5962)

(declare-fun mapKey!20593 () (_ BitVec 32))

(declare-fun mapRest!20593 () (Array (_ BitVec 32) ValueCell!5962))

(assert (=> mapNonEmpty!20593 (= (arr!13919 _values!833) (store mapRest!20593 mapKey!20593 mapValue!20593))))

(declare-fun b!463577 () Bool)

(assert (=> b!463577 (= e!270713 false)))

(declare-datatypes ((tuple2!8296 0))(
  ( (tuple2!8297 (_1!4158 (_ BitVec 64)) (_2!4158 V!17919)) )
))
(declare-datatypes ((List!8422 0))(
  ( (Nil!8419) (Cons!8418 (h!9274 tuple2!8296) (t!14376 List!8422)) )
))
(declare-datatypes ((ListLongMap!7223 0))(
  ( (ListLongMap!7224 (toList!3627 List!8422)) )
))
(declare-fun lt!209436 () ListLongMap!7223)

(declare-fun zeroValue!794 () V!17919)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!17919)

(declare-fun getCurrentListMapNoExtraKeys!1795 (array!28979 array!28981 (_ BitVec 32) (_ BitVec 32) V!17919 V!17919 (_ BitVec 32) Int) ListLongMap!7223)

(assert (=> b!463577 (= lt!209436 (getCurrentListMapNoExtraKeys!1795 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!17919)

(declare-fun lt!209435 () ListLongMap!7223)

(assert (=> b!463577 (= lt!209435 (getCurrentListMapNoExtraKeys!1795 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463578 () Bool)

(declare-fun res!277244 () Bool)

(assert (=> b!463578 (=> (not res!277244) (not e!270713))))

(assert (=> b!463578 (= res!277244 (and (= (size!14271 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14270 _keys!1025) (size!14271 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463579 () Bool)

(assert (=> b!463579 (= e!270712 (and e!270711 mapRes!20593))))

(declare-fun condMapEmpty!20593 () Bool)

(declare-fun mapDefault!20593 () ValueCell!5962)

