; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71262 () Bool)

(assert start!71262)

(declare-fun b_free!13385 () Bool)

(declare-fun b_next!13385 () Bool)

(assert (=> start!71262 (= b_free!13385 (not b_next!13385))))

(declare-fun tp!46917 () Bool)

(declare-fun b_and!22341 () Bool)

(assert (=> start!71262 (= tp!46917 b_and!22341)))

(declare-fun b!827332 () Bool)

(declare-fun res!564016 () Bool)

(declare-fun e!460920 () Bool)

(assert (=> b!827332 (=> (not res!564016) (not e!460920))))

(declare-datatypes ((array!46324 0))(
  ( (array!46325 (arr!22202 (Array (_ BitVec 32) (_ BitVec 64))) (size!22623 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46324)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46324 (_ BitVec 32)) Bool)

(assert (=> b!827332 (= res!564016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827333 () Bool)

(assert (=> b!827333 (= e!460920 false)))

(declare-datatypes ((V!25127 0))(
  ( (V!25128 (val!7595 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25127)

(declare-fun minValue!754 () V!25127)

(declare-datatypes ((ValueCell!7132 0))(
  ( (ValueCellFull!7132 (v!10026 V!25127)) (EmptyCell!7132) )
))
(declare-datatypes ((array!46326 0))(
  ( (array!46327 (arr!22203 (Array (_ BitVec 32) ValueCell!7132)) (size!22624 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46326)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10076 0))(
  ( (tuple2!10077 (_1!5048 (_ BitVec 64)) (_2!5048 V!25127)) )
))
(declare-datatypes ((List!15914 0))(
  ( (Nil!15911) (Cons!15910 (h!17039 tuple2!10076) (t!22271 List!15914)) )
))
(declare-datatypes ((ListLongMap!8913 0))(
  ( (ListLongMap!8914 (toList!4472 List!15914)) )
))
(declare-fun lt!374865 () ListLongMap!8913)

(declare-fun getCurrentListMapNoExtraKeys!2479 (array!46324 array!46326 (_ BitVec 32) (_ BitVec 32) V!25127 V!25127 (_ BitVec 32) Int) ListLongMap!8913)

(assert (=> b!827333 (= lt!374865 (getCurrentListMapNoExtraKeys!2479 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25127)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374866 () ListLongMap!8913)

(assert (=> b!827333 (= lt!374866 (getCurrentListMapNoExtraKeys!2479 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24271 () Bool)

(declare-fun mapRes!24271 () Bool)

(assert (=> mapIsEmpty!24271 mapRes!24271))

(declare-fun res!564019 () Bool)

(assert (=> start!71262 (=> (not res!564019) (not e!460920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71262 (= res!564019 (validMask!0 mask!1312))))

(assert (=> start!71262 e!460920))

(declare-fun tp_is_empty!15095 () Bool)

(assert (=> start!71262 tp_is_empty!15095))

(declare-fun array_inv!17675 (array!46324) Bool)

(assert (=> start!71262 (array_inv!17675 _keys!976)))

(assert (=> start!71262 true))

(declare-fun e!460921 () Bool)

(declare-fun array_inv!17676 (array!46326) Bool)

(assert (=> start!71262 (and (array_inv!17676 _values!788) e!460921)))

(assert (=> start!71262 tp!46917))

(declare-fun b!827334 () Bool)

(declare-fun res!564018 () Bool)

(assert (=> b!827334 (=> (not res!564018) (not e!460920))))

(declare-datatypes ((List!15915 0))(
  ( (Nil!15912) (Cons!15911 (h!17040 (_ BitVec 64)) (t!22272 List!15915)) )
))
(declare-fun arrayNoDuplicates!0 (array!46324 (_ BitVec 32) List!15915) Bool)

(assert (=> b!827334 (= res!564018 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15912))))

(declare-fun b!827335 () Bool)

(declare-fun e!460917 () Bool)

(assert (=> b!827335 (= e!460917 tp_is_empty!15095)))

(declare-fun b!827336 () Bool)

(declare-fun e!460918 () Bool)

(assert (=> b!827336 (= e!460921 (and e!460918 mapRes!24271))))

(declare-fun condMapEmpty!24271 () Bool)

(declare-fun mapDefault!24271 () ValueCell!7132)

