; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37456 () Bool)

(assert start!37456)

(declare-fun b_free!8575 () Bool)

(declare-fun b_next!8575 () Bool)

(assert (=> start!37456 (= b_free!8575 (not b_next!8575))))

(declare-fun tp!30441 () Bool)

(declare-fun b_and!15835 () Bool)

(assert (=> start!37456 (= tp!30441 b_and!15835)))

(declare-fun b!381157 () Bool)

(declare-fun e!231754 () Bool)

(declare-fun e!231756 () Bool)

(assert (=> b!381157 (= e!231754 (not e!231756))))

(declare-fun res!216628 () Bool)

(assert (=> b!381157 (=> res!216628 e!231756)))

(declare-fun lt!178689 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381157 (= res!216628 (or (and (not lt!178689) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178689) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178689)))))

(assert (=> b!381157 (= lt!178689 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13403 0))(
  ( (V!13404 (val!4656 Int)) )
))
(declare-datatypes ((ValueCell!4268 0))(
  ( (ValueCellFull!4268 (v!6849 V!13403)) (EmptyCell!4268) )
))
(declare-datatypes ((array!22339 0))(
  ( (array!22340 (arr!10635 (Array (_ BitVec 32) ValueCell!4268)) (size!10987 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22339)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!22341 0))(
  ( (array!22342 (arr!10636 (Array (_ BitVec 32) (_ BitVec 64))) (size!10988 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22341)

(declare-fun zeroValue!472 () V!13403)

(declare-datatypes ((tuple2!6206 0))(
  ( (tuple2!6207 (_1!3113 (_ BitVec 64)) (_2!3113 V!13403)) )
))
(declare-datatypes ((List!6077 0))(
  ( (Nil!6074) (Cons!6073 (h!6929 tuple2!6206) (t!11235 List!6077)) )
))
(declare-datatypes ((ListLongMap!5133 0))(
  ( (ListLongMap!5134 (toList!2582 List!6077)) )
))
(declare-fun lt!178693 () ListLongMap!5133)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13403)

(declare-fun getCurrentListMap!2002 (array!22341 array!22339 (_ BitVec 32) (_ BitVec 32) V!13403 V!13403 (_ BitVec 32) Int) ListLongMap!5133)

(assert (=> b!381157 (= lt!178693 (getCurrentListMap!2002 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178688 () ListLongMap!5133)

(declare-fun lt!178691 () array!22341)

(declare-fun lt!178685 () array!22339)

(assert (=> b!381157 (= lt!178688 (getCurrentListMap!2002 lt!178691 lt!178685 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178692 () ListLongMap!5133)

(declare-fun lt!178686 () ListLongMap!5133)

(assert (=> b!381157 (and (= lt!178692 lt!178686) (= lt!178686 lt!178692))))

(declare-fun v!373 () V!13403)

(declare-fun lt!178690 () ListLongMap!5133)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!920 (ListLongMap!5133 tuple2!6206) ListLongMap!5133)

(assert (=> b!381157 (= lt!178686 (+!920 lt!178690 (tuple2!6207 k!778 v!373)))))

(declare-datatypes ((Unit!11733 0))(
  ( (Unit!11734) )
))
(declare-fun lt!178687 () Unit!11733)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!153 (array!22341 array!22339 (_ BitVec 32) (_ BitVec 32) V!13403 V!13403 (_ BitVec 32) (_ BitVec 64) V!13403 (_ BitVec 32) Int) Unit!11733)

(assert (=> b!381157 (= lt!178687 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!153 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!820 (array!22341 array!22339 (_ BitVec 32) (_ BitVec 32) V!13403 V!13403 (_ BitVec 32) Int) ListLongMap!5133)

(assert (=> b!381157 (= lt!178692 (getCurrentListMapNoExtraKeys!820 lt!178691 lt!178685 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381157 (= lt!178685 (array!22340 (store (arr!10635 _values!506) i!548 (ValueCellFull!4268 v!373)) (size!10987 _values!506)))))

(assert (=> b!381157 (= lt!178690 (getCurrentListMapNoExtraKeys!820 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381158 () Bool)

(declare-fun e!231750 () Bool)

(declare-fun tp_is_empty!9223 () Bool)

(assert (=> b!381158 (= e!231750 tp_is_empty!9223)))

(declare-fun b!381159 () Bool)

(declare-fun res!216634 () Bool)

(declare-fun e!231751 () Bool)

(assert (=> b!381159 (=> (not res!216634) (not e!231751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381159 (= res!216634 (validKeyInArray!0 k!778))))

(declare-fun b!381160 () Bool)

(declare-fun res!216635 () Bool)

(assert (=> b!381160 (=> (not res!216635) (not e!231751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22341 (_ BitVec 32)) Bool)

(assert (=> b!381160 (= res!216635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381161 () Bool)

(declare-fun res!216633 () Bool)

(assert (=> b!381161 (=> (not res!216633) (not e!231754))))

(declare-datatypes ((List!6078 0))(
  ( (Nil!6075) (Cons!6074 (h!6930 (_ BitVec 64)) (t!11236 List!6078)) )
))
(declare-fun arrayNoDuplicates!0 (array!22341 (_ BitVec 32) List!6078) Bool)

(assert (=> b!381161 (= res!216633 (arrayNoDuplicates!0 lt!178691 #b00000000000000000000000000000000 Nil!6075))))

(declare-fun b!381162 () Bool)

(declare-fun res!216631 () Bool)

(assert (=> b!381162 (=> (not res!216631) (not e!231751))))

(assert (=> b!381162 (= res!216631 (and (= (size!10987 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10988 _keys!658) (size!10987 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!216625 () Bool)

(assert (=> start!37456 (=> (not res!216625) (not e!231751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37456 (= res!216625 (validMask!0 mask!970))))

(assert (=> start!37456 e!231751))

(declare-fun e!231753 () Bool)

(declare-fun array_inv!7816 (array!22339) Bool)

(assert (=> start!37456 (and (array_inv!7816 _values!506) e!231753)))

(assert (=> start!37456 tp!30441))

(assert (=> start!37456 true))

(assert (=> start!37456 tp_is_empty!9223))

(declare-fun array_inv!7817 (array!22341) Bool)

(assert (=> start!37456 (array_inv!7817 _keys!658)))

(declare-fun b!381163 () Bool)

(declare-fun res!216629 () Bool)

(assert (=> b!381163 (=> (not res!216629) (not e!231751))))

(declare-fun arrayContainsKey!0 (array!22341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381163 (= res!216629 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15399 () Bool)

(declare-fun mapRes!15399 () Bool)

(assert (=> mapIsEmpty!15399 mapRes!15399))

(declare-fun b!381164 () Bool)

(assert (=> b!381164 (= e!231751 e!231754)))

(declare-fun res!216632 () Bool)

(assert (=> b!381164 (=> (not res!216632) (not e!231754))))

(assert (=> b!381164 (= res!216632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178691 mask!970))))

(assert (=> b!381164 (= lt!178691 (array!22342 (store (arr!10636 _keys!658) i!548 k!778) (size!10988 _keys!658)))))

(declare-fun b!381165 () Bool)

(assert (=> b!381165 (= e!231756 true)))

(assert (=> b!381165 (= lt!178688 lt!178692)))

(declare-fun b!381166 () Bool)

(declare-fun res!216630 () Bool)

(assert (=> b!381166 (=> (not res!216630) (not e!231751))))

(assert (=> b!381166 (= res!216630 (or (= (select (arr!10636 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10636 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381167 () Bool)

(declare-fun e!231755 () Bool)

(assert (=> b!381167 (= e!231753 (and e!231755 mapRes!15399))))

(declare-fun condMapEmpty!15399 () Bool)

(declare-fun mapDefault!15399 () ValueCell!4268)

