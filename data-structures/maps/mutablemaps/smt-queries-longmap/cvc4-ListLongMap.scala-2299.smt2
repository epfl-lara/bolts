; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37268 () Bool)

(assert start!37268)

(declare-fun b_free!8387 () Bool)

(declare-fun b_next!8387 () Bool)

(assert (=> start!37268 (= b_free!8387 (not b_next!8387))))

(declare-fun tp!29876 () Bool)

(declare-fun b_and!15647 () Bool)

(assert (=> start!37268 (= tp!29876 b_and!15647)))

(declare-fun b!376956 () Bool)

(declare-fun res!213272 () Bool)

(declare-fun e!229539 () Bool)

(assert (=> b!376956 (=> (not res!213272) (not e!229539))))

(declare-datatypes ((array!21969 0))(
  ( (array!21970 (arr!10450 (Array (_ BitVec 32) (_ BitVec 64))) (size!10802 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21969)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376956 (= res!213272 (or (= (select (arr!10450 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10450 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15117 () Bool)

(declare-fun mapRes!15117 () Bool)

(assert (=> mapIsEmpty!15117 mapRes!15117))

(declare-fun b!376958 () Bool)

(declare-fun res!213275 () Bool)

(assert (=> b!376958 (=> (not res!213275) (not e!229539))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13151 0))(
  ( (V!13152 (val!4562 Int)) )
))
(declare-datatypes ((ValueCell!4174 0))(
  ( (ValueCellFull!4174 (v!6755 V!13151)) (EmptyCell!4174) )
))
(declare-datatypes ((array!21971 0))(
  ( (array!21972 (arr!10451 (Array (_ BitVec 32) ValueCell!4174)) (size!10803 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21971)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!376958 (= res!213275 (and (= (size!10803 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10802 _keys!658) (size!10803 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376959 () Bool)

(declare-fun e!229533 () Bool)

(assert (=> b!376959 (= e!229533 true)))

(declare-datatypes ((tuple2!6054 0))(
  ( (tuple2!6055 (_1!3037 (_ BitVec 64)) (_2!3037 V!13151)) )
))
(declare-datatypes ((List!5924 0))(
  ( (Nil!5921) (Cons!5920 (h!6776 tuple2!6054) (t!11082 List!5924)) )
))
(declare-datatypes ((ListLongMap!4981 0))(
  ( (ListLongMap!4982 (toList!2506 List!5924)) )
))
(declare-fun lt!175216 () ListLongMap!4981)

(declare-fun lt!175213 () ListLongMap!4981)

(declare-fun lt!175210 () tuple2!6054)

(declare-fun +!847 (ListLongMap!4981 tuple2!6054) ListLongMap!4981)

(assert (=> b!376959 (= lt!175216 (+!847 lt!175213 lt!175210))))

(declare-fun v!373 () V!13151)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!175219 () ListLongMap!4981)

(declare-datatypes ((Unit!11595 0))(
  ( (Unit!11596) )
))
(declare-fun lt!175212 () Unit!11595)

(declare-fun zeroValue!472 () V!13151)

(declare-fun addCommutativeForDiffKeys!269 (ListLongMap!4981 (_ BitVec 64) V!13151 (_ BitVec 64) V!13151) Unit!11595)

(assert (=> b!376959 (= lt!175212 (addCommutativeForDiffKeys!269 lt!175219 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!15117 () Bool)

(declare-fun tp!29877 () Bool)

(declare-fun e!229536 () Bool)

(assert (=> mapNonEmpty!15117 (= mapRes!15117 (and tp!29877 e!229536))))

(declare-fun mapRest!15117 () (Array (_ BitVec 32) ValueCell!4174))

(declare-fun mapKey!15117 () (_ BitVec 32))

(declare-fun mapValue!15117 () ValueCell!4174)

(assert (=> mapNonEmpty!15117 (= (arr!10451 _values!506) (store mapRest!15117 mapKey!15117 mapValue!15117))))

(declare-fun b!376960 () Bool)

(declare-fun e!229537 () Bool)

(assert (=> b!376960 (= e!229539 e!229537)))

(declare-fun res!213281 () Bool)

(assert (=> b!376960 (=> (not res!213281) (not e!229537))))

(declare-fun lt!175218 () array!21969)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21969 (_ BitVec 32)) Bool)

(assert (=> b!376960 (= res!213281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175218 mask!970))))

(assert (=> b!376960 (= lt!175218 (array!21970 (store (arr!10450 _keys!658) i!548 k!778) (size!10802 _keys!658)))))

(declare-fun b!376961 () Bool)

(declare-fun e!229538 () Bool)

(declare-fun e!229535 () Bool)

(assert (=> b!376961 (= e!229538 (and e!229535 mapRes!15117))))

(declare-fun condMapEmpty!15117 () Bool)

(declare-fun mapDefault!15117 () ValueCell!4174)

