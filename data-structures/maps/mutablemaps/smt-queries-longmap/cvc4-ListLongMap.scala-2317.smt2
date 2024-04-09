; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37376 () Bool)

(assert start!37376)

(declare-fun b_free!8495 () Bool)

(declare-fun b_next!8495 () Bool)

(assert (=> start!37376 (= b_free!8495 (not b_next!8495))))

(declare-fun tp!30200 () Bool)

(declare-fun b_and!15755 () Bool)

(assert (=> start!37376 (= tp!30200 b_and!15755)))

(declare-fun b!379395 () Bool)

(declare-fun res!215229 () Bool)

(declare-fun e!230835 () Bool)

(assert (=> b!379395 (=> (not res!215229) (not e!230835))))

(declare-datatypes ((array!22183 0))(
  ( (array!22184 (arr!10557 (Array (_ BitVec 32) (_ BitVec 64))) (size!10909 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22183)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379395 (= res!215229 (or (= (select (arr!10557 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10557 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379396 () Bool)

(declare-fun res!215225 () Bool)

(declare-fun e!230830 () Bool)

(assert (=> b!379396 (=> (not res!215225) (not e!230830))))

(declare-fun lt!177278 () array!22183)

(declare-datatypes ((List!6017 0))(
  ( (Nil!6014) (Cons!6013 (h!6869 (_ BitVec 64)) (t!11175 List!6017)) )
))
(declare-fun arrayNoDuplicates!0 (array!22183 (_ BitVec 32) List!6017) Bool)

(assert (=> b!379396 (= res!215225 (arrayNoDuplicates!0 lt!177278 #b00000000000000000000000000000000 Nil!6014))))

(declare-fun b!379397 () Bool)

(declare-fun res!215226 () Bool)

(assert (=> b!379397 (=> (not res!215226) (not e!230835))))

(assert (=> b!379397 (= res!215226 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6014))))

(declare-fun b!379398 () Bool)

(declare-fun res!215232 () Bool)

(assert (=> b!379398 (=> (not res!215232) (not e!230835))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22183 (_ BitVec 32)) Bool)

(assert (=> b!379398 (= res!215232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379399 () Bool)

(declare-fun e!230828 () Bool)

(declare-fun e!230833 () Bool)

(assert (=> b!379399 (= e!230828 e!230833)))

(declare-fun res!215233 () Bool)

(assert (=> b!379399 (=> res!215233 e!230833)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!379399 (= res!215233 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13295 0))(
  ( (V!13296 (val!4616 Int)) )
))
(declare-datatypes ((tuple2!6144 0))(
  ( (tuple2!6145 (_1!3082 (_ BitVec 64)) (_2!3082 V!13295)) )
))
(declare-datatypes ((List!6018 0))(
  ( (Nil!6015) (Cons!6014 (h!6870 tuple2!6144) (t!11176 List!6018)) )
))
(declare-datatypes ((ListLongMap!5071 0))(
  ( (ListLongMap!5072 (toList!2551 List!6018)) )
))
(declare-fun lt!177284 () ListLongMap!5071)

(declare-fun lt!177277 () ListLongMap!5071)

(assert (=> b!379399 (= lt!177284 lt!177277)))

(declare-fun lt!177288 () ListLongMap!5071)

(declare-fun lt!177281 () tuple2!6144)

(declare-fun +!892 (ListLongMap!5071 tuple2!6144) ListLongMap!5071)

(assert (=> b!379399 (= lt!177277 (+!892 lt!177288 lt!177281))))

(declare-fun lt!177289 () ListLongMap!5071)

(declare-fun lt!177283 () ListLongMap!5071)

(assert (=> b!379399 (= lt!177289 lt!177283)))

(declare-fun lt!177282 () ListLongMap!5071)

(assert (=> b!379399 (= lt!177283 (+!892 lt!177282 lt!177281))))

(declare-fun lt!177287 () ListLongMap!5071)

(assert (=> b!379399 (= lt!177289 (+!892 lt!177287 lt!177281))))

(declare-fun minValue!472 () V!13295)

(assert (=> b!379399 (= lt!177281 (tuple2!6145 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379400 () Bool)

(assert (=> b!379400 (= e!230835 e!230830)))

(declare-fun res!215223 () Bool)

(assert (=> b!379400 (=> (not res!215223) (not e!230830))))

(assert (=> b!379400 (= res!215223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177278 mask!970))))

(assert (=> b!379400 (= lt!177278 (array!22184 (store (arr!10557 _keys!658) i!548 k!778) (size!10909 _keys!658)))))

(declare-fun b!379402 () Bool)

(declare-fun res!215228 () Bool)

(assert (=> b!379402 (=> (not res!215228) (not e!230835))))

(assert (=> b!379402 (= res!215228 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10909 _keys!658))))))

(declare-fun b!379403 () Bool)

(declare-fun e!230829 () Bool)

(declare-fun tp_is_empty!9143 () Bool)

(assert (=> b!379403 (= e!230829 tp_is_empty!9143)))

(declare-fun mapIsEmpty!15279 () Bool)

(declare-fun mapRes!15279 () Bool)

(assert (=> mapIsEmpty!15279 mapRes!15279))

(declare-fun b!379404 () Bool)

(declare-fun e!230832 () Bool)

(assert (=> b!379404 (= e!230832 tp_is_empty!9143)))

(declare-fun b!379405 () Bool)

(assert (=> b!379405 (= e!230833 (bvsle #b00000000000000000000000000000000 (size!10909 _keys!658)))))

(declare-fun lt!177285 () tuple2!6144)

(assert (=> b!379405 (= lt!177283 (+!892 lt!177277 lt!177285))))

(declare-fun v!373 () V!13295)

(declare-datatypes ((Unit!11679 0))(
  ( (Unit!11680) )
))
(declare-fun lt!177280 () Unit!11679)

(declare-fun addCommutativeForDiffKeys!304 (ListLongMap!5071 (_ BitVec 64) V!13295 (_ BitVec 64) V!13295) Unit!11679)

(assert (=> b!379405 (= lt!177280 (addCommutativeForDiffKeys!304 lt!177288 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!15279 () Bool)

(declare-fun tp!30201 () Bool)

(assert (=> mapNonEmpty!15279 (= mapRes!15279 (and tp!30201 e!230829))))

(declare-datatypes ((ValueCell!4228 0))(
  ( (ValueCellFull!4228 (v!6809 V!13295)) (EmptyCell!4228) )
))
(declare-datatypes ((array!22185 0))(
  ( (array!22186 (arr!10558 (Array (_ BitVec 32) ValueCell!4228)) (size!10910 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22185)

(declare-fun mapKey!15279 () (_ BitVec 32))

(declare-fun mapValue!15279 () ValueCell!4228)

(declare-fun mapRest!15279 () (Array (_ BitVec 32) ValueCell!4228))

(assert (=> mapNonEmpty!15279 (= (arr!10558 _values!506) (store mapRest!15279 mapKey!15279 mapValue!15279))))

(declare-fun b!379406 () Bool)

(declare-fun res!215234 () Bool)

(assert (=> b!379406 (=> (not res!215234) (not e!230835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379406 (= res!215234 (validKeyInArray!0 k!778))))

(declare-fun b!379407 () Bool)

(declare-fun res!215224 () Bool)

(assert (=> b!379407 (=> (not res!215224) (not e!230835))))

(declare-fun arrayContainsKey!0 (array!22183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379407 (= res!215224 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379408 () Bool)

(declare-fun res!215227 () Bool)

(assert (=> b!379408 (=> (not res!215227) (not e!230835))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379408 (= res!215227 (and (= (size!10910 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10909 _keys!658) (size!10910 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379409 () Bool)

(declare-fun e!230831 () Bool)

(assert (=> b!379409 (= e!230831 (and e!230832 mapRes!15279))))

(declare-fun condMapEmpty!15279 () Bool)

(declare-fun mapDefault!15279 () ValueCell!4228)

