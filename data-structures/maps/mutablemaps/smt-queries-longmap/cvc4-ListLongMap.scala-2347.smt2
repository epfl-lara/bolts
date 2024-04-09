; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37556 () Bool)

(assert start!37556)

(declare-fun b_free!8675 () Bool)

(declare-fun b_next!8675 () Bool)

(assert (=> start!37556 (= b_free!8675 (not b_next!8675))))

(declare-fun tp!30741 () Bool)

(declare-fun b_and!15935 () Bool)

(assert (=> start!37556 (= tp!30741 b_and!15935)))

(declare-fun b!383257 () Bool)

(declare-fun e!232800 () Bool)

(assert (=> b!383257 (= e!232800 true)))

(declare-datatypes ((V!13535 0))(
  ( (V!13536 (val!4706 Int)) )
))
(declare-datatypes ((tuple2!6284 0))(
  ( (tuple2!6285 (_1!3152 (_ BitVec 64)) (_2!3152 V!13535)) )
))
(declare-datatypes ((List!6152 0))(
  ( (Nil!6149) (Cons!6148 (h!7004 tuple2!6284) (t!11310 List!6152)) )
))
(declare-datatypes ((ListLongMap!5211 0))(
  ( (ListLongMap!5212 (toList!2621 List!6152)) )
))
(declare-fun lt!180096 () ListLongMap!5211)

(declare-fun lt!180090 () ListLongMap!5211)

(declare-fun lt!180093 () tuple2!6284)

(declare-fun +!957 (ListLongMap!5211 tuple2!6284) ListLongMap!5211)

(assert (=> b!383257 (= lt!180096 (+!957 lt!180090 lt!180093))))

(declare-fun lt!180088 () ListLongMap!5211)

(declare-fun lt!180094 () ListLongMap!5211)

(assert (=> b!383257 (= lt!180088 lt!180094)))

(declare-fun b!383258 () Bool)

(declare-fun res!218283 () Bool)

(declare-fun e!232802 () Bool)

(assert (=> b!383258 (=> (not res!218283) (not e!232802))))

(declare-datatypes ((array!22537 0))(
  ( (array!22538 (arr!10734 (Array (_ BitVec 32) (_ BitVec 64))) (size!11086 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22537)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383258 (= res!218283 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383259 () Bool)

(declare-fun res!218278 () Bool)

(assert (=> b!383259 (=> (not res!218278) (not e!232802))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4318 0))(
  ( (ValueCellFull!4318 (v!6899 V!13535)) (EmptyCell!4318) )
))
(declare-datatypes ((array!22539 0))(
  ( (array!22540 (arr!10735 (Array (_ BitVec 32) ValueCell!4318)) (size!11087 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22539)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!383259 (= res!218278 (and (= (size!11087 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11086 _keys!658) (size!11087 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383260 () Bool)

(declare-fun res!218285 () Bool)

(assert (=> b!383260 (=> (not res!218285) (not e!232802))))

(declare-datatypes ((List!6153 0))(
  ( (Nil!6150) (Cons!6149 (h!7005 (_ BitVec 64)) (t!11311 List!6153)) )
))
(declare-fun arrayNoDuplicates!0 (array!22537 (_ BitVec 32) List!6153) Bool)

(assert (=> b!383260 (= res!218285 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6150))))

(declare-fun b!383261 () Bool)

(declare-fun e!232803 () Bool)

(assert (=> b!383261 (= e!232802 e!232803)))

(declare-fun res!218279 () Bool)

(assert (=> b!383261 (=> (not res!218279) (not e!232803))))

(declare-fun lt!180091 () array!22537)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22537 (_ BitVec 32)) Bool)

(assert (=> b!383261 (= res!218279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180091 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383261 (= lt!180091 (array!22538 (store (arr!10734 _keys!658) i!548 k!778) (size!11086 _keys!658)))))

(declare-fun mapIsEmpty!15549 () Bool)

(declare-fun mapRes!15549 () Bool)

(assert (=> mapIsEmpty!15549 mapRes!15549))

(declare-fun b!383262 () Bool)

(declare-fun e!232804 () Bool)

(declare-fun tp_is_empty!9323 () Bool)

(assert (=> b!383262 (= e!232804 tp_is_empty!9323)))

(declare-fun mapNonEmpty!15549 () Bool)

(declare-fun tp!30740 () Bool)

(declare-fun e!232806 () Bool)

(assert (=> mapNonEmpty!15549 (= mapRes!15549 (and tp!30740 e!232806))))

(declare-fun mapValue!15549 () ValueCell!4318)

(declare-fun mapKey!15549 () (_ BitVec 32))

(declare-fun mapRest!15549 () (Array (_ BitVec 32) ValueCell!4318))

(assert (=> mapNonEmpty!15549 (= (arr!10735 _values!506) (store mapRest!15549 mapKey!15549 mapValue!15549))))

(declare-fun b!383263 () Bool)

(declare-fun res!218277 () Bool)

(assert (=> b!383263 (=> (not res!218277) (not e!232802))))

(assert (=> b!383263 (= res!218277 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11086 _keys!658))))))

(declare-fun b!383264 () Bool)

(declare-fun res!218276 () Bool)

(assert (=> b!383264 (=> (not res!218276) (not e!232802))))

(assert (=> b!383264 (= res!218276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383265 () Bool)

(declare-fun res!218284 () Bool)

(assert (=> b!383265 (=> (not res!218284) (not e!232802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383265 (= res!218284 (validKeyInArray!0 k!778))))

(declare-fun b!383266 () Bool)

(declare-fun res!218282 () Bool)

(assert (=> b!383266 (=> (not res!218282) (not e!232802))))

(assert (=> b!383266 (= res!218282 (or (= (select (arr!10734 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10734 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383267 () Bool)

(declare-fun res!218281 () Bool)

(assert (=> b!383267 (=> (not res!218281) (not e!232803))))

(assert (=> b!383267 (= res!218281 (arrayNoDuplicates!0 lt!180091 #b00000000000000000000000000000000 Nil!6150))))

(declare-fun b!383268 () Bool)

(assert (=> b!383268 (= e!232806 tp_is_empty!9323)))

(declare-fun res!218275 () Bool)

(assert (=> start!37556 (=> (not res!218275) (not e!232802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37556 (= res!218275 (validMask!0 mask!970))))

(assert (=> start!37556 e!232802))

(declare-fun e!232801 () Bool)

(declare-fun array_inv!7884 (array!22539) Bool)

(assert (=> start!37556 (and (array_inv!7884 _values!506) e!232801)))

(assert (=> start!37556 tp!30741))

(assert (=> start!37556 true))

(assert (=> start!37556 tp_is_empty!9323))

(declare-fun array_inv!7885 (array!22537) Bool)

(assert (=> start!37556 (array_inv!7885 _keys!658)))

(declare-fun b!383269 () Bool)

(assert (=> b!383269 (= e!232801 (and e!232804 mapRes!15549))))

(declare-fun condMapEmpty!15549 () Bool)

(declare-fun mapDefault!15549 () ValueCell!4318)

