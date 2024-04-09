; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37492 () Bool)

(assert start!37492)

(declare-fun b_free!8611 () Bool)

(declare-fun b_next!8611 () Bool)

(assert (=> start!37492 (= b_free!8611 (not b_next!8611))))

(declare-fun tp!30549 () Bool)

(declare-fun b_and!15871 () Bool)

(assert (=> start!37492 (= tp!30549 b_and!15871)))

(declare-fun b!381913 () Bool)

(declare-fun e!232134 () Bool)

(declare-fun tp_is_empty!9259 () Bool)

(assert (=> b!381913 (= e!232134 tp_is_empty!9259)))

(declare-fun b!381914 () Bool)

(declare-fun e!232130 () Bool)

(assert (=> b!381914 (= e!232130 tp_is_empty!9259)))

(declare-fun mapNonEmpty!15453 () Bool)

(declare-fun mapRes!15453 () Bool)

(declare-fun tp!30548 () Bool)

(assert (=> mapNonEmpty!15453 (= mapRes!15453 (and tp!30548 e!232130))))

(declare-fun mapKey!15453 () (_ BitVec 32))

(declare-datatypes ((V!13451 0))(
  ( (V!13452 (val!4674 Int)) )
))
(declare-datatypes ((ValueCell!4286 0))(
  ( (ValueCellFull!4286 (v!6867 V!13451)) (EmptyCell!4286) )
))
(declare-fun mapValue!15453 () ValueCell!4286)

