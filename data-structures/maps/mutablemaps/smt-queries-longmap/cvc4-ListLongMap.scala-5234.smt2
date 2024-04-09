; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70512 () Bool)

(assert start!70512)

(declare-fun b_free!12815 () Bool)

(declare-fun b_next!12815 () Bool)

(assert (=> start!70512 (= b_free!12815 (not b_next!12815))))

(declare-fun tp!45177 () Bool)

(declare-fun b_and!21663 () Bool)

(assert (=> start!70512 (= tp!45177 b_and!21663)))

(declare-fun mapIsEmpty!23386 () Bool)

(declare-fun mapRes!23386 () Bool)

(assert (=> mapIsEmpty!23386 mapRes!23386))

(declare-fun b!818602 () Bool)

(declare-fun res!558754 () Bool)

(declare-fun e!454494 () Bool)

(assert (=> b!818602 (=> (not res!558754) (not e!454494))))

(declare-datatypes ((array!45222 0))(
  ( (array!45223 (arr!21661 (Array (_ BitVec 32) (_ BitVec 64))) (size!22082 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45222)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45222 (_ BitVec 32)) Bool)

(assert (=> b!818602 (= res!558754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-datatypes ((V!24367 0))(
  ( (V!24368 (val!7310 Int)) )
))
(declare-datatypes ((tuple2!9622 0))(
  ( (tuple2!9623 (_1!4821 (_ BitVec 64)) (_2!4821 V!24367)) )
))
(declare-datatypes ((List!15486 0))(
  ( (Nil!15483) (Cons!15482 (h!16611 tuple2!9622) (t!21823 List!15486)) )
))
(declare-datatypes ((ListLongMap!8459 0))(
  ( (ListLongMap!8460 (toList!4245 List!15486)) )
))
(declare-fun lt!366958 () ListLongMap!8459)

(declare-fun e!454493 () Bool)

(declare-fun zeroValueAfter!34 () V!24367)

(declare-fun lt!366966 () ListLongMap!8459)

(declare-fun b!818603 () Bool)

(declare-fun +!1790 (ListLongMap!8459 tuple2!9622) ListLongMap!8459)

(assert (=> b!818603 (= e!454493 (= lt!366966 (+!1790 lt!366958 (tuple2!9623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!818604 () Bool)

(declare-fun e!454492 () Bool)

(declare-fun tp_is_empty!14525 () Bool)

(assert (=> b!818604 (= e!454492 tp_is_empty!14525)))

(declare-fun b!818605 () Bool)

(declare-fun e!454498 () Bool)

(assert (=> b!818605 (= e!454498 true)))

(declare-fun lt!366962 () tuple2!9622)

(declare-fun lt!366965 () tuple2!9622)

(declare-fun lt!366961 () ListLongMap!8459)

(assert (=> b!818605 (= lt!366961 (+!1790 (+!1790 lt!366958 lt!366965) lt!366962))))

(declare-fun lt!366963 () ListLongMap!8459)

(declare-fun lt!366964 () ListLongMap!8459)

(assert (=> b!818605 (= (+!1790 lt!366963 lt!366962) (+!1790 lt!366964 lt!366962))))

(declare-fun zeroValueBefore!34 () V!24367)

(declare-datatypes ((Unit!27939 0))(
  ( (Unit!27940) )
))
(declare-fun lt!366960 () Unit!27939)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!169 (ListLongMap!8459 (_ BitVec 64) V!24367 V!24367) Unit!27939)

(assert (=> b!818605 (= lt!366960 (addSameAsAddTwiceSameKeyDiffValues!169 lt!366963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818605 (= lt!366962 (tuple2!9623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818605 e!454493))

(declare-fun res!558755 () Bool)

(assert (=> b!818605 (=> (not res!558755) (not e!454493))))

(declare-fun lt!366967 () ListLongMap!8459)

(assert (=> b!818605 (= res!558755 (= lt!366967 lt!366964))))

(assert (=> b!818605 (= lt!366964 (+!1790 lt!366963 lt!366965))))

(assert (=> b!818605 (= lt!366965 (tuple2!9623 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24367)

(declare-datatypes ((ValueCell!6847 0))(
  ( (ValueCellFull!6847 (v!9735 V!24367)) (EmptyCell!6847) )
))
(declare-datatypes ((array!45224 0))(
  ( (array!45225 (arr!21662 (Array (_ BitVec 32) ValueCell!6847)) (size!22083 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45224)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2404 (array!45222 array!45224 (_ BitVec 32) (_ BitVec 32) V!24367 V!24367 (_ BitVec 32) Int) ListLongMap!8459)

(assert (=> b!818605 (= lt!366966 (getCurrentListMap!2404 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818605 (= lt!366967 (getCurrentListMap!2404 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818606 () Bool)

(declare-fun e!454496 () Bool)

(assert (=> b!818606 (= e!454496 tp_is_empty!14525)))

(declare-fun b!818607 () Bool)

(declare-fun e!454495 () Bool)

(assert (=> b!818607 (= e!454495 (and e!454496 mapRes!23386))))

(declare-fun condMapEmpty!23386 () Bool)

(declare-fun mapDefault!23386 () ValueCell!6847)

