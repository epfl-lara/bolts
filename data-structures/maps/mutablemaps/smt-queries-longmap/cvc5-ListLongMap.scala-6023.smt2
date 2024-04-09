; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78050 () Bool)

(assert start!78050)

(declare-fun b_free!16549 () Bool)

(declare-fun b_next!16549 () Bool)

(assert (=> start!78050 (= b_free!16549 (not b_next!16549))))

(declare-fun tp!57919 () Bool)

(declare-fun b_and!27139 () Bool)

(assert (=> start!78050 (= tp!57919 b_and!27139)))

(declare-fun mapNonEmpty!30172 () Bool)

(declare-fun mapRes!30172 () Bool)

(declare-fun tp!57918 () Bool)

(declare-fun e!510650 () Bool)

(assert (=> mapNonEmpty!30172 (= mapRes!30172 (and tp!57918 e!510650))))

(declare-datatypes ((V!30255 0))(
  ( (V!30256 (val!9534 Int)) )
))
(declare-datatypes ((ValueCell!9002 0))(
  ( (ValueCellFull!9002 (v!12043 V!30255)) (EmptyCell!9002) )
))
(declare-datatypes ((array!53944 0))(
  ( (array!53945 (arr!25924 (Array (_ BitVec 32) ValueCell!9002)) (size!26384 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53944)

(declare-fun mapValue!30172 () ValueCell!9002)

(declare-fun mapRest!30172 () (Array (_ BitVec 32) ValueCell!9002))

(declare-fun mapKey!30172 () (_ BitVec 32))

(assert (=> mapNonEmpty!30172 (= (arr!25924 _values!1152) (store mapRest!30172 mapKey!30172 mapValue!30172))))

(declare-fun b!910629 () Bool)

(declare-fun tp_is_empty!18967 () Bool)

(assert (=> b!910629 (= e!510650 tp_is_empty!18967)))

(declare-fun mapIsEmpty!30172 () Bool)

(assert (=> mapIsEmpty!30172 mapRes!30172))

(declare-fun b!910630 () Bool)

(declare-fun e!510652 () Bool)

(assert (=> b!910630 (= e!510652 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30255)

(declare-datatypes ((array!53946 0))(
  ( (array!53947 (arr!25925 (Array (_ BitVec 32) (_ BitVec 64))) (size!26385 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53946)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410251 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30255)

(declare-datatypes ((tuple2!12464 0))(
  ( (tuple2!12465 (_1!6242 (_ BitVec 64)) (_2!6242 V!30255)) )
))
(declare-datatypes ((List!18314 0))(
  ( (Nil!18311) (Cons!18310 (h!19456 tuple2!12464) (t!25907 List!18314)) )
))
(declare-datatypes ((ListLongMap!11175 0))(
  ( (ListLongMap!11176 (toList!5603 List!18314)) )
))
(declare-fun contains!4612 (ListLongMap!11175 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2833 (array!53946 array!53944 (_ BitVec 32) (_ BitVec 32) V!30255 V!30255 (_ BitVec 32) Int) ListLongMap!11175)

(assert (=> b!910630 (= lt!410251 (contains!4612 (getCurrentListMap!2833 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910631 () Bool)

(declare-fun e!510649 () Bool)

(assert (=> b!910631 (= e!510649 tp_is_empty!18967)))

(declare-fun b!910633 () Bool)

(declare-fun res!614569 () Bool)

(assert (=> b!910633 (=> (not res!614569) (not e!510652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53946 (_ BitVec 32)) Bool)

(assert (=> b!910633 (= res!614569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910634 () Bool)

(declare-fun res!614570 () Bool)

(assert (=> b!910634 (=> (not res!614570) (not e!510652))))

(declare-datatypes ((List!18315 0))(
  ( (Nil!18312) (Cons!18311 (h!19457 (_ BitVec 64)) (t!25908 List!18315)) )
))
(declare-fun arrayNoDuplicates!0 (array!53946 (_ BitVec 32) List!18315) Bool)

(assert (=> b!910634 (= res!614570 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18312))))

(declare-fun b!910635 () Bool)

(declare-fun e!510653 () Bool)

(assert (=> b!910635 (= e!510653 (and e!510649 mapRes!30172))))

(declare-fun condMapEmpty!30172 () Bool)

(declare-fun mapDefault!30172 () ValueCell!9002)