(declare-datatypes ((array!22409 0))(
  ( (array!22410 (arr!10670 (Array (_ BitVec 32) ValueCell!4286)) (size!11022 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22409)

(declare-fun mapRest!15453 () (Array (_ BitVec 32) ValueCell!4286))

(assert (=> mapNonEmpty!15453 (= (arr!10670 _values!506) (store mapRest!15453 mapKey!15453 mapValue!15453))))

(declare-fun b!381916 () Bool)

(declare-fun res!217227 () Bool)

(declare-fun e!232132 () Bool)

(assert (=> b!381916 (=> (not res!217227) (not e!232132))))

(declare-datatypes ((array!22411 0))(
  ( (array!22412 (arr!10671 (Array (_ BitVec 32) (_ BitVec 64))) (size!11023 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22411)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381916 (= res!217227 (or (= (select (arr!10671 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10671 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381917 () Bool)

(declare-fun e!232128 () Bool)

(assert (=> b!381917 (= e!232132 e!232128)))

(declare-fun res!217224 () Bool)

(assert (=> b!381917 (=> (not res!217224) (not e!232128))))

(declare-fun lt!179173 () array!22411)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22411 (_ BitVec 32)) Bool)

(assert (=> b!381917 (= res!217224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179173 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!381917 (= lt!179173 (array!22412 (store (arr!10671 _keys!658) i!548 k!778) (size!11023 _keys!658)))))

(declare-fun b!381918 () Bool)

(declare-fun res!217221 () Bool)

(assert (=> b!381918 (=> (not res!217221) (not e!232132))))

(assert (=> b!381918 (= res!217221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381919 () Bool)

(declare-fun e!232131 () Bool)

(assert (=> b!381919 (= e!232131 true)))

(declare-datatypes ((tuple2!6230 0))(
  ( (tuple2!6231 (_1!3125 (_ BitVec 64)) (_2!3125 V!13451)) )
))
(declare-datatypes ((List!6099 0))(
  ( (Nil!6096) (Cons!6095 (h!6951 tuple2!6230) (t!11257 List!6099)) )
))
(declare-datatypes ((ListLongMap!5157 0))(
  ( (ListLongMap!5158 (toList!2594 List!6099)) )
))
(declare-fun lt!179176 () ListLongMap!5157)

(declare-fun lt!179175 () ListLongMap!5157)

(assert (=> b!381919 (= lt!179176 lt!179175)))

(declare-fun b!381920 () Bool)

(declare-fun res!217226 () Bool)

(assert (=> b!381920 (=> (not res!217226) (not e!232132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381920 (= res!217226 (validKeyInArray!0 k!778))))

(declare-fun b!381921 () Bool)

(declare-fun res!217225 () Bool)

(assert (=> b!381921 (=> (not res!217225) (not e!232132))))

(declare-fun arrayContainsKey!0 (array!22411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381921 (= res!217225 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381922 () Bool)

(declare-fun res!217219 () Bool)

(assert (=> b!381922 (=> (not res!217219) (not e!232132))))

(assert (=> b!381922 (= res!217219 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11023 _keys!658))))))

(declare-fun b!381923 () Bool)

(declare-fun res!217222 () Bool)

(assert (=> b!381923 (=> (not res!217222) (not e!232128))))

(declare-datatypes ((List!6100 0))(
  ( (Nil!6097) (Cons!6096 (h!6952 (_ BitVec 64)) (t!11258 List!6100)) )
))
(declare-fun arrayNoDuplicates!0 (array!22411 (_ BitVec 32) List!6100) Bool)

(assert (=> b!381923 (= res!217222 (arrayNoDuplicates!0 lt!179173 #b00000000000000000000000000000000 Nil!6097))))

(declare-fun b!381924 () Bool)

(assert (=> b!381924 (= e!232128 (not e!232131))))

(declare-fun res!217220 () Bool)

(assert (=> b!381924 (=> res!217220 e!232131)))

(declare-fun lt!179178 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381924 (= res!217220 (or (and (not lt!179178) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179178) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179178)))))

(assert (=> b!381924 (= lt!179178 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!179179 () ListLongMap!5157)

(declare-fun zeroValue!472 () V!13451)

(declare-fun minValue!472 () V!13451)

(declare-fun getCurrentListMap!2013 (array!22411 array!22409 (_ BitVec 32) (_ BitVec 32) V!13451 V!13451 (_ BitVec 32) Int) ListLongMap!5157)

(assert (=> b!381924 (= lt!179179 (getCurrentListMap!2013 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179177 () array!22409)

(assert (=> b!381924 (= lt!179176 (getCurrentListMap!2013 lt!179173 lt!179177 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179174 () ListLongMap!5157)

(assert (=> b!381924 (and (= lt!179175 lt!179174) (= lt!179174 lt!179175))))

(declare-fun lt!179172 () ListLongMap!5157)

(declare-fun v!373 () V!13451)

(declare-fun +!931 (ListLongMap!5157 tuple2!6230) ListLongMap!5157)

(assert (=> b!381924 (= lt!179174 (+!931 lt!179172 (tuple2!6231 k!778 v!373)))))

(declare-datatypes ((Unit!11755 0))(
  ( (Unit!11756) )
))
(declare-fun lt!179171 () Unit!11755)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!164 (array!22411 array!22409 (_ BitVec 32) (_ BitVec 32) V!13451 V!13451 (_ BitVec 32) (_ BitVec 64) V!13451 (_ BitVec 32) Int) Unit!11755)

(assert (=> b!381924 (= lt!179171 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!164 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!831 (array!22411 array!22409 (_ BitVec 32) (_ BitVec 32) V!13451 V!13451 (_ BitVec 32) Int) ListLongMap!5157)

(assert (=> b!381924 (= lt!179175 (getCurrentListMapNoExtraKeys!831 lt!179173 lt!179177 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381924 (= lt!179177 (array!22410 (store (arr!10670 _values!506) i!548 (ValueCellFull!4286 v!373)) (size!11022 _values!506)))))

(assert (=> b!381924 (= lt!179172 (getCurrentListMapNoExtraKeys!831 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15453 () Bool)

(assert (=> mapIsEmpty!15453 mapRes!15453))

(declare-fun res!217229 () Bool)

(assert (=> start!37492 (=> (not res!217229) (not e!232132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37492 (= res!217229 (validMask!0 mask!970))))

(assert (=> start!37492 e!232132))

(declare-fun e!232129 () Bool)

(declare-fun array_inv!7834 (array!22409) Bool)

(assert (=> start!37492 (and (array_inv!7834 _values!506) e!232129)))

(assert (=> start!37492 tp!30549))

(assert (=> start!37492 true))

(assert (=> start!37492 tp_is_empty!9259))

(declare-fun array_inv!7835 (array!22411) Bool)

(assert (=> start!37492 (array_inv!7835 _keys!658)))

(declare-fun b!381915 () Bool)

(assert (=> b!381915 (= e!232129 (and e!232134 mapRes!15453))))

(declare-fun condMapEmpty!15453 () Bool)

(declare-fun mapDefault!15453 () ValueCell!4286)

