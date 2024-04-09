; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20172 () Bool)

(assert start!20172)

(declare-fun b_free!4819 () Bool)

(declare-fun b_next!4819 () Bool)

(assert (=> start!20172 (= b_free!4819 (not b_next!4819))))

(declare-fun tp!17488 () Bool)

(declare-fun b_and!11583 () Bool)

(assert (=> start!20172 (= tp!17488 b_and!11583)))

(declare-fun b!197790 () Bool)

(declare-fun res!93659 () Bool)

(declare-fun e!130105 () Bool)

(assert (=> b!197790 (=> (not res!93659) (not e!130105))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8602 0))(
  ( (array!8603 (arr!4051 (Array (_ BitVec 32) (_ BitVec 64))) (size!4376 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8602)

(assert (=> b!197790 (= res!93659 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4376 _keys!825))))))

(declare-fun mapIsEmpty!8081 () Bool)

(declare-fun mapRes!8081 () Bool)

(assert (=> mapIsEmpty!8081 mapRes!8081))

(declare-fun b!197791 () Bool)

(declare-fun res!93662 () Bool)

(assert (=> b!197791 (=> (not res!93662) (not e!130105))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8602 (_ BitVec 32)) Bool)

(assert (=> b!197791 (= res!93662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197792 () Bool)

(declare-fun e!130103 () Bool)

(declare-fun tp_is_empty!4675 () Bool)

(assert (=> b!197792 (= e!130103 tp_is_empty!4675)))

(declare-fun b!197793 () Bool)

(declare-fun res!93664 () Bool)

(assert (=> b!197793 (=> (not res!93664) (not e!130105))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197793 (= res!93664 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8081 () Bool)

(declare-fun tp!17489 () Bool)

(assert (=> mapNonEmpty!8081 (= mapRes!8081 (and tp!17489 e!130103))))

(declare-fun mapKey!8081 () (_ BitVec 32))

(declare-datatypes ((V!5881 0))(
  ( (V!5882 (val!2382 Int)) )
))
(declare-datatypes ((ValueCell!1994 0))(
  ( (ValueCellFull!1994 (v!4348 V!5881)) (EmptyCell!1994) )
))
(declare-datatypes ((array!8604 0))(
  ( (array!8605 (arr!4052 (Array (_ BitVec 32) ValueCell!1994)) (size!4377 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8604)

(declare-fun mapValue!8081 () ValueCell!1994)

(declare-fun mapRest!8081 () (Array (_ BitVec 32) ValueCell!1994))

(assert (=> mapNonEmpty!8081 (= (arr!4052 _values!649) (store mapRest!8081 mapKey!8081 mapValue!8081))))

(declare-fun b!197794 () Bool)

(declare-fun res!93661 () Bool)

(assert (=> b!197794 (=> (not res!93661) (not e!130105))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!197794 (= res!93661 (and (= (size!4377 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4376 _keys!825) (size!4377 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197795 () Bool)

(assert (=> b!197795 (= e!130105 false)))

(declare-datatypes ((tuple2!3612 0))(
  ( (tuple2!3613 (_1!1816 (_ BitVec 64)) (_2!1816 V!5881)) )
))
(declare-datatypes ((List!2550 0))(
  ( (Nil!2547) (Cons!2546 (h!3188 tuple2!3612) (t!7489 List!2550)) )
))
(declare-datatypes ((ListLongMap!2539 0))(
  ( (ListLongMap!2540 (toList!1285 List!2550)) )
))
(declare-fun lt!97819 () ListLongMap!2539)

(declare-fun v!520 () V!5881)

(declare-fun zeroValue!615 () V!5881)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5881)

(declare-fun getCurrentListMapNoExtraKeys!242 (array!8602 array!8604 (_ BitVec 32) (_ BitVec 32) V!5881 V!5881 (_ BitVec 32) Int) ListLongMap!2539)

(assert (=> b!197795 (= lt!97819 (getCurrentListMapNoExtraKeys!242 _keys!825 (array!8605 (store (arr!4052 _values!649) i!601 (ValueCellFull!1994 v!520)) (size!4377 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97818 () ListLongMap!2539)

(assert (=> b!197795 (= lt!97818 (getCurrentListMapNoExtraKeys!242 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!93663 () Bool)

(assert (=> start!20172 (=> (not res!93663) (not e!130105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20172 (= res!93663 (validMask!0 mask!1149))))

(assert (=> start!20172 e!130105))

(declare-fun e!130101 () Bool)

(declare-fun array_inv!2637 (array!8604) Bool)

(assert (=> start!20172 (and (array_inv!2637 _values!649) e!130101)))

(assert (=> start!20172 true))

(assert (=> start!20172 tp_is_empty!4675))

(declare-fun array_inv!2638 (array!8602) Bool)

(assert (=> start!20172 (array_inv!2638 _keys!825)))

(assert (=> start!20172 tp!17488))

(declare-fun b!197796 () Bool)

(declare-fun e!130102 () Bool)

(assert (=> b!197796 (= e!130101 (and e!130102 mapRes!8081))))

(declare-fun condMapEmpty!8081 () Bool)

(declare-fun mapDefault!8081 () ValueCell!1994)

