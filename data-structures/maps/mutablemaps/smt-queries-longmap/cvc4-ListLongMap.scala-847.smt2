; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20194 () Bool)

(assert start!20194)

(declare-fun b_free!4841 () Bool)

(declare-fun b_next!4841 () Bool)

(assert (=> start!20194 (= b_free!4841 (not b_next!4841))))

(declare-fun tp!17554 () Bool)

(declare-fun b_and!11605 () Bool)

(assert (=> start!20194 (= tp!17554 b_and!11605)))

(declare-fun mapIsEmpty!8114 () Bool)

(declare-fun mapRes!8114 () Bool)

(assert (=> mapIsEmpty!8114 mapRes!8114))

(declare-fun b!198120 () Bool)

(declare-fun e!130267 () Bool)

(assert (=> b!198120 (= e!130267 false)))

(declare-datatypes ((V!5909 0))(
  ( (V!5910 (val!2393 Int)) )
))
(declare-datatypes ((tuple2!3624 0))(
  ( (tuple2!3625 (_1!1822 (_ BitVec 64)) (_2!1822 V!5909)) )
))
(declare-datatypes ((List!2564 0))(
  ( (Nil!2561) (Cons!2560 (h!3202 tuple2!3624) (t!7503 List!2564)) )
))
(declare-datatypes ((ListLongMap!2551 0))(
  ( (ListLongMap!2552 (toList!1291 List!2564)) )
))
(declare-fun lt!97885 () ListLongMap!2551)

(declare-datatypes ((ValueCell!2005 0))(
  ( (ValueCellFull!2005 (v!4359 V!5909)) (EmptyCell!2005) )
))
(declare-datatypes ((array!8642 0))(
  ( (array!8643 (arr!4071 (Array (_ BitVec 32) ValueCell!2005)) (size!4396 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8642)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun v!520 () V!5909)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5909)

(declare-datatypes ((array!8644 0))(
  ( (array!8645 (arr!4072 (Array (_ BitVec 32) (_ BitVec 64))) (size!4397 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8644)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5909)

(declare-fun getCurrentListMapNoExtraKeys!248 (array!8644 array!8642 (_ BitVec 32) (_ BitVec 32) V!5909 V!5909 (_ BitVec 32) Int) ListLongMap!2551)

(assert (=> b!198120 (= lt!97885 (getCurrentListMapNoExtraKeys!248 _keys!825 (array!8643 (store (arr!4071 _values!649) i!601 (ValueCellFull!2005 v!520)) (size!4396 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97884 () ListLongMap!2551)

(assert (=> b!198120 (= lt!97884 (getCurrentListMapNoExtraKeys!248 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198121 () Bool)

(declare-fun res!93894 () Bool)

(assert (=> b!198121 (=> (not res!93894) (not e!130267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8644 (_ BitVec 32)) Bool)

(assert (=> b!198121 (= res!93894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198122 () Bool)

(declare-fun res!93889 () Bool)

(assert (=> b!198122 (=> (not res!93889) (not e!130267))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198122 (= res!93889 (validKeyInArray!0 k!843))))

(declare-fun b!198123 () Bool)

(declare-fun e!130270 () Bool)

(declare-fun e!130269 () Bool)

(assert (=> b!198123 (= e!130270 (and e!130269 mapRes!8114))))

(declare-fun condMapEmpty!8114 () Bool)

(declare-fun mapDefault!8114 () ValueCell!2005)

