; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20446 () Bool)

(assert start!20446)

(declare-fun b_free!5093 () Bool)

(declare-fun b_next!5093 () Bool)

(assert (=> start!20446 (= b_free!5093 (not b_next!5093))))

(declare-fun tp!18311 () Bool)

(declare-fun b_and!11857 () Bool)

(assert (=> start!20446 (= tp!18311 b_and!11857)))

(declare-fun mapIsEmpty!8492 () Bool)

(declare-fun mapRes!8492 () Bool)

(assert (=> mapIsEmpty!8492 mapRes!8492))

(declare-fun b!202258 () Bool)

(declare-fun res!96894 () Bool)

(declare-fun e!132506 () Bool)

(assert (=> b!202258 (=> (not res!96894) (not e!132506))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9122 0))(
  ( (array!9123 (arr!4311 (Array (_ BitVec 32) (_ BitVec 64))) (size!4636 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9122)

(assert (=> b!202258 (= res!96894 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4636 _keys!825))))))

(declare-fun b!202259 () Bool)

(declare-fun e!132508 () Bool)

(assert (=> b!202259 (= e!132506 (not e!132508))))

(declare-fun res!96895 () Bool)

(assert (=> b!202259 (=> res!96895 e!132508)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202259 (= res!96895 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6245 0))(
  ( (V!6246 (val!2519 Int)) )
))
(declare-datatypes ((ValueCell!2131 0))(
  ( (ValueCellFull!2131 (v!4485 V!6245)) (EmptyCell!2131) )
))
(declare-datatypes ((array!9124 0))(
  ( (array!9125 (arr!4312 (Array (_ BitVec 32) ValueCell!2131)) (size!4637 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9124)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3814 0))(
  ( (tuple2!3815 (_1!1917 (_ BitVec 64)) (_2!1917 V!6245)) )
))
(declare-datatypes ((List!2746 0))(
  ( (Nil!2743) (Cons!2742 (h!3384 tuple2!3814) (t!7685 List!2746)) )
))
(declare-datatypes ((ListLongMap!2741 0))(
  ( (ListLongMap!2742 (toList!1386 List!2746)) )
))
(declare-fun lt!101544 () ListLongMap!2741)

(declare-fun zeroValue!615 () V!6245)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6245)

(declare-fun getCurrentListMap!964 (array!9122 array!9124 (_ BitVec 32) (_ BitVec 32) V!6245 V!6245 (_ BitVec 32) Int) ListLongMap!2741)

