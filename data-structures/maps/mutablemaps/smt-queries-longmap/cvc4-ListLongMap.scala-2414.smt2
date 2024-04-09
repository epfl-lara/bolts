; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38202 () Bool)

(assert start!38202)

(declare-fun b_free!9053 () Bool)

(declare-fun b_next!9053 () Bool)

(assert (=> start!38202 (= b_free!9053 (not b_next!9053))))

(declare-fun tp!31944 () Bool)

(declare-fun b_and!16445 () Bool)

(assert (=> start!38202 (= tp!31944 b_and!16445)))

(declare-fun b!393673 () Bool)

(declare-fun e!238341 () Bool)

(declare-fun tp_is_empty!9725 () Bool)

(assert (=> b!393673 (= e!238341 tp_is_empty!9725)))

(declare-fun b!393674 () Bool)

(declare-fun res!225660 () Bool)

(declare-fun e!238338 () Bool)

(assert (=> b!393674 (=> (not res!225660) (not e!238338))))

(declare-datatypes ((array!23333 0))(
  ( (array!23334 (arr!11121 (Array (_ BitVec 32) (_ BitVec 64))) (size!11473 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23333)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393674 (= res!225660 (or (= (select (arr!11121 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11121 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393675 () Bool)

(declare-fun e!238337 () Bool)

(assert (=> b!393675 (= e!238338 e!238337)))

(declare-fun res!225655 () Bool)

(assert (=> b!393675 (=> (not res!225655) (not e!238337))))

(declare-fun lt!186461 () array!23333)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23333 (_ BitVec 32)) Bool)

(assert (=> b!393675 (= res!225655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186461 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!393675 (= lt!186461 (array!23334 (store (arr!11121 _keys!658) i!548 k!778) (size!11473 _keys!658)))))

(declare-fun b!393676 () Bool)

(declare-fun res!225659 () Bool)

(assert (=> b!393676 (=> (not res!225659) (not e!238338))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14071 0))(
  ( (V!14072 (val!4907 Int)) )
))
(declare-datatypes ((ValueCell!4519 0))(
  ( (ValueCellFull!4519 (v!7144 V!14071)) (EmptyCell!4519) )
))
(declare-datatypes ((array!23335 0))(
  ( (array!23336 (arr!11122 (Array (_ BitVec 32) ValueCell!4519)) (size!11474 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23335)

(assert (=> b!393676 (= res!225659 (and (= (size!11474 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11473 _keys!658) (size!11474 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!16185 () Bool)

(declare-fun mapRes!16185 () Bool)

(assert (=> mapIsEmpty!16185 mapRes!16185))

(declare-fun b!393677 () Bool)

(declare-fun res!225653 () Bool)

(assert (=> b!393677 (=> (not res!225653) (not e!238338))))

(assert (=> b!393677 (= res!225653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!16185 () Bool)

(declare-fun tp!31943 () Bool)

(assert (=> mapNonEmpty!16185 (= mapRes!16185 (and tp!31943 e!238341))))

(declare-fun mapKey!16185 () (_ BitVec 32))

(declare-fun mapValue!16185 () ValueCell!4519)

(declare-fun mapRest!16185 () (Array (_ BitVec 32) ValueCell!4519))

(assert (=> mapNonEmpty!16185 (= (arr!11122 _values!506) (store mapRest!16185 mapKey!16185 mapValue!16185))))

(declare-fun b!393678 () Bool)

(declare-fun res!225651 () Bool)

(assert (=> b!393678 (=> (not res!225651) (not e!238338))))

(declare-fun arrayContainsKey!0 (array!23333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393678 (= res!225651 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!393679 () Bool)

(declare-fun e!238339 () Bool)

(declare-fun e!238342 () Bool)

(assert (=> b!393679 (= e!238339 (and e!238342 mapRes!16185))))

(declare-fun condMapEmpty!16185 () Bool)

(declare-fun mapDefault!16185 () ValueCell!4519)

