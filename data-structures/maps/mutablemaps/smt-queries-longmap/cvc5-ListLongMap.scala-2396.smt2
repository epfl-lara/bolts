; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37936 () Bool)

(assert start!37936)

(declare-fun b_free!8941 () Bool)

(declare-fun b_next!8941 () Bool)

(assert (=> start!37936 (= b_free!8941 (not b_next!8941))))

(declare-fun tp!31587 () Bool)

(declare-fun b_and!16249 () Bool)

(assert (=> start!37936 (= tp!31587 b_and!16249)))

(declare-fun b!389787 () Bool)

(declare-fun res!223060 () Bool)

(declare-fun e!236155 () Bool)

(assert (=> b!389787 (=> (not res!223060) (not e!236155))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23101 0))(
  ( (array!23102 (arr!11012 (Array (_ BitVec 32) (_ BitVec 64))) (size!11364 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23101)

(assert (=> b!389787 (= res!223060 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11364 _keys!658))))))

(declare-fun b!389788 () Bool)

(declare-fun res!223052 () Bool)

(assert (=> b!389788 (=> (not res!223052) (not e!236155))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389788 (= res!223052 (validKeyInArray!0 k!778))))

(declare-fun b!389789 () Bool)

(declare-fun res!223059 () Bool)

(assert (=> b!389789 (=> (not res!223059) (not e!236155))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23101 (_ BitVec 32)) Bool)

(assert (=> b!389789 (= res!223059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!223055 () Bool)

(assert (=> start!37936 (=> (not res!223055) (not e!236155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37936 (= res!223055 (validMask!0 mask!970))))

(assert (=> start!37936 e!236155))

(declare-datatypes ((V!13923 0))(
  ( (V!13924 (val!4851 Int)) )
))
(declare-datatypes ((ValueCell!4463 0))(
  ( (ValueCellFull!4463 (v!7060 V!13923)) (EmptyCell!4463) )
))
(declare-datatypes ((array!23103 0))(
  ( (array!23104 (arr!11013 (Array (_ BitVec 32) ValueCell!4463)) (size!11365 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23103)

(declare-fun e!236153 () Bool)

(declare-fun array_inv!8072 (array!23103) Bool)

(assert (=> start!37936 (and (array_inv!8072 _values!506) e!236153)))

(assert (=> start!37936 tp!31587))

(assert (=> start!37936 true))

(declare-fun tp_is_empty!9613 () Bool)

(assert (=> start!37936 tp_is_empty!9613))

(declare-fun array_inv!8073 (array!23101) Bool)

(assert (=> start!37936 (array_inv!8073 _keys!658)))

(declare-fun b!389790 () Bool)

(declare-fun e!236152 () Bool)

(declare-fun e!236151 () Bool)

(assert (=> b!389790 (= e!236152 e!236151)))

(declare-fun res!223062 () Bool)

(assert (=> b!389790 (=> res!223062 e!236151)))

(assert (=> b!389790 (= res!223062 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6470 0))(
  ( (tuple2!6471 (_1!3245 (_ BitVec 64)) (_2!3245 V!13923)) )
))
(declare-datatypes ((List!6353 0))(
  ( (Nil!6350) (Cons!6349 (h!7205 tuple2!6470) (t!11519 List!6353)) )
))
(declare-datatypes ((ListLongMap!5397 0))(
  ( (ListLongMap!5398 (toList!2714 List!6353)) )
))
(declare-fun lt!183576 () ListLongMap!5397)

(declare-fun lt!183573 () ListLongMap!5397)

(assert (=> b!389790 (= lt!183576 lt!183573)))

(declare-fun lt!183579 () ListLongMap!5397)

(declare-fun lt!183565 () tuple2!6470)

(declare-fun +!1012 (ListLongMap!5397 tuple2!6470) ListLongMap!5397)

(assert (=> b!389790 (= lt!183573 (+!1012 lt!183579 lt!183565))))

(declare-fun v!373 () V!13923)

(declare-datatypes ((Unit!11913 0))(
  ( (Unit!11914) )
))
(declare-fun lt!183570 () Unit!11913)

(declare-fun zeroValue!472 () V!13923)

(declare-fun lt!183564 () ListLongMap!5397)

(declare-fun addCommutativeForDiffKeys!329 (ListLongMap!5397 (_ BitVec 64) V!13923 (_ BitVec 64) V!13923) Unit!11913)

(assert (=> b!389790 (= lt!183570 (addCommutativeForDiffKeys!329 lt!183564 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183571 () ListLongMap!5397)

(declare-fun lt!183575 () tuple2!6470)

(assert (=> b!389790 (= lt!183571 (+!1012 lt!183576 lt!183575))))

(declare-fun lt!183568 () ListLongMap!5397)

(declare-fun lt!183578 () tuple2!6470)

(assert (=> b!389790 (= lt!183576 (+!1012 lt!183568 lt!183578))))

(declare-fun lt!183580 () ListLongMap!5397)

(declare-fun lt!183566 () ListLongMap!5397)

(assert (=> b!389790 (= lt!183580 lt!183566)))

(assert (=> b!389790 (= lt!183566 (+!1012 lt!183579 lt!183575))))

(assert (=> b!389790 (= lt!183579 (+!1012 lt!183564 lt!183578))))

(declare-fun lt!183567 () ListLongMap!5397)

(assert (=> b!389790 (= lt!183571 (+!1012 (+!1012 lt!183567 lt!183578) lt!183575))))

(declare-fun minValue!472 () V!13923)

(assert (=> b!389790 (= lt!183575 (tuple2!6471 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389790 (= lt!183578 (tuple2!6471 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389791 () Bool)

(declare-fun res!223057 () Bool)

(assert (=> b!389791 (=> (not res!223057) (not e!236155))))

(assert (=> b!389791 (= res!223057 (or (= (select (arr!11012 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11012 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389792 () Bool)

(declare-fun e!236149 () Bool)

(assert (=> b!389792 (= e!236155 e!236149)))

(declare-fun res!223053 () Bool)

(assert (=> b!389792 (=> (not res!223053) (not e!236149))))

(declare-fun lt!183577 () array!23101)

(assert (=> b!389792 (= res!223053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183577 mask!970))))

(assert (=> b!389792 (= lt!183577 (array!23102 (store (arr!11012 _keys!658) i!548 k!778) (size!11364 _keys!658)))))

(declare-fun b!389793 () Bool)

(declare-fun res!223054 () Bool)

(assert (=> b!389793 (=> (not res!223054) (not e!236155))))

(declare-fun arrayContainsKey!0 (array!23101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389793 (= res!223054 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15996 () Bool)

(declare-fun mapRes!15996 () Bool)

(assert (=> mapIsEmpty!15996 mapRes!15996))

(declare-fun b!389794 () Bool)

(declare-fun e!236150 () Bool)

(assert (=> b!389794 (= e!236150 tp_is_empty!9613)))

(declare-fun b!389795 () Bool)

(assert (=> b!389795 (= e!236151 (bvslt i!548 (size!11365 _values!506)))))

(assert (=> b!389795 (= (+!1012 lt!183573 lt!183575) (+!1012 lt!183566 lt!183565))))

(declare-fun lt!183572 () Unit!11913)

(assert (=> b!389795 (= lt!183572 (addCommutativeForDiffKeys!329 lt!183579 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!389796 () Bool)

(assert (=> b!389796 (= e!236153 (and e!236150 mapRes!15996))))

(declare-fun condMapEmpty!15996 () Bool)

(declare-fun mapDefault!15996 () ValueCell!4463)

