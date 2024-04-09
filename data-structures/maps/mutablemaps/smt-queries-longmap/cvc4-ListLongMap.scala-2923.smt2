; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41720 () Bool)

(assert start!41720)

(declare-fun b_free!11351 () Bool)

(declare-fun b_next!11351 () Bool)

(assert (=> start!41720 (= b_free!11351 (not b_next!11351))))

(declare-fun tp!40057 () Bool)

(declare-fun b_and!19725 () Bool)

(assert (=> start!41720 (= tp!40057 b_and!19725)))

(declare-fun b!465551 () Bool)

(declare-fun e!272125 () Bool)

(assert (=> b!465551 (= e!272125 true)))

(declare-datatypes ((V!18143 0))(
  ( (V!18144 (val!6434 Int)) )
))
(declare-datatypes ((tuple2!8412 0))(
  ( (tuple2!8413 (_1!4216 (_ BitVec 64)) (_2!4216 V!18143)) )
))
(declare-datatypes ((List!8536 0))(
  ( (Nil!8533) (Cons!8532 (h!9388 tuple2!8412) (t!14494 List!8536)) )
))
(declare-datatypes ((ListLongMap!7339 0))(
  ( (ListLongMap!7340 (toList!3685 List!8536)) )
))
(declare-fun lt!210313 () ListLongMap!7339)

(declare-fun zeroValue!794 () V!18143)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29295 0))(
  ( (array!29296 (arr!14074 (Array (_ BitVec 32) (_ BitVec 64))) (size!14426 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29295)

(declare-datatypes ((ValueCell!6046 0))(
  ( (ValueCellFull!6046 (v!8717 V!18143)) (EmptyCell!6046) )
))
(declare-datatypes ((array!29297 0))(
  ( (array!29298 (arr!14075 (Array (_ BitVec 32) ValueCell!6046)) (size!14427 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29297)

(declare-fun minValueAfter!38 () V!18143)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2131 (array!29295 array!29297 (_ BitVec 32) (_ BitVec 32) V!18143 V!18143 (_ BitVec 32) Int) ListLongMap!7339)

(assert (=> b!465551 (= lt!210313 (getCurrentListMap!2131 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18143)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!210314 () ListLongMap!7339)

(declare-fun +!1622 (ListLongMap!7339 tuple2!8412) ListLongMap!7339)

(assert (=> b!465551 (= lt!210314 (+!1622 (getCurrentListMap!2131 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8413 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465552 () Bool)

(declare-fun res!278358 () Bool)

(declare-fun e!272130 () Bool)

(assert (=> b!465552 (=> (not res!278358) (not e!272130))))

(declare-datatypes ((List!8537 0))(
  ( (Nil!8534) (Cons!8533 (h!9389 (_ BitVec 64)) (t!14495 List!8537)) )
))
(declare-fun arrayNoDuplicates!0 (array!29295 (_ BitVec 32) List!8537) Bool)

(assert (=> b!465552 (= res!278358 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8534))))

(declare-fun b!465553 () Bool)

(declare-fun res!278361 () Bool)

(assert (=> b!465553 (=> (not res!278361) (not e!272130))))

(assert (=> b!465553 (= res!278361 (and (= (size!14427 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14426 _keys!1025) (size!14427 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465554 () Bool)

(assert (=> b!465554 (= e!272130 (not e!272125))))

(declare-fun res!278362 () Bool)

(assert (=> b!465554 (=> res!278362 e!272125)))

(assert (=> b!465554 (= res!278362 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210316 () ListLongMap!7339)

(declare-fun lt!210317 () ListLongMap!7339)

(assert (=> b!465554 (= lt!210316 lt!210317)))

(declare-datatypes ((Unit!13489 0))(
  ( (Unit!13490) )
))
(declare-fun lt!210315 () Unit!13489)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!47 (array!29295 array!29297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18143 V!18143 V!18143 V!18143 (_ BitVec 32) Int) Unit!13489)

(assert (=> b!465554 (= lt!210315 (lemmaNoChangeToArrayThenSameMapNoExtras!47 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1852 (array!29295 array!29297 (_ BitVec 32) (_ BitVec 32) V!18143 V!18143 (_ BitVec 32) Int) ListLongMap!7339)

(assert (=> b!465554 (= lt!210317 (getCurrentListMapNoExtraKeys!1852 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465554 (= lt!210316 (getCurrentListMapNoExtraKeys!1852 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465556 () Bool)

(declare-fun e!272129 () Bool)

(declare-fun tp_is_empty!12779 () Bool)

(assert (=> b!465556 (= e!272129 tp_is_empty!12779)))

(declare-fun b!465557 () Bool)

(declare-fun res!278360 () Bool)

(assert (=> b!465557 (=> (not res!278360) (not e!272130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29295 (_ BitVec 32)) Bool)

(assert (=> b!465557 (= res!278360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465558 () Bool)

(declare-fun e!272126 () Bool)

(assert (=> b!465558 (= e!272126 tp_is_empty!12779)))

(declare-fun res!278359 () Bool)

(assert (=> start!41720 (=> (not res!278359) (not e!272130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41720 (= res!278359 (validMask!0 mask!1365))))

(assert (=> start!41720 e!272130))

(assert (=> start!41720 tp_is_empty!12779))

(assert (=> start!41720 tp!40057))

(assert (=> start!41720 true))

(declare-fun array_inv!10148 (array!29295) Bool)

(assert (=> start!41720 (array_inv!10148 _keys!1025)))

(declare-fun e!272128 () Bool)

(declare-fun array_inv!10149 (array!29297) Bool)

(assert (=> start!41720 (and (array_inv!10149 _values!833) e!272128)))

(declare-fun b!465555 () Bool)

(declare-fun mapRes!20851 () Bool)

(assert (=> b!465555 (= e!272128 (and e!272129 mapRes!20851))))

(declare-fun condMapEmpty!20851 () Bool)

(declare-fun mapDefault!20851 () ValueCell!6046)

