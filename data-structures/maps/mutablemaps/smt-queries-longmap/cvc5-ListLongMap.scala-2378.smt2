; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37738 () Bool)

(assert start!37738)

(declare-fun b_free!8833 () Bool)

(declare-fun b_next!8833 () Bool)

(assert (=> start!37738 (= b_free!8833 (not b_next!8833))))

(declare-fun tp!31250 () Bool)

(declare-fun b_and!16093 () Bool)

(assert (=> start!37738 (= tp!31250 b_and!16093)))

(declare-fun mapNonEmpty!15822 () Bool)

(declare-fun mapRes!15822 () Bool)

(declare-fun tp!31251 () Bool)

(declare-fun e!234560 () Bool)

(assert (=> mapNonEmpty!15822 (= mapRes!15822 (and tp!31251 e!234560))))

(declare-datatypes ((V!13779 0))(
  ( (V!13780 (val!4797 Int)) )
))
(declare-datatypes ((ValueCell!4409 0))(
  ( (ValueCellFull!4409 (v!6990 V!13779)) (EmptyCell!4409) )
))
(declare-datatypes ((array!22879 0))(
  ( (array!22880 (arr!10905 (Array (_ BitVec 32) ValueCell!4409)) (size!11257 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22879)

(declare-fun mapValue!15822 () ValueCell!4409)

(declare-fun mapKey!15822 () (_ BitVec 32))

(declare-fun mapRest!15822 () (Array (_ BitVec 32) ValueCell!4409))

(assert (=> mapNonEmpty!15822 (= (arr!10905 _values!506) (store mapRest!15822 mapKey!15822 mapValue!15822))))

(declare-fun b!386754 () Bool)

(declare-fun res!220961 () Bool)

(declare-fun e!234558 () Bool)

(assert (=> b!386754 (=> (not res!220961) (not e!234558))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22881 0))(
  ( (array!22882 (arr!10906 (Array (_ BitVec 32) (_ BitVec 64))) (size!11258 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22881)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!386754 (= res!220961 (and (= (size!11257 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11258 _keys!658) (size!11257 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386755 () Bool)

(declare-fun e!234556 () Bool)

(assert (=> b!386755 (= e!234556 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!181887 () array!22881)

(declare-fun v!373 () V!13779)

(declare-fun zeroValue!472 () V!13779)

(declare-datatypes ((tuple2!6388 0))(
  ( (tuple2!6389 (_1!3204 (_ BitVec 64)) (_2!3204 V!13779)) )
))
(declare-datatypes ((List!6272 0))(
  ( (Nil!6269) (Cons!6268 (h!7124 tuple2!6388) (t!11430 List!6272)) )
))
(declare-datatypes ((ListLongMap!5315 0))(
  ( (ListLongMap!5316 (toList!2673 List!6272)) )
))
(declare-fun lt!181886 () ListLongMap!5315)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13779)

(declare-fun getCurrentListMapNoExtraKeys!907 (array!22881 array!22879 (_ BitVec 32) (_ BitVec 32) V!13779 V!13779 (_ BitVec 32) Int) ListLongMap!5315)

(assert (=> b!386755 (= lt!181886 (getCurrentListMapNoExtraKeys!907 lt!181887 (array!22880 (store (arr!10905 _values!506) i!548 (ValueCellFull!4409 v!373)) (size!11257 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181888 () ListLongMap!5315)

(assert (=> b!386755 (= lt!181888 (getCurrentListMapNoExtraKeys!907 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386756 () Bool)

(declare-fun res!220952 () Bool)

(assert (=> b!386756 (=> (not res!220952) (not e!234558))))

(declare-datatypes ((List!6273 0))(
  ( (Nil!6270) (Cons!6269 (h!7125 (_ BitVec 64)) (t!11431 List!6273)) )
))
(declare-fun arrayNoDuplicates!0 (array!22881 (_ BitVec 32) List!6273) Bool)

(assert (=> b!386756 (= res!220952 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6270))))

(declare-fun b!386757 () Bool)

(declare-fun tp_is_empty!9505 () Bool)

(assert (=> b!386757 (= e!234560 tp_is_empty!9505)))

(declare-fun b!386758 () Bool)

(assert (=> b!386758 (= e!234558 e!234556)))

(declare-fun res!220955 () Bool)

(assert (=> b!386758 (=> (not res!220955) (not e!234556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22881 (_ BitVec 32)) Bool)

(assert (=> b!386758 (= res!220955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181887 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!386758 (= lt!181887 (array!22882 (store (arr!10906 _keys!658) i!548 k!778) (size!11258 _keys!658)))))

(declare-fun b!386759 () Bool)

(declare-fun res!220956 () Bool)

(assert (=> b!386759 (=> (not res!220956) (not e!234558))))

(assert (=> b!386759 (= res!220956 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11258 _keys!658))))))

(declare-fun b!386760 () Bool)

(declare-fun res!220959 () Bool)

(assert (=> b!386760 (=> (not res!220959) (not e!234558))))

(assert (=> b!386760 (= res!220959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!386761 () Bool)

(declare-fun res!220953 () Bool)

(assert (=> b!386761 (=> (not res!220953) (not e!234558))))

(assert (=> b!386761 (= res!220953 (or (= (select (arr!10906 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10906 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386762 () Bool)

(declare-fun e!234559 () Bool)

(assert (=> b!386762 (= e!234559 tp_is_empty!9505)))

(declare-fun res!220960 () Bool)

(assert (=> start!37738 (=> (not res!220960) (not e!234558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37738 (= res!220960 (validMask!0 mask!970))))

(assert (=> start!37738 e!234558))

(declare-fun e!234561 () Bool)

(declare-fun array_inv!7996 (array!22879) Bool)

(assert (=> start!37738 (and (array_inv!7996 _values!506) e!234561)))

(assert (=> start!37738 tp!31250))

(assert (=> start!37738 true))

(assert (=> start!37738 tp_is_empty!9505))

(declare-fun array_inv!7997 (array!22881) Bool)

(assert (=> start!37738 (array_inv!7997 _keys!658)))

(declare-fun b!386753 () Bool)

(declare-fun res!220954 () Bool)

(assert (=> b!386753 (=> (not res!220954) (not e!234556))))

(assert (=> b!386753 (= res!220954 (arrayNoDuplicates!0 lt!181887 #b00000000000000000000000000000000 Nil!6270))))

(declare-fun mapIsEmpty!15822 () Bool)

(assert (=> mapIsEmpty!15822 mapRes!15822))

(declare-fun b!386763 () Bool)

(declare-fun res!220957 () Bool)

(assert (=> b!386763 (=> (not res!220957) (not e!234558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386763 (= res!220957 (validKeyInArray!0 k!778))))

(declare-fun b!386764 () Bool)

(declare-fun res!220958 () Bool)

(assert (=> b!386764 (=> (not res!220958) (not e!234558))))

(declare-fun arrayContainsKey!0 (array!22881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386764 (= res!220958 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!386765 () Bool)

(assert (=> b!386765 (= e!234561 (and e!234559 mapRes!15822))))

(declare-fun condMapEmpty!15822 () Bool)

(declare-fun mapDefault!15822 () ValueCell!4409)

