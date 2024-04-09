; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37754 () Bool)

(assert start!37754)

(declare-fun b_free!8849 () Bool)

(declare-fun b_next!8849 () Bool)

(assert (=> start!37754 (= b_free!8849 (not b_next!8849))))

(declare-fun tp!31298 () Bool)

(declare-fun b_and!16109 () Bool)

(assert (=> start!37754 (= tp!31298 b_and!16109)))

(declare-fun b!387065 () Bool)

(declare-fun res!221192 () Bool)

(declare-fun e!234705 () Bool)

(assert (=> b!387065 (=> (not res!221192) (not e!234705))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387065 (= res!221192 (validKeyInArray!0 k!778))))

(declare-fun b!387066 () Bool)

(declare-fun e!234700 () Bool)

(assert (=> b!387066 (= e!234700 false)))

(declare-datatypes ((V!13799 0))(
  ( (V!13800 (val!4805 Int)) )
))
(declare-datatypes ((ValueCell!4417 0))(
  ( (ValueCellFull!4417 (v!6998 V!13799)) (EmptyCell!4417) )
))
(declare-datatypes ((array!22911 0))(
  ( (array!22912 (arr!10921 (Array (_ BitVec 32) ValueCell!4417)) (size!11273 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22911)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((array!22913 0))(
  ( (array!22914 (arr!10922 (Array (_ BitVec 32) (_ BitVec 64))) (size!11274 (_ BitVec 32))) )
))
(declare-fun lt!181960 () array!22913)

(declare-fun zeroValue!472 () V!13799)

(declare-datatypes ((tuple2!6400 0))(
  ( (tuple2!6401 (_1!3210 (_ BitVec 64)) (_2!3210 V!13799)) )
))
(declare-datatypes ((List!6285 0))(
  ( (Nil!6282) (Cons!6281 (h!7137 tuple2!6400) (t!11443 List!6285)) )
))
(declare-datatypes ((ListLongMap!5327 0))(
  ( (ListLongMap!5328 (toList!2679 List!6285)) )
))
(declare-fun lt!181958 () ListLongMap!5327)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13799)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13799)

(declare-fun getCurrentListMapNoExtraKeys!913 (array!22913 array!22911 (_ BitVec 32) (_ BitVec 32) V!13799 V!13799 (_ BitVec 32) Int) ListLongMap!5327)

(assert (=> b!387066 (= lt!181958 (getCurrentListMapNoExtraKeys!913 lt!181960 (array!22912 (store (arr!10921 _values!506) i!548 (ValueCellFull!4417 v!373)) (size!11273 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181959 () ListLongMap!5327)

(declare-fun _keys!658 () array!22913)

(assert (=> b!387066 (= lt!181959 (getCurrentListMapNoExtraKeys!913 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15846 () Bool)

(declare-fun mapRes!15846 () Bool)

(declare-fun tp!31299 () Bool)

(declare-fun e!234701 () Bool)

(assert (=> mapNonEmpty!15846 (= mapRes!15846 (and tp!31299 e!234701))))

(declare-fun mapRest!15846 () (Array (_ BitVec 32) ValueCell!4417))

(declare-fun mapKey!15846 () (_ BitVec 32))

(declare-fun mapValue!15846 () ValueCell!4417)

(assert (=> mapNonEmpty!15846 (= (arr!10921 _values!506) (store mapRest!15846 mapKey!15846 mapValue!15846))))

(declare-fun b!387067 () Bool)

(declare-fun res!221195 () Bool)

(assert (=> b!387067 (=> (not res!221195) (not e!234705))))

(assert (=> b!387067 (= res!221195 (and (= (size!11273 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11274 _keys!658) (size!11273 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387068 () Bool)

(declare-fun res!221200 () Bool)

(assert (=> b!387068 (=> (not res!221200) (not e!234705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22913 (_ BitVec 32)) Bool)

(assert (=> b!387068 (= res!221200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15846 () Bool)

(assert (=> mapIsEmpty!15846 mapRes!15846))

(declare-fun res!221196 () Bool)

(assert (=> start!37754 (=> (not res!221196) (not e!234705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37754 (= res!221196 (validMask!0 mask!970))))

(assert (=> start!37754 e!234705))

(declare-fun e!234703 () Bool)

(declare-fun array_inv!8010 (array!22911) Bool)

(assert (=> start!37754 (and (array_inv!8010 _values!506) e!234703)))

(assert (=> start!37754 tp!31298))

(assert (=> start!37754 true))

(declare-fun tp_is_empty!9521 () Bool)

(assert (=> start!37754 tp_is_empty!9521))

(declare-fun array_inv!8011 (array!22913) Bool)

(assert (=> start!37754 (array_inv!8011 _keys!658)))

(declare-fun b!387069 () Bool)

(declare-fun e!234702 () Bool)

(assert (=> b!387069 (= e!234702 tp_is_empty!9521)))

(declare-fun b!387070 () Bool)

(declare-fun res!221198 () Bool)

(assert (=> b!387070 (=> (not res!221198) (not e!234705))))

(declare-fun arrayContainsKey!0 (array!22913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387070 (= res!221198 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!387071 () Bool)

(declare-fun res!221194 () Bool)

(assert (=> b!387071 (=> (not res!221194) (not e!234705))))

(assert (=> b!387071 (= res!221194 (or (= (select (arr!10922 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10922 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387072 () Bool)

(assert (=> b!387072 (= e!234701 tp_is_empty!9521)))

(declare-fun b!387073 () Bool)

(assert (=> b!387073 (= e!234703 (and e!234702 mapRes!15846))))

(declare-fun condMapEmpty!15846 () Bool)

(declare-fun mapDefault!15846 () ValueCell!4417)

