; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43262 () Bool)

(assert start!43262)

(declare-fun b_free!12121 () Bool)

(declare-fun b_next!12121 () Bool)

(assert (=> start!43262 (= b_free!12121 (not b_next!12121))))

(declare-fun tp!42633 () Bool)

(declare-fun b_and!20891 () Bool)

(assert (=> start!43262 (= tp!42633 b_and!20891)))

(declare-fun b!479042 () Bool)

(declare-fun e!281817 () Bool)

(assert (=> b!479042 (= e!281817 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun lt!217796 () Bool)

(declare-datatypes ((V!19249 0))(
  ( (V!19250 (val!6864 Int)) )
))
(declare-fun minValue!1458 () V!19249)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19249)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!30907 0))(
  ( (array!30908 (arr!14857 (Array (_ BitVec 32) (_ BitVec 64))) (size!15215 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30907)

(declare-datatypes ((ValueCell!6455 0))(
  ( (ValueCellFull!6455 (v!9149 V!19249)) (EmptyCell!6455) )
))
(declare-datatypes ((array!30909 0))(
  ( (array!30910 (arr!14858 (Array (_ BitVec 32) ValueCell!6455)) (size!15216 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30909)

(declare-datatypes ((tuple2!9006 0))(
  ( (tuple2!9007 (_1!4513 (_ BitVec 64)) (_2!4513 V!19249)) )
))
(declare-datatypes ((List!9117 0))(
  ( (Nil!9114) (Cons!9113 (h!9969 tuple2!9006) (t!15331 List!9117)) )
))
(declare-datatypes ((ListLongMap!7933 0))(
  ( (ListLongMap!7934 (toList!3982 List!9117)) )
))
(declare-fun contains!2589 (ListLongMap!7933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2274 (array!30907 array!30909 (_ BitVec 32) (_ BitVec 32) V!19249 V!19249 (_ BitVec 32) Int) ListLongMap!7933)

(assert (=> b!479042 (= lt!217796 (contains!2589 (getCurrentListMap!2274 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!479043 () Bool)

(declare-fun res!285829 () Bool)

(assert (=> b!479043 (=> (not res!285829) (not e!281817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30907 (_ BitVec 32)) Bool)

(assert (=> b!479043 (= res!285829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479044 () Bool)

(declare-fun res!285828 () Bool)

(assert (=> b!479044 (=> (not res!285828) (not e!281817))))

(assert (=> b!479044 (= res!285828 (and (= (size!15216 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15215 _keys!1874) (size!15216 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!285830 () Bool)

(assert (=> start!43262 (=> (not res!285830) (not e!281817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43262 (= res!285830 (validMask!0 mask!2352))))

(assert (=> start!43262 e!281817))

(assert (=> start!43262 true))

(declare-fun tp_is_empty!13633 () Bool)

(assert (=> start!43262 tp_is_empty!13633))

(declare-fun e!281816 () Bool)

(declare-fun array_inv!10706 (array!30909) Bool)

(assert (=> start!43262 (and (array_inv!10706 _values!1516) e!281816)))

(assert (=> start!43262 tp!42633))

(declare-fun array_inv!10707 (array!30907) Bool)

(assert (=> start!43262 (array_inv!10707 _keys!1874)))

(declare-fun mapIsEmpty!22147 () Bool)

(declare-fun mapRes!22147 () Bool)

(assert (=> mapIsEmpty!22147 mapRes!22147))

(declare-fun mapNonEmpty!22147 () Bool)

(declare-fun tp!42634 () Bool)

(declare-fun e!281815 () Bool)

(assert (=> mapNonEmpty!22147 (= mapRes!22147 (and tp!42634 e!281815))))

(declare-fun mapValue!22147 () ValueCell!6455)

(declare-fun mapRest!22147 () (Array (_ BitVec 32) ValueCell!6455))

(declare-fun mapKey!22147 () (_ BitVec 32))

(assert (=> mapNonEmpty!22147 (= (arr!14858 _values!1516) (store mapRest!22147 mapKey!22147 mapValue!22147))))

(declare-fun b!479045 () Bool)

(declare-fun e!281814 () Bool)

(assert (=> b!479045 (= e!281814 tp_is_empty!13633)))

(declare-fun b!479046 () Bool)

(declare-fun res!285831 () Bool)

(assert (=> b!479046 (=> (not res!285831) (not e!281817))))

(declare-datatypes ((List!9118 0))(
  ( (Nil!9115) (Cons!9114 (h!9970 (_ BitVec 64)) (t!15332 List!9118)) )
))
(declare-fun arrayNoDuplicates!0 (array!30907 (_ BitVec 32) List!9118) Bool)

(assert (=> b!479046 (= res!285831 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9115))))

(declare-fun b!479047 () Bool)

(assert (=> b!479047 (= e!281816 (and e!281814 mapRes!22147))))

(declare-fun condMapEmpty!22147 () Bool)

(declare-fun mapDefault!22147 () ValueCell!6455)

