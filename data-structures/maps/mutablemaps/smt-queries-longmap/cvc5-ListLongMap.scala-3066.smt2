; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43256 () Bool)

(assert start!43256)

(declare-fun b_free!12115 () Bool)

(declare-fun b_next!12115 () Bool)

(assert (=> start!43256 (= b_free!12115 (not b_next!12115))))

(declare-fun tp!42615 () Bool)

(declare-fun b_and!20885 () Bool)

(assert (=> start!43256 (= tp!42615 b_and!20885)))

(declare-fun b!478979 () Bool)

(declare-fun res!285794 () Bool)

(declare-fun e!281773 () Bool)

(assert (=> b!478979 (=> (not res!285794) (not e!281773))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30895 0))(
  ( (array!30896 (arr!14851 (Array (_ BitVec 32) (_ BitVec 64))) (size!15209 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30895)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19241 0))(
  ( (V!19242 (val!6861 Int)) )
))
(declare-datatypes ((ValueCell!6452 0))(
  ( (ValueCellFull!6452 (v!9146 V!19241)) (EmptyCell!6452) )
))
(declare-datatypes ((array!30897 0))(
  ( (array!30898 (arr!14852 (Array (_ BitVec 32) ValueCell!6452)) (size!15210 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30897)

(assert (=> b!478979 (= res!285794 (and (= (size!15210 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15209 _keys!1874) (size!15210 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478980 () Bool)

(declare-fun e!281769 () Bool)

(declare-fun tp_is_empty!13627 () Bool)

(assert (=> b!478980 (= e!281769 tp_is_empty!13627)))

(declare-fun b!478981 () Bool)

(declare-fun e!281770 () Bool)

(assert (=> b!478981 (= e!281770 tp_is_empty!13627)))

(declare-fun mapNonEmpty!22138 () Bool)

(declare-fun mapRes!22138 () Bool)

(declare-fun tp!42616 () Bool)

(assert (=> mapNonEmpty!22138 (= mapRes!22138 (and tp!42616 e!281770))))

(declare-fun mapRest!22138 () (Array (_ BitVec 32) ValueCell!6452))

(declare-fun mapKey!22138 () (_ BitVec 32))

(declare-fun mapValue!22138 () ValueCell!6452)

(assert (=> mapNonEmpty!22138 (= (arr!14852 _values!1516) (store mapRest!22138 mapKey!22138 mapValue!22138))))

(declare-fun b!478982 () Bool)

(declare-fun res!285795 () Bool)

(assert (=> b!478982 (=> (not res!285795) (not e!281773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30895 (_ BitVec 32)) Bool)

(assert (=> b!478982 (= res!285795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478984 () Bool)

(declare-fun res!285793 () Bool)

(assert (=> b!478984 (=> (not res!285793) (not e!281773))))

(declare-datatypes ((List!9113 0))(
  ( (Nil!9110) (Cons!9109 (h!9965 (_ BitVec 64)) (t!15327 List!9113)) )
))
(declare-fun arrayNoDuplicates!0 (array!30895 (_ BitVec 32) List!9113) Bool)

(assert (=> b!478984 (= res!285793 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9110))))

(declare-fun b!478985 () Bool)

(assert (=> b!478985 (= e!281773 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun lt!217787 () Bool)

(declare-fun minValue!1458 () V!19241)

(declare-fun zeroValue!1458 () V!19241)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9002 0))(
  ( (tuple2!9003 (_1!4511 (_ BitVec 64)) (_2!4511 V!19241)) )
))
(declare-datatypes ((List!9114 0))(
  ( (Nil!9111) (Cons!9110 (h!9966 tuple2!9002) (t!15328 List!9114)) )
))
(declare-datatypes ((ListLongMap!7929 0))(
  ( (ListLongMap!7930 (toList!3980 List!9114)) )
))
(declare-fun contains!2587 (ListLongMap!7929 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2272 (array!30895 array!30897 (_ BitVec 32) (_ BitVec 32) V!19241 V!19241 (_ BitVec 32) Int) ListLongMap!7929)

(assert (=> b!478985 (= lt!217787 (contains!2587 (getCurrentListMap!2272 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun mapIsEmpty!22138 () Bool)

(assert (=> mapIsEmpty!22138 mapRes!22138))

(declare-fun res!285792 () Bool)

(assert (=> start!43256 (=> (not res!285792) (not e!281773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43256 (= res!285792 (validMask!0 mask!2352))))

(assert (=> start!43256 e!281773))

(assert (=> start!43256 true))

(assert (=> start!43256 tp_is_empty!13627))

(declare-fun e!281771 () Bool)

(declare-fun array_inv!10702 (array!30897) Bool)

(assert (=> start!43256 (and (array_inv!10702 _values!1516) e!281771)))

(assert (=> start!43256 tp!42615))

(declare-fun array_inv!10703 (array!30895) Bool)

(assert (=> start!43256 (array_inv!10703 _keys!1874)))

(declare-fun b!478983 () Bool)

(assert (=> b!478983 (= e!281771 (and e!281769 mapRes!22138))))

(declare-fun condMapEmpty!22138 () Bool)

(declare-fun mapDefault!22138 () ValueCell!6452)

