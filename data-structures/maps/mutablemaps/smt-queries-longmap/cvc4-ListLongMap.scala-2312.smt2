; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37346 () Bool)

(assert start!37346)

(declare-fun b_free!8465 () Bool)

(declare-fun b_next!8465 () Bool)

(assert (=> start!37346 (= b_free!8465 (not b_next!8465))))

(declare-fun tp!30111 () Bool)

(declare-fun b_and!15725 () Bool)

(assert (=> start!37346 (= tp!30111 b_and!15725)))

(declare-fun b!378721 () Bool)

(declare-fun res!214692 () Bool)

(declare-fun e!230474 () Bool)

(assert (=> b!378721 (=> (not res!214692) (not e!230474))))

(declare-datatypes ((array!22123 0))(
  ( (array!22124 (arr!10527 (Array (_ BitVec 32) (_ BitVec 64))) (size!10879 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22123)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378721 (= res!214692 (or (= (select (arr!10527 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10527 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378722 () Bool)

(declare-fun e!230469 () Bool)

(declare-fun tp_is_empty!9113 () Bool)

(assert (=> b!378722 (= e!230469 tp_is_empty!9113)))

(declare-fun mapNonEmpty!15234 () Bool)

(declare-fun mapRes!15234 () Bool)

(declare-fun tp!30110 () Bool)

(assert (=> mapNonEmpty!15234 (= mapRes!15234 (and tp!30110 e!230469))))

(declare-fun mapKey!15234 () (_ BitVec 32))

(declare-datatypes ((V!13255 0))(
  ( (V!13256 (val!4601 Int)) )
))
(declare-datatypes ((ValueCell!4213 0))(
  ( (ValueCellFull!4213 (v!6794 V!13255)) (EmptyCell!4213) )
))
(declare-datatypes ((array!22125 0))(
  ( (array!22126 (arr!10528 (Array (_ BitVec 32) ValueCell!4213)) (size!10880 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22125)

(declare-fun mapRest!15234 () (Array (_ BitVec 32) ValueCell!4213))

(declare-fun mapValue!15234 () ValueCell!4213)

(assert (=> mapNonEmpty!15234 (= (arr!10528 _values!506) (store mapRest!15234 mapKey!15234 mapValue!15234))))

(declare-fun b!378723 () Bool)

(declare-fun res!214693 () Bool)

(assert (=> b!378723 (=> (not res!214693) (not e!230474))))

(assert (=> b!378723 (= res!214693 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10879 _keys!658))))))

(declare-fun b!378724 () Bool)

(declare-fun e!230472 () Bool)

(assert (=> b!378724 (= e!230472 true)))

(declare-datatypes ((tuple2!6118 0))(
  ( (tuple2!6119 (_1!3069 (_ BitVec 64)) (_2!3069 V!13255)) )
))
(declare-datatypes ((List!5990 0))(
  ( (Nil!5987) (Cons!5986 (h!6842 tuple2!6118) (t!11148 List!5990)) )
))
(declare-datatypes ((ListLongMap!5045 0))(
  ( (ListLongMap!5046 (toList!2538 List!5990)) )
))
(declare-fun lt!176700 () ListLongMap!5045)

(declare-fun lt!176696 () ListLongMap!5045)

(declare-fun lt!176692 () tuple2!6118)

(declare-fun +!879 (ListLongMap!5045 tuple2!6118) ListLongMap!5045)

(assert (=> b!378724 (= lt!176700 (+!879 lt!176696 lt!176692))))

(declare-fun v!373 () V!13255)

(declare-datatypes ((Unit!11655 0))(
  ( (Unit!11656) )
))
(declare-fun lt!176701 () Unit!11655)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!176702 () ListLongMap!5045)

(declare-fun minValue!472 () V!13255)

(declare-fun addCommutativeForDiffKeys!294 (ListLongMap!5045 (_ BitVec 64) V!13255 (_ BitVec 64) V!13255) Unit!11655)

(assert (=> b!378724 (= lt!176701 (addCommutativeForDiffKeys!294 lt!176702 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378725 () Bool)

(declare-fun res!214690 () Bool)

(assert (=> b!378725 (=> (not res!214690) (not e!230474))))

(declare-datatypes ((List!5991 0))(
  ( (Nil!5988) (Cons!5987 (h!6843 (_ BitVec 64)) (t!11149 List!5991)) )
))
(declare-fun arrayNoDuplicates!0 (array!22123 (_ BitVec 32) List!5991) Bool)

(assert (=> b!378725 (= res!214690 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5988))))

(declare-fun b!378720 () Bool)

(declare-fun e!230470 () Bool)

(declare-fun e!230473 () Bool)

(assert (=> b!378720 (= e!230470 (not e!230473))))

(declare-fun res!214688 () Bool)

(assert (=> b!378720 (=> res!214688 e!230473)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378720 (= res!214688 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!176693 () ListLongMap!5045)

(declare-fun zeroValue!472 () V!13255)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun getCurrentListMap!1968 (array!22123 array!22125 (_ BitVec 32) (_ BitVec 32) V!13255 V!13255 (_ BitVec 32) Int) ListLongMap!5045)

(assert (=> b!378720 (= lt!176693 (getCurrentListMap!1968 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176695 () ListLongMap!5045)

(declare-fun lt!176694 () array!22123)

(declare-fun lt!176703 () array!22125)

(assert (=> b!378720 (= lt!176695 (getCurrentListMap!1968 lt!176694 lt!176703 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176704 () ListLongMap!5045)

(declare-fun lt!176697 () ListLongMap!5045)

(assert (=> b!378720 (and (= lt!176704 lt!176697) (= lt!176697 lt!176704))))

(assert (=> b!378720 (= lt!176697 (+!879 lt!176702 lt!176692))))

(assert (=> b!378720 (= lt!176692 (tuple2!6119 k!778 v!373))))

(declare-fun lt!176699 () Unit!11655)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!119 (array!22123 array!22125 (_ BitVec 32) (_ BitVec 32) V!13255 V!13255 (_ BitVec 32) (_ BitVec 64) V!13255 (_ BitVec 32) Int) Unit!11655)

(assert (=> b!378720 (= lt!176699 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!119 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!786 (array!22123 array!22125 (_ BitVec 32) (_ BitVec 32) V!13255 V!13255 (_ BitVec 32) Int) ListLongMap!5045)

(assert (=> b!378720 (= lt!176704 (getCurrentListMapNoExtraKeys!786 lt!176694 lt!176703 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378720 (= lt!176703 (array!22126 (store (arr!10528 _values!506) i!548 (ValueCellFull!4213 v!373)) (size!10880 _values!506)))))

(assert (=> b!378720 (= lt!176702 (getCurrentListMapNoExtraKeys!786 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!214687 () Bool)

(assert (=> start!37346 (=> (not res!214687) (not e!230474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37346 (= res!214687 (validMask!0 mask!970))))

(assert (=> start!37346 e!230474))

(declare-fun e!230475 () Bool)

(declare-fun array_inv!7746 (array!22125) Bool)

(assert (=> start!37346 (and (array_inv!7746 _values!506) e!230475)))

(assert (=> start!37346 tp!30111))

(assert (=> start!37346 true))

(assert (=> start!37346 tp_is_empty!9113))

(declare-fun array_inv!7747 (array!22123) Bool)

(assert (=> start!37346 (array_inv!7747 _keys!658)))

(declare-fun b!378726 () Bool)

(declare-fun res!214691 () Bool)

(assert (=> b!378726 (=> (not res!214691) (not e!230474))))

(declare-fun arrayContainsKey!0 (array!22123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378726 (= res!214691 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378727 () Bool)

(declare-fun e!230468 () Bool)

(assert (=> b!378727 (= e!230475 (and e!230468 mapRes!15234))))

(declare-fun condMapEmpty!15234 () Bool)

(declare-fun mapDefault!15234 () ValueCell!4213)

