; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37064 () Bool)

(assert start!37064)

(declare-fun b_free!8183 () Bool)

(declare-fun b_next!8183 () Bool)

(assert (=> start!37064 (= b_free!8183 (not b_next!8183))))

(declare-fun tp!29265 () Bool)

(declare-fun b_and!15443 () Bool)

(assert (=> start!37064 (= tp!29265 b_and!15443)))

(declare-fun b!372413 () Bool)

(declare-fun res!209653 () Bool)

(declare-fun e!227153 () Bool)

(assert (=> b!372413 (=> (not res!209653) (not e!227153))))

(declare-datatypes ((array!21571 0))(
  ( (array!21572 (arr!10251 (Array (_ BitVec 32) (_ BitVec 64))) (size!10603 (_ BitVec 32))) )
))
(declare-fun lt!170803 () array!21571)

(declare-datatypes ((List!5769 0))(
  ( (Nil!5766) (Cons!5765 (h!6621 (_ BitVec 64)) (t!10927 List!5769)) )
))
(declare-fun arrayNoDuplicates!0 (array!21571 (_ BitVec 32) List!5769) Bool)

(assert (=> b!372413 (= res!209653 (arrayNoDuplicates!0 lt!170803 #b00000000000000000000000000000000 Nil!5766))))

(declare-fun b!372414 () Bool)

(assert (=> b!372414 (= e!227153 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12879 0))(
  ( (V!12880 (val!4460 Int)) )
))
(declare-datatypes ((tuple2!5894 0))(
  ( (tuple2!5895 (_1!2957 (_ BitVec 64)) (_2!2957 V!12879)) )
))
(declare-datatypes ((List!5770 0))(
  ( (Nil!5767) (Cons!5766 (h!6622 tuple2!5894) (t!10928 List!5770)) )
))
(declare-datatypes ((ListLongMap!4821 0))(
  ( (ListLongMap!4822 (toList!2426 List!5770)) )
))
(declare-fun lt!170809 () ListLongMap!4821)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((ValueCell!4072 0))(
  ( (ValueCellFull!4072 (v!6653 V!12879)) (EmptyCell!4072) )
))
(declare-datatypes ((array!21573 0))(
  ( (array!21574 (arr!10252 (Array (_ BitVec 32) ValueCell!4072)) (size!10604 (_ BitVec 32))) )
))
(declare-fun lt!170808 () array!21573)

(declare-fun zeroValue!472 () V!12879)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12879)

(declare-fun getCurrentListMap!1876 (array!21571 array!21573 (_ BitVec 32) (_ BitVec 32) V!12879 V!12879 (_ BitVec 32) Int) ListLongMap!4821)

(assert (=> b!372414 (= lt!170809 (getCurrentListMap!1876 lt!170803 lt!170808 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170804 () ListLongMap!4821)

(declare-fun lt!170806 () ListLongMap!4821)

(assert (=> b!372414 (and (= lt!170804 lt!170806) (= lt!170806 lt!170804))))

(declare-fun v!373 () V!12879)

(declare-fun lt!170805 () ListLongMap!4821)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!767 (ListLongMap!4821 tuple2!5894) ListLongMap!4821)

(assert (=> b!372414 (= lt!170806 (+!767 lt!170805 (tuple2!5895 k!778 v!373)))))

(declare-fun _values!506 () array!21573)

(declare-fun _keys!658 () array!21571)

(declare-datatypes ((Unit!11439 0))(
  ( (Unit!11440) )
))
(declare-fun lt!170807 () Unit!11439)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!27 (array!21571 array!21573 (_ BitVec 32) (_ BitVec 32) V!12879 V!12879 (_ BitVec 32) (_ BitVec 64) V!12879 (_ BitVec 32) Int) Unit!11439)

(assert (=> b!372414 (= lt!170807 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!27 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!694 (array!21571 array!21573 (_ BitVec 32) (_ BitVec 32) V!12879 V!12879 (_ BitVec 32) Int) ListLongMap!4821)

(assert (=> b!372414 (= lt!170804 (getCurrentListMapNoExtraKeys!694 lt!170803 lt!170808 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372414 (= lt!170808 (array!21574 (store (arr!10252 _values!506) i!548 (ValueCellFull!4072 v!373)) (size!10604 _values!506)))))

(assert (=> b!372414 (= lt!170805 (getCurrentListMapNoExtraKeys!694 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!14811 () Bool)

(declare-fun mapRes!14811 () Bool)

(assert (=> mapIsEmpty!14811 mapRes!14811))

(declare-fun b!372415 () Bool)

(declare-fun e!227149 () Bool)

(declare-fun tp_is_empty!8831 () Bool)

(assert (=> b!372415 (= e!227149 tp_is_empty!8831)))

(declare-fun b!372416 () Bool)

(declare-fun e!227154 () Bool)

(assert (=> b!372416 (= e!227154 tp_is_empty!8831)))

(declare-fun mapNonEmpty!14811 () Bool)

(declare-fun tp!29264 () Bool)

(assert (=> mapNonEmpty!14811 (= mapRes!14811 (and tp!29264 e!227149))))

(declare-fun mapKey!14811 () (_ BitVec 32))

(declare-fun mapValue!14811 () ValueCell!4072)

(declare-fun mapRest!14811 () (Array (_ BitVec 32) ValueCell!4072))

(assert (=> mapNonEmpty!14811 (= (arr!10252 _values!506) (store mapRest!14811 mapKey!14811 mapValue!14811))))

(declare-fun res!209647 () Bool)

(declare-fun e!227152 () Bool)

(assert (=> start!37064 (=> (not res!209647) (not e!227152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37064 (= res!209647 (validMask!0 mask!970))))

(assert (=> start!37064 e!227152))

(declare-fun e!227151 () Bool)

(declare-fun array_inv!7570 (array!21573) Bool)

(assert (=> start!37064 (and (array_inv!7570 _values!506) e!227151)))

(assert (=> start!37064 tp!29265))

(assert (=> start!37064 true))

(assert (=> start!37064 tp_is_empty!8831))

(declare-fun array_inv!7571 (array!21571) Bool)

(assert (=> start!37064 (array_inv!7571 _keys!658)))

(declare-fun b!372417 () Bool)

(declare-fun res!209648 () Bool)

(assert (=> b!372417 (=> (not res!209648) (not e!227152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372417 (= res!209648 (validKeyInArray!0 k!778))))

(declare-fun b!372418 () Bool)

(declare-fun res!209651 () Bool)

(assert (=> b!372418 (=> (not res!209651) (not e!227152))))

(assert (=> b!372418 (= res!209651 (or (= (select (arr!10251 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10251 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372419 () Bool)

(assert (=> b!372419 (= e!227151 (and e!227154 mapRes!14811))))

(declare-fun condMapEmpty!14811 () Bool)

(declare-fun mapDefault!14811 () ValueCell!4072)