(assert (=> b!202259 (= lt!101544 (getCurrentListMap!964 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101552 () array!9124)

(declare-fun lt!101543 () ListLongMap!2741)

(assert (=> b!202259 (= lt!101543 (getCurrentListMap!964 _keys!825 lt!101552 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101550 () ListLongMap!2741)

(declare-fun lt!101548 () ListLongMap!2741)

(assert (=> b!202259 (and (= lt!101550 lt!101548) (= lt!101548 lt!101550))))

(declare-fun lt!101546 () ListLongMap!2741)

(declare-fun lt!101554 () tuple2!3814)

(declare-fun +!403 (ListLongMap!2741 tuple2!3814) ListLongMap!2741)

(assert (=> b!202259 (= lt!101548 (+!403 lt!101546 lt!101554))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6245)

(assert (=> b!202259 (= lt!101554 (tuple2!3815 k!843 v!520))))

(declare-datatypes ((Unit!6113 0))(
  ( (Unit!6114) )
))
(declare-fun lt!101556 () Unit!6113)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!77 (array!9122 array!9124 (_ BitVec 32) (_ BitVec 32) V!6245 V!6245 (_ BitVec 32) (_ BitVec 64) V!6245 (_ BitVec 32) Int) Unit!6113)

(assert (=> b!202259 (= lt!101556 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!77 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!335 (array!9122 array!9124 (_ BitVec 32) (_ BitVec 32) V!6245 V!6245 (_ BitVec 32) Int) ListLongMap!2741)

(assert (=> b!202259 (= lt!101550 (getCurrentListMapNoExtraKeys!335 _keys!825 lt!101552 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202259 (= lt!101552 (array!9125 (store (arr!4312 _values!649) i!601 (ValueCellFull!2131 v!520)) (size!4637 _values!649)))))

(assert (=> b!202259 (= lt!101546 (getCurrentListMapNoExtraKeys!335 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202260 () Bool)

(declare-fun e!132507 () Bool)

(assert (=> b!202260 (= e!132507 (bvsle #b00000000000000000000000000000000 (size!4636 _keys!825)))))

(declare-fun lt!101542 () ListLongMap!2741)

(declare-fun lt!101545 () ListLongMap!2741)

(declare-fun lt!101549 () tuple2!3814)

(assert (=> b!202260 (= (+!403 lt!101542 lt!101549) (+!403 lt!101545 lt!101554))))

(declare-fun lt!101557 () ListLongMap!2741)

(declare-fun lt!101551 () Unit!6113)

(declare-fun addCommutativeForDiffKeys!124 (ListLongMap!2741 (_ BitVec 64) V!6245 (_ BitVec 64) V!6245) Unit!6113)

(assert (=> b!202260 (= lt!101551 (addCommutativeForDiffKeys!124 lt!101557 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!202261 () Bool)

(declare-fun e!132509 () Bool)

(declare-fun tp_is_empty!4949 () Bool)

(assert (=> b!202261 (= e!132509 tp_is_empty!4949)))

(declare-fun res!96893 () Bool)

(assert (=> start!20446 (=> (not res!96893) (not e!132506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20446 (= res!96893 (validMask!0 mask!1149))))

(assert (=> start!20446 e!132506))

(declare-fun e!132505 () Bool)

(declare-fun array_inv!2837 (array!9124) Bool)

(assert (=> start!20446 (and (array_inv!2837 _values!649) e!132505)))

(assert (=> start!20446 true))

(assert (=> start!20446 tp_is_empty!4949))

(declare-fun array_inv!2838 (array!9122) Bool)

(assert (=> start!20446 (array_inv!2838 _keys!825)))

(assert (=> start!20446 tp!18311))

(declare-fun mapNonEmpty!8492 () Bool)

(declare-fun tp!18310 () Bool)

(declare-fun e!132511 () Bool)

(assert (=> mapNonEmpty!8492 (= mapRes!8492 (and tp!18310 e!132511))))

(declare-fun mapRest!8492 () (Array (_ BitVec 32) ValueCell!2131))

(declare-fun mapKey!8492 () (_ BitVec 32))

(declare-fun mapValue!8492 () ValueCell!2131)

(assert (=> mapNonEmpty!8492 (= (arr!4312 _values!649) (store mapRest!8492 mapKey!8492 mapValue!8492))))

(declare-fun b!202262 () Bool)

(declare-fun res!96900 () Bool)

(assert (=> b!202262 (=> (not res!96900) (not e!132506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9122 (_ BitVec 32)) Bool)

(assert (=> b!202262 (= res!96900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!202263 () Bool)

(declare-fun res!96896 () Bool)

(assert (=> b!202263 (=> (not res!96896) (not e!132506))))

(assert (=> b!202263 (= res!96896 (and (= (size!4637 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4636 _keys!825) (size!4637 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202264 () Bool)

(declare-fun res!96898 () Bool)

(assert (=> b!202264 (=> (not res!96898) (not e!132506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202264 (= res!96898 (validKeyInArray!0 k!843))))

(declare-fun b!202265 () Bool)

(declare-fun res!96897 () Bool)

(assert (=> b!202265 (=> (not res!96897) (not e!132506))))

(assert (=> b!202265 (= res!96897 (= (select (arr!4311 _keys!825) i!601) k!843))))

(declare-fun b!202266 () Bool)

(assert (=> b!202266 (= e!132505 (and e!132509 mapRes!8492))))

(declare-fun condMapEmpty!8492 () Bool)

(declare-fun mapDefault!8492 () ValueCell!2131)

