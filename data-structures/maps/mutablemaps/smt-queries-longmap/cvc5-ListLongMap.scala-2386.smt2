; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37786 () Bool)

(assert start!37786)

(declare-fun b_free!8881 () Bool)

(declare-fun b_next!8881 () Bool)

(assert (=> start!37786 (= b_free!8881 (not b_next!8881))))

(declare-fun tp!31395 () Bool)

(declare-fun b_and!16141 () Bool)

(assert (=> start!37786 (= tp!31395 b_and!16141)))

(declare-fun b!387689 () Bool)

(declare-fun res!221673 () Bool)

(declare-fun e!234990 () Bool)

(assert (=> b!387689 (=> (not res!221673) (not e!234990))))

(declare-datatypes ((array!22975 0))(
  ( (array!22976 (arr!10953 (Array (_ BitVec 32) (_ BitVec 64))) (size!11305 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22975)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22975 (_ BitVec 32)) Bool)

(assert (=> b!387689 (= res!221673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387690 () Bool)

(declare-fun res!221679 () Bool)

(assert (=> b!387690 (=> (not res!221679) (not e!234990))))

(declare-datatypes ((V!13843 0))(
  ( (V!13844 (val!4821 Int)) )
))
(declare-datatypes ((ValueCell!4433 0))(
  ( (ValueCellFull!4433 (v!7014 V!13843)) (EmptyCell!4433) )
))
(declare-datatypes ((array!22977 0))(
  ( (array!22978 (arr!10954 (Array (_ BitVec 32) ValueCell!4433)) (size!11306 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22977)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387690 (= res!221679 (and (= (size!11306 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11305 _keys!658) (size!11306 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387691 () Bool)

(declare-fun res!221672 () Bool)

(declare-fun e!234992 () Bool)

(assert (=> b!387691 (=> (not res!221672) (not e!234992))))

(declare-fun lt!182102 () array!22975)

(declare-datatypes ((List!6306 0))(
  ( (Nil!6303) (Cons!6302 (h!7158 (_ BitVec 64)) (t!11464 List!6306)) )
))
(declare-fun arrayNoDuplicates!0 (array!22975 (_ BitVec 32) List!6306) Bool)

(assert (=> b!387691 (= res!221672 (arrayNoDuplicates!0 lt!182102 #b00000000000000000000000000000000 Nil!6303))))

(declare-fun b!387692 () Bool)

(declare-fun e!234993 () Bool)

(declare-fun tp_is_empty!9553 () Bool)

(assert (=> b!387692 (= e!234993 tp_is_empty!9553)))

(declare-fun b!387693 () Bool)

(declare-fun res!221677 () Bool)

(assert (=> b!387693 (=> (not res!221677) (not e!234990))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387693 (= res!221677 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11305 _keys!658))))))

(declare-fun b!387694 () Bool)

(declare-fun res!221676 () Bool)

(assert (=> b!387694 (=> (not res!221676) (not e!234990))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387694 (= res!221676 (validKeyInArray!0 k!778))))

(declare-fun res!221680 () Bool)

(assert (=> start!37786 (=> (not res!221680) (not e!234990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37786 (= res!221680 (validMask!0 mask!970))))

(assert (=> start!37786 e!234990))

(declare-fun e!234988 () Bool)

(declare-fun array_inv!8028 (array!22977) Bool)

(assert (=> start!37786 (and (array_inv!8028 _values!506) e!234988)))

(assert (=> start!37786 tp!31395))

(assert (=> start!37786 true))

(assert (=> start!37786 tp_is_empty!9553))

(declare-fun array_inv!8029 (array!22975) Bool)

(assert (=> start!37786 (array_inv!8029 _keys!658)))

(declare-fun b!387695 () Bool)

(declare-fun res!221678 () Bool)

(assert (=> b!387695 (=> (not res!221678) (not e!234990))))

(assert (=> b!387695 (= res!221678 (or (= (select (arr!10953 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10953 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387696 () Bool)

(declare-fun res!221681 () Bool)

(assert (=> b!387696 (=> (not res!221681) (not e!234990))))

(assert (=> b!387696 (= res!221681 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6303))))

(declare-fun b!387697 () Bool)

(declare-fun e!234989 () Bool)

(assert (=> b!387697 (= e!234989 tp_is_empty!9553)))

(declare-fun b!387698 () Bool)

(declare-fun res!221675 () Bool)

(assert (=> b!387698 (=> (not res!221675) (not e!234990))))

(declare-fun arrayContainsKey!0 (array!22975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387698 (= res!221675 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!387699 () Bool)

(assert (=> b!387699 (= e!234992 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6422 0))(
  ( (tuple2!6423 (_1!3221 (_ BitVec 64)) (_2!3221 V!13843)) )
))
(declare-datatypes ((List!6307 0))(
  ( (Nil!6304) (Cons!6303 (h!7159 tuple2!6422) (t!11465 List!6307)) )
))
(declare-datatypes ((ListLongMap!5349 0))(
  ( (ListLongMap!5350 (toList!2690 List!6307)) )
))
(declare-fun lt!182103 () ListLongMap!5349)

(declare-fun zeroValue!472 () V!13843)

(declare-fun v!373 () V!13843)

(declare-fun minValue!472 () V!13843)

(declare-fun getCurrentListMapNoExtraKeys!924 (array!22975 array!22977 (_ BitVec 32) (_ BitVec 32) V!13843 V!13843 (_ BitVec 32) Int) ListLongMap!5349)

(assert (=> b!387699 (= lt!182103 (getCurrentListMapNoExtraKeys!924 lt!182102 (array!22978 (store (arr!10954 _values!506) i!548 (ValueCellFull!4433 v!373)) (size!11306 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182104 () ListLongMap!5349)

(assert (=> b!387699 (= lt!182104 (getCurrentListMapNoExtraKeys!924 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387700 () Bool)

(assert (=> b!387700 (= e!234990 e!234992)))

(declare-fun res!221674 () Bool)

(assert (=> b!387700 (=> (not res!221674) (not e!234992))))

(assert (=> b!387700 (= res!221674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182102 mask!970))))

(assert (=> b!387700 (= lt!182102 (array!22976 (store (arr!10953 _keys!658) i!548 k!778) (size!11305 _keys!658)))))

(declare-fun b!387701 () Bool)

(declare-fun mapRes!15894 () Bool)

(assert (=> b!387701 (= e!234988 (and e!234993 mapRes!15894))))

(declare-fun condMapEmpty!15894 () Bool)

(declare-fun mapDefault!15894 () ValueCell!4433)

