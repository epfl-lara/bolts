; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37726 () Bool)

(assert start!37726)

(declare-fun b_free!8821 () Bool)

(declare-fun b_next!8821 () Bool)

(assert (=> start!37726 (= b_free!8821 (not b_next!8821))))

(declare-fun tp!31214 () Bool)

(declare-fun b_and!16081 () Bool)

(assert (=> start!37726 (= tp!31214 b_and!16081)))

(declare-fun b!386519 () Bool)

(declare-fun res!220776 () Bool)

(declare-fun e!234453 () Bool)

(assert (=> b!386519 (=> (not res!220776) (not e!234453))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22857 0))(
  ( (array!22858 (arr!10894 (Array (_ BitVec 32) (_ BitVec 64))) (size!11246 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22857)

(assert (=> b!386519 (= res!220776 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11246 _keys!658))))))

(declare-fun b!386520 () Bool)

(declare-fun res!220779 () Bool)

(assert (=> b!386520 (=> (not res!220779) (not e!234453))))

(assert (=> b!386520 (= res!220779 (or (= (select (arr!10894 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10894 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386521 () Bool)

(declare-fun e!234451 () Bool)

(assert (=> b!386521 (= e!234453 e!234451)))

(declare-fun res!220775 () Bool)

(assert (=> b!386521 (=> (not res!220775) (not e!234451))))

(declare-fun lt!181832 () array!22857)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22857 (_ BitVec 32)) Bool)

(assert (=> b!386521 (= res!220775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181832 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!386521 (= lt!181832 (array!22858 (store (arr!10894 _keys!658) i!548 k!778) (size!11246 _keys!658)))))

(declare-fun b!386522 () Bool)

(declare-fun res!220774 () Bool)

(assert (=> b!386522 (=> (not res!220774) (not e!234453))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13763 0))(
  ( (V!13764 (val!4791 Int)) )
))
(declare-datatypes ((ValueCell!4403 0))(
  ( (ValueCellFull!4403 (v!6984 V!13763)) (EmptyCell!4403) )
))
(declare-datatypes ((array!22859 0))(
  ( (array!22860 (arr!10895 (Array (_ BitVec 32) ValueCell!4403)) (size!11247 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22859)

(assert (=> b!386522 (= res!220774 (and (= (size!11247 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11246 _keys!658) (size!11247 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386523 () Bool)

(declare-fun res!220772 () Bool)

(assert (=> b!386523 (=> (not res!220772) (not e!234453))))

(declare-fun arrayContainsKey!0 (array!22857 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386523 (= res!220772 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!386524 () Bool)

(assert (=> b!386524 (= e!234451 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6382 0))(
  ( (tuple2!6383 (_1!3201 (_ BitVec 64)) (_2!3201 V!13763)) )
))
(declare-datatypes ((List!6264 0))(
  ( (Nil!6261) (Cons!6260 (h!7116 tuple2!6382) (t!11422 List!6264)) )
))
(declare-datatypes ((ListLongMap!5309 0))(
  ( (ListLongMap!5310 (toList!2670 List!6264)) )
))
(declare-fun lt!181834 () ListLongMap!5309)

(declare-fun zeroValue!472 () V!13763)

(declare-fun v!373 () V!13763)

(declare-fun minValue!472 () V!13763)

(declare-fun getCurrentListMapNoExtraKeys!904 (array!22857 array!22859 (_ BitVec 32) (_ BitVec 32) V!13763 V!13763 (_ BitVec 32) Int) ListLongMap!5309)

(assert (=> b!386524 (= lt!181834 (getCurrentListMapNoExtraKeys!904 lt!181832 (array!22860 (store (arr!10895 _values!506) i!548 (ValueCellFull!4403 v!373)) (size!11247 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181833 () ListLongMap!5309)

(assert (=> b!386524 (= lt!181833 (getCurrentListMapNoExtraKeys!904 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386525 () Bool)

(declare-fun res!220781 () Bool)

(assert (=> b!386525 (=> (not res!220781) (not e!234451))))

(declare-datatypes ((List!6265 0))(
  ( (Nil!6262) (Cons!6261 (h!7117 (_ BitVec 64)) (t!11423 List!6265)) )
))
(declare-fun arrayNoDuplicates!0 (array!22857 (_ BitVec 32) List!6265) Bool)

(assert (=> b!386525 (= res!220781 (arrayNoDuplicates!0 lt!181832 #b00000000000000000000000000000000 Nil!6262))))

(declare-fun b!386526 () Bool)

(declare-fun res!220777 () Bool)

(assert (=> b!386526 (=> (not res!220777) (not e!234453))))

(assert (=> b!386526 (= res!220777 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6262))))

(declare-fun mapIsEmpty!15804 () Bool)

(declare-fun mapRes!15804 () Bool)

(assert (=> mapIsEmpty!15804 mapRes!15804))

(declare-fun b!386527 () Bool)

(declare-fun e!234448 () Bool)

(declare-fun tp_is_empty!9493 () Bool)

(assert (=> b!386527 (= e!234448 tp_is_empty!9493)))

(declare-fun mapNonEmpty!15804 () Bool)

(declare-fun tp!31215 () Bool)

(assert (=> mapNonEmpty!15804 (= mapRes!15804 (and tp!31215 e!234448))))

(declare-fun mapKey!15804 () (_ BitVec 32))

(declare-fun mapRest!15804 () (Array (_ BitVec 32) ValueCell!4403))

(declare-fun mapValue!15804 () ValueCell!4403)

(assert (=> mapNonEmpty!15804 (= (arr!10895 _values!506) (store mapRest!15804 mapKey!15804 mapValue!15804))))

(declare-fun res!220780 () Bool)

(assert (=> start!37726 (=> (not res!220780) (not e!234453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37726 (= res!220780 (validMask!0 mask!970))))

(assert (=> start!37726 e!234453))

(declare-fun e!234452 () Bool)

(declare-fun array_inv!7988 (array!22859) Bool)

(assert (=> start!37726 (and (array_inv!7988 _values!506) e!234452)))

(assert (=> start!37726 tp!31214))

(assert (=> start!37726 true))

(assert (=> start!37726 tp_is_empty!9493))

(declare-fun array_inv!7989 (array!22857) Bool)

(assert (=> start!37726 (array_inv!7989 _keys!658)))

(declare-fun b!386528 () Bool)

(declare-fun res!220773 () Bool)

(assert (=> b!386528 (=> (not res!220773) (not e!234453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386528 (= res!220773 (validKeyInArray!0 k!778))))

(declare-fun b!386529 () Bool)

(declare-fun e!234450 () Bool)

(assert (=> b!386529 (= e!234450 tp_is_empty!9493)))

(declare-fun b!386530 () Bool)

(declare-fun res!220778 () Bool)

(assert (=> b!386530 (=> (not res!220778) (not e!234453))))

(assert (=> b!386530 (= res!220778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386531 () Bool)

(assert (=> b!386531 (= e!234452 (and e!234450 mapRes!15804))))

(declare-fun condMapEmpty!15804 () Bool)

(declare-fun mapDefault!15804 () ValueCell!4403)

