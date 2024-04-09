; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37690 () Bool)

(assert start!37690)

(declare-fun b_free!8785 () Bool)

(declare-fun b_next!8785 () Bool)

(assert (=> start!37690 (= b_free!8785 (not b_next!8785))))

(declare-fun tp!31106 () Bool)

(declare-fun b_and!16045 () Bool)

(assert (=> start!37690 (= tp!31106 b_and!16045)))

(declare-fun b!385817 () Bool)

(declare-fun res!220234 () Bool)

(declare-fun e!234126 () Bool)

(assert (=> b!385817 (=> (not res!220234) (not e!234126))))

(declare-datatypes ((array!22789 0))(
  ( (array!22790 (arr!10860 (Array (_ BitVec 32) (_ BitVec 64))) (size!11212 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22789)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385817 (= res!220234 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385818 () Bool)

(declare-fun res!220235 () Bool)

(assert (=> b!385818 (=> (not res!220235) (not e!234126))))

(declare-datatypes ((List!6240 0))(
  ( (Nil!6237) (Cons!6236 (h!7092 (_ BitVec 64)) (t!11398 List!6240)) )
))
(declare-fun arrayNoDuplicates!0 (array!22789 (_ BitVec 32) List!6240) Bool)

(assert (=> b!385818 (= res!220235 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6237))))

(declare-fun b!385819 () Bool)

(declare-fun e!234129 () Bool)

(assert (=> b!385819 (= e!234126 e!234129)))

(declare-fun res!220237 () Bool)

(assert (=> b!385819 (=> (not res!220237) (not e!234129))))

(declare-fun lt!181670 () array!22789)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22789 (_ BitVec 32)) Bool)

(assert (=> b!385819 (= res!220237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181670 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385819 (= lt!181670 (array!22790 (store (arr!10860 _keys!658) i!548 k!778) (size!11212 _keys!658)))))

(declare-fun b!385820 () Bool)

(declare-fun res!220232 () Bool)

(assert (=> b!385820 (=> (not res!220232) (not e!234126))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13715 0))(
  ( (V!13716 (val!4773 Int)) )
))
(declare-datatypes ((ValueCell!4385 0))(
  ( (ValueCellFull!4385 (v!6966 V!13715)) (EmptyCell!4385) )
))
(declare-datatypes ((array!22791 0))(
  ( (array!22792 (arr!10861 (Array (_ BitVec 32) ValueCell!4385)) (size!11213 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22791)

(assert (=> b!385820 (= res!220232 (and (= (size!11213 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11212 _keys!658) (size!11213 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!220239 () Bool)

(assert (=> start!37690 (=> (not res!220239) (not e!234126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37690 (= res!220239 (validMask!0 mask!970))))

(assert (=> start!37690 e!234126))

(declare-fun e!234128 () Bool)

(declare-fun array_inv!7968 (array!22791) Bool)

(assert (=> start!37690 (and (array_inv!7968 _values!506) e!234128)))

(assert (=> start!37690 tp!31106))

(assert (=> start!37690 true))

(declare-fun tp_is_empty!9457 () Bool)

(assert (=> start!37690 tp_is_empty!9457))

(declare-fun array_inv!7969 (array!22789) Bool)

(assert (=> start!37690 (array_inv!7969 _keys!658)))

(declare-fun b!385821 () Bool)

(assert (=> b!385821 (= e!234129 false)))

(declare-datatypes ((tuple2!6362 0))(
  ( (tuple2!6363 (_1!3191 (_ BitVec 64)) (_2!3191 V!13715)) )
))
(declare-datatypes ((List!6241 0))(
  ( (Nil!6238) (Cons!6237 (h!7093 tuple2!6362) (t!11399 List!6241)) )
))
(declare-datatypes ((ListLongMap!5289 0))(
  ( (ListLongMap!5290 (toList!2660 List!6241)) )
))
(declare-fun lt!181672 () ListLongMap!5289)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13715)

(declare-fun v!373 () V!13715)

(declare-fun minValue!472 () V!13715)

(declare-fun getCurrentListMapNoExtraKeys!894 (array!22789 array!22791 (_ BitVec 32) (_ BitVec 32) V!13715 V!13715 (_ BitVec 32) Int) ListLongMap!5289)

(assert (=> b!385821 (= lt!181672 (getCurrentListMapNoExtraKeys!894 lt!181670 (array!22792 (store (arr!10861 _values!506) i!548 (ValueCellFull!4385 v!373)) (size!11213 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181671 () ListLongMap!5289)

(assert (=> b!385821 (= lt!181671 (getCurrentListMapNoExtraKeys!894 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385822 () Bool)

(declare-fun res!220238 () Bool)

(assert (=> b!385822 (=> (not res!220238) (not e!234126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385822 (= res!220238 (validKeyInArray!0 k!778))))

(declare-fun b!385823 () Bool)

(declare-fun res!220236 () Bool)

(assert (=> b!385823 (=> (not res!220236) (not e!234126))))

(assert (=> b!385823 (= res!220236 (or (= (select (arr!10860 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10860 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385824 () Bool)

(declare-fun res!220241 () Bool)

(assert (=> b!385824 (=> (not res!220241) (not e!234126))))

(assert (=> b!385824 (= res!220241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15750 () Bool)

(declare-fun mapRes!15750 () Bool)

(declare-fun tp!31107 () Bool)

(declare-fun e!234127 () Bool)

(assert (=> mapNonEmpty!15750 (= mapRes!15750 (and tp!31107 e!234127))))

(declare-fun mapRest!15750 () (Array (_ BitVec 32) ValueCell!4385))

(declare-fun mapValue!15750 () ValueCell!4385)

(declare-fun mapKey!15750 () (_ BitVec 32))

(assert (=> mapNonEmpty!15750 (= (arr!10861 _values!506) (store mapRest!15750 mapKey!15750 mapValue!15750))))

(declare-fun b!385825 () Bool)

(declare-fun res!220233 () Bool)

(assert (=> b!385825 (=> (not res!220233) (not e!234126))))

(assert (=> b!385825 (= res!220233 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11212 _keys!658))))))

(declare-fun b!385826 () Bool)

(declare-fun e!234125 () Bool)

(assert (=> b!385826 (= e!234128 (and e!234125 mapRes!15750))))

(declare-fun condMapEmpty!15750 () Bool)

(declare-fun mapDefault!15750 () ValueCell!4385)

