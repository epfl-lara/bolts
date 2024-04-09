; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37252 () Bool)

(assert start!37252)

(declare-fun b_free!8371 () Bool)

(declare-fun b_next!8371 () Bool)

(assert (=> start!37252 (= b_free!8371 (not b_next!8371))))

(declare-fun tp!29829 () Bool)

(declare-fun b_and!15631 () Bool)

(assert (=> start!37252 (= tp!29829 b_and!15631)))

(declare-fun mapNonEmpty!15093 () Bool)

(declare-fun mapRes!15093 () Bool)

(declare-fun tp!29828 () Bool)

(declare-fun e!229347 () Bool)

(assert (=> mapNonEmpty!15093 (= mapRes!15093 (and tp!29828 e!229347))))

(declare-datatypes ((V!13131 0))(
  ( (V!13132 (val!4554 Int)) )
))
(declare-datatypes ((ValueCell!4166 0))(
  ( (ValueCellFull!4166 (v!6747 V!13131)) (EmptyCell!4166) )
))
(declare-datatypes ((array!21937 0))(
  ( (array!21938 (arr!10434 (Array (_ BitVec 32) ValueCell!4166)) (size!10786 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21937)

(declare-fun mapKey!15093 () (_ BitVec 32))

(declare-fun mapValue!15093 () ValueCell!4166)

(declare-fun mapRest!15093 () (Array (_ BitVec 32) ValueCell!4166))

(assert (=> mapNonEmpty!15093 (= (arr!10434 _values!506) (store mapRest!15093 mapKey!15093 mapValue!15093))))

(declare-fun mapIsEmpty!15093 () Bool)

(assert (=> mapIsEmpty!15093 mapRes!15093))

(declare-fun b!376596 () Bool)

(declare-fun e!229341 () Bool)

(declare-fun e!229343 () Bool)

(assert (=> b!376596 (= e!229341 (not e!229343))))

(declare-fun res!212984 () Bool)

(assert (=> b!376596 (=> res!212984 e!229343)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376596 (= res!212984 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13131)

(declare-datatypes ((array!21939 0))(
  ( (array!21940 (arr!10435 (Array (_ BitVec 32) (_ BitVec 64))) (size!10787 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21939)

(declare-datatypes ((tuple2!6040 0))(
  ( (tuple2!6041 (_1!3030 (_ BitVec 64)) (_2!3030 V!13131)) )
))
(declare-datatypes ((List!5911 0))(
  ( (Nil!5908) (Cons!5907 (h!6763 tuple2!6040) (t!11069 List!5911)) )
))
(declare-datatypes ((ListLongMap!4967 0))(
  ( (ListLongMap!4968 (toList!2499 List!5911)) )
))
(declare-fun lt!174903 () ListLongMap!4967)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13131)

(declare-fun getCurrentListMap!1937 (array!21939 array!21937 (_ BitVec 32) (_ BitVec 32) V!13131 V!13131 (_ BitVec 32) Int) ListLongMap!4967)

(assert (=> b!376596 (= lt!174903 (getCurrentListMap!1937 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174898 () array!21939)

(declare-fun lt!174901 () array!21937)

(declare-fun lt!174900 () ListLongMap!4967)

(assert (=> b!376596 (= lt!174900 (getCurrentListMap!1937 lt!174898 lt!174901 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174895 () ListLongMap!4967)

(declare-fun lt!174904 () ListLongMap!4967)

(assert (=> b!376596 (and (= lt!174895 lt!174904) (= lt!174904 lt!174895))))

(declare-fun lt!174907 () ListLongMap!4967)

(declare-fun lt!174899 () tuple2!6040)

(declare-fun +!840 (ListLongMap!4967 tuple2!6040) ListLongMap!4967)

(assert (=> b!376596 (= lt!174904 (+!840 lt!174907 lt!174899))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13131)

(assert (=> b!376596 (= lt!174899 (tuple2!6041 k!778 v!373))))

(declare-datatypes ((Unit!11581 0))(
  ( (Unit!11582) )
))
(declare-fun lt!174906 () Unit!11581)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!88 (array!21939 array!21937 (_ BitVec 32) (_ BitVec 32) V!13131 V!13131 (_ BitVec 32) (_ BitVec 64) V!13131 (_ BitVec 32) Int) Unit!11581)

(assert (=> b!376596 (= lt!174906 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!88 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!755 (array!21939 array!21937 (_ BitVec 32) (_ BitVec 32) V!13131 V!13131 (_ BitVec 32) Int) ListLongMap!4967)

(assert (=> b!376596 (= lt!174895 (getCurrentListMapNoExtraKeys!755 lt!174898 lt!174901 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376596 (= lt!174901 (array!21938 (store (arr!10434 _values!506) i!548 (ValueCellFull!4166 v!373)) (size!10786 _values!506)))))

(assert (=> b!376596 (= lt!174907 (getCurrentListMapNoExtraKeys!755 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!212992 () Bool)

(declare-fun e!229346 () Bool)

(assert (=> start!37252 (=> (not res!212992) (not e!229346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37252 (= res!212992 (validMask!0 mask!970))))

(assert (=> start!37252 e!229346))

(declare-fun e!229340 () Bool)

(declare-fun array_inv!7682 (array!21937) Bool)

(assert (=> start!37252 (and (array_inv!7682 _values!506) e!229340)))

(assert (=> start!37252 tp!29829))

(assert (=> start!37252 true))

(declare-fun tp_is_empty!9019 () Bool)

(assert (=> start!37252 tp_is_empty!9019))

(declare-fun array_inv!7683 (array!21939) Bool)

(assert (=> start!37252 (array_inv!7683 _keys!658)))

(declare-fun b!376597 () Bool)

(declare-fun e!229342 () Bool)

(assert (=> b!376597 (= e!229340 (and e!229342 mapRes!15093))))

(declare-fun condMapEmpty!15093 () Bool)

(declare-fun mapDefault!15093 () ValueCell!4166)

