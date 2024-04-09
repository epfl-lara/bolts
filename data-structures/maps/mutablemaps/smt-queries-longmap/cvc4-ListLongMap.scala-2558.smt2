; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39178 () Bool)

(assert start!39178)

(declare-fun b_free!9437 () Bool)

(declare-fun b_next!9437 () Bool)

(assert (=> start!39178 (= b_free!9437 (not b_next!9437))))

(declare-fun tp!33839 () Bool)

(declare-fun b_and!16841 () Bool)

(assert (=> start!39178 (= tp!33839 b_and!16841)))

(declare-fun b!412242 () Bool)

(declare-fun res!239451 () Bool)

(declare-fun e!246698 () Bool)

(assert (=> b!412242 (=> (not res!239451) (not e!246698))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25019 0))(
  ( (array!25020 (arr!11956 (Array (_ BitVec 32) (_ BitVec 64))) (size!12308 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25019)

(assert (=> b!412242 (= res!239451 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12308 _keys!709))))))

(declare-fun b!412243 () Bool)

(declare-fun e!246703 () Bool)

(assert (=> b!412243 (= e!246703 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189444 () array!25019)

(declare-datatypes ((V!15223 0))(
  ( (V!15224 (val!5339 Int)) )
))
(declare-datatypes ((ValueCell!4951 0))(
  ( (ValueCellFull!4951 (v!7582 V!15223)) (EmptyCell!4951) )
))
(declare-datatypes ((array!25021 0))(
  ( (array!25022 (arr!11957 (Array (_ BitVec 32) ValueCell!4951)) (size!12309 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25021)

(declare-fun zeroValue!515 () V!15223)

(declare-fun v!412 () V!15223)

(declare-fun minValue!515 () V!15223)

(declare-datatypes ((tuple2!6854 0))(
  ( (tuple2!6855 (_1!3437 (_ BitVec 64)) (_2!3437 V!15223)) )
))
(declare-datatypes ((List!6913 0))(
  ( (Nil!6910) (Cons!6909 (h!7765 tuple2!6854) (t!12095 List!6913)) )
))
(declare-datatypes ((ListLongMap!5781 0))(
  ( (ListLongMap!5782 (toList!2906 List!6913)) )
))
(declare-fun lt!189443 () ListLongMap!5781)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1116 (array!25019 array!25021 (_ BitVec 32) (_ BitVec 32) V!15223 V!15223 (_ BitVec 32) Int) ListLongMap!5781)

(assert (=> b!412243 (= lt!189443 (getCurrentListMapNoExtraKeys!1116 lt!189444 (array!25022 (store (arr!11957 _values!549) i!563 (ValueCellFull!4951 v!412)) (size!12309 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189442 () ListLongMap!5781)

(assert (=> b!412243 (= lt!189442 (getCurrentListMapNoExtraKeys!1116 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412244 () Bool)

(declare-fun res!239443 () Bool)

(assert (=> b!412244 (=> (not res!239443) (not e!246698))))

(assert (=> b!412244 (= res!239443 (and (= (size!12309 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12308 _keys!709) (size!12309 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17505 () Bool)

(declare-fun mapRes!17505 () Bool)

(declare-fun tp!33840 () Bool)

(declare-fun e!246702 () Bool)

(assert (=> mapNonEmpty!17505 (= mapRes!17505 (and tp!33840 e!246702))))

(declare-fun mapValue!17505 () ValueCell!4951)

(declare-fun mapKey!17505 () (_ BitVec 32))

(declare-fun mapRest!17505 () (Array (_ BitVec 32) ValueCell!4951))

(assert (=> mapNonEmpty!17505 (= (arr!11957 _values!549) (store mapRest!17505 mapKey!17505 mapValue!17505))))

(declare-fun b!412245 () Bool)

(declare-fun res!239454 () Bool)

(assert (=> b!412245 (=> (not res!239454) (not e!246698))))

(declare-datatypes ((List!6914 0))(
  ( (Nil!6911) (Cons!6910 (h!7766 (_ BitVec 64)) (t!12096 List!6914)) )
))
(declare-fun arrayNoDuplicates!0 (array!25019 (_ BitVec 32) List!6914) Bool)

(assert (=> b!412245 (= res!239454 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6911))))

(declare-fun b!412246 () Bool)

(assert (=> b!412246 (= e!246698 e!246703)))

(declare-fun res!239453 () Bool)

(assert (=> b!412246 (=> (not res!239453) (not e!246703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25019 (_ BitVec 32)) Bool)

(assert (=> b!412246 (= res!239453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189444 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!412246 (= lt!189444 (array!25020 (store (arr!11956 _keys!709) i!563 k!794) (size!12308 _keys!709)))))

(declare-fun res!239446 () Bool)

(assert (=> start!39178 (=> (not res!239446) (not e!246698))))

(assert (=> start!39178 (= res!239446 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12308 _keys!709))))))

(assert (=> start!39178 e!246698))

(declare-fun tp_is_empty!10589 () Bool)

(assert (=> start!39178 tp_is_empty!10589))

(assert (=> start!39178 tp!33839))

(assert (=> start!39178 true))

(declare-fun e!246700 () Bool)

(declare-fun array_inv!8718 (array!25021) Bool)

(assert (=> start!39178 (and (array_inv!8718 _values!549) e!246700)))

(declare-fun array_inv!8719 (array!25019) Bool)

(assert (=> start!39178 (array_inv!8719 _keys!709)))

(declare-fun b!412247 () Bool)

(declare-fun res!239447 () Bool)

(assert (=> b!412247 (=> (not res!239447) (not e!246698))))

(assert (=> b!412247 (= res!239447 (or (= (select (arr!11956 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11956 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412248 () Bool)

(declare-fun res!239452 () Bool)

(assert (=> b!412248 (=> (not res!239452) (not e!246703))))

(assert (=> b!412248 (= res!239452 (bvsle from!863 i!563))))

(declare-fun b!412249 () Bool)

(declare-fun res!239444 () Bool)

(assert (=> b!412249 (=> (not res!239444) (not e!246698))))

(assert (=> b!412249 (= res!239444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412250 () Bool)

(declare-fun res!239445 () Bool)

(assert (=> b!412250 (=> (not res!239445) (not e!246698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412250 (= res!239445 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17505 () Bool)

(assert (=> mapIsEmpty!17505 mapRes!17505))

(declare-fun b!412251 () Bool)

(declare-fun e!246699 () Bool)

(assert (=> b!412251 (= e!246699 tp_is_empty!10589)))

(declare-fun b!412252 () Bool)

(declare-fun res!239448 () Bool)

(assert (=> b!412252 (=> (not res!239448) (not e!246698))))

(declare-fun arrayContainsKey!0 (array!25019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412252 (= res!239448 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412253 () Bool)

(assert (=> b!412253 (= e!246702 tp_is_empty!10589)))

(declare-fun b!412254 () Bool)

(declare-fun res!239450 () Bool)

(assert (=> b!412254 (=> (not res!239450) (not e!246703))))

(assert (=> b!412254 (= res!239450 (arrayNoDuplicates!0 lt!189444 #b00000000000000000000000000000000 Nil!6911))))

(declare-fun b!412255 () Bool)

(declare-fun res!239449 () Bool)

(assert (=> b!412255 (=> (not res!239449) (not e!246698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412255 (= res!239449 (validKeyInArray!0 k!794))))

(declare-fun b!412256 () Bool)

(assert (=> b!412256 (= e!246700 (and e!246699 mapRes!17505))))

(declare-fun condMapEmpty!17505 () Bool)

(declare-fun mapDefault!17505 () ValueCell!4951)

