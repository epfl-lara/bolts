; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36896 () Bool)

(assert start!36896)

(declare-fun b_free!8015 () Bool)

(declare-fun b_next!8015 () Bool)

(assert (=> start!36896 (= b_free!8015 (not b_next!8015))))

(declare-fun tp!28761 () Bool)

(declare-fun b_and!15275 () Bool)

(assert (=> start!36896 (= tp!28761 b_and!15275)))

(declare-fun res!207128 () Bool)

(declare-fun e!225641 () Bool)

(assert (=> start!36896 (=> (not res!207128) (not e!225641))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36896 (= res!207128 (validMask!0 mask!970))))

(assert (=> start!36896 e!225641))

(declare-datatypes ((V!12655 0))(
  ( (V!12656 (val!4376 Int)) )
))
(declare-datatypes ((ValueCell!3988 0))(
  ( (ValueCellFull!3988 (v!6569 V!12655)) (EmptyCell!3988) )
))
(declare-datatypes ((array!21249 0))(
  ( (array!21250 (arr!10090 (Array (_ BitVec 32) ValueCell!3988)) (size!10442 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21249)

(declare-fun e!225640 () Bool)

(declare-fun array_inv!7456 (array!21249) Bool)

(assert (=> start!36896 (and (array_inv!7456 _values!506) e!225640)))

(assert (=> start!36896 tp!28761))

(assert (=> start!36896 true))

(declare-fun tp_is_empty!8663 () Bool)

(assert (=> start!36896 tp_is_empty!8663))

(declare-datatypes ((array!21251 0))(
  ( (array!21252 (arr!10091 (Array (_ BitVec 32) (_ BitVec 64))) (size!10443 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21251)

(declare-fun array_inv!7457 (array!21251) Bool)

(assert (=> start!36896 (array_inv!7457 _keys!658)))

(declare-fun b!369137 () Bool)

(declare-fun e!225637 () Bool)

(assert (=> b!369137 (= e!225637 false)))

(declare-fun lt!169674 () array!21251)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12655)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12655)

(declare-datatypes ((tuple2!5798 0))(
  ( (tuple2!5799 (_1!2909 (_ BitVec 64)) (_2!2909 V!12655)) )
))
(declare-datatypes ((List!5657 0))(
  ( (Nil!5654) (Cons!5653 (h!6509 tuple2!5798) (t!10815 List!5657)) )
))
(declare-datatypes ((ListLongMap!4725 0))(
  ( (ListLongMap!4726 (toList!2378 List!5657)) )
))
(declare-fun lt!169673 () ListLongMap!4725)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12655)

(declare-fun getCurrentListMapNoExtraKeys!646 (array!21251 array!21249 (_ BitVec 32) (_ BitVec 32) V!12655 V!12655 (_ BitVec 32) Int) ListLongMap!4725)

(assert (=> b!369137 (= lt!169673 (getCurrentListMapNoExtraKeys!646 lt!169674 (array!21250 (store (arr!10090 _values!506) i!548 (ValueCellFull!3988 v!373)) (size!10442 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169675 () ListLongMap!4725)

(assert (=> b!369137 (= lt!169675 (getCurrentListMapNoExtraKeys!646 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369138 () Bool)

(declare-fun res!207130 () Bool)

(assert (=> b!369138 (=> (not res!207130) (not e!225641))))

(assert (=> b!369138 (= res!207130 (and (= (size!10442 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10443 _keys!658) (size!10442 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369139 () Bool)

(assert (=> b!369139 (= e!225641 e!225637)))

(declare-fun res!207127 () Bool)

(assert (=> b!369139 (=> (not res!207127) (not e!225637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21251 (_ BitVec 32)) Bool)

(assert (=> b!369139 (= res!207127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169674 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!369139 (= lt!169674 (array!21252 (store (arr!10091 _keys!658) i!548 k!778) (size!10443 _keys!658)))))

(declare-fun mapNonEmpty!14559 () Bool)

(declare-fun mapRes!14559 () Bool)

(declare-fun tp!28760 () Bool)

(declare-fun e!225638 () Bool)

(assert (=> mapNonEmpty!14559 (= mapRes!14559 (and tp!28760 e!225638))))

(declare-fun mapRest!14559 () (Array (_ BitVec 32) ValueCell!3988))

(declare-fun mapValue!14559 () ValueCell!3988)

(declare-fun mapKey!14559 () (_ BitVec 32))

(assert (=> mapNonEmpty!14559 (= (arr!10090 _values!506) (store mapRest!14559 mapKey!14559 mapValue!14559))))

(declare-fun b!369140 () Bool)

(declare-fun res!207125 () Bool)

(assert (=> b!369140 (=> (not res!207125) (not e!225641))))

(assert (=> b!369140 (= res!207125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369141 () Bool)

(assert (=> b!369141 (= e!225638 tp_is_empty!8663)))

(declare-fun b!369142 () Bool)

(declare-fun e!225639 () Bool)

(assert (=> b!369142 (= e!225639 tp_is_empty!8663)))

(declare-fun b!369143 () Bool)

(declare-fun res!207129 () Bool)

(assert (=> b!369143 (=> (not res!207129) (not e!225641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369143 (= res!207129 (validKeyInArray!0 k!778))))

(declare-fun b!369144 () Bool)

(declare-fun res!207126 () Bool)

(assert (=> b!369144 (=> (not res!207126) (not e!225641))))

(assert (=> b!369144 (= res!207126 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10443 _keys!658))))))

(declare-fun b!369145 () Bool)

(declare-fun res!207132 () Bool)

(assert (=> b!369145 (=> (not res!207132) (not e!225641))))

(assert (=> b!369145 (= res!207132 (or (= (select (arr!10091 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10091 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369146 () Bool)

(assert (=> b!369146 (= e!225640 (and e!225639 mapRes!14559))))

(declare-fun condMapEmpty!14559 () Bool)

(declare-fun mapDefault!14559 () ValueCell!3988)

