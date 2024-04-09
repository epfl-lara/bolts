; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20134 () Bool)

(assert start!20134)

(declare-fun b_free!4781 () Bool)

(declare-fun b_next!4781 () Bool)

(assert (=> start!20134 (= b_free!4781 (not b_next!4781))))

(declare-fun tp!17374 () Bool)

(declare-fun b_and!11545 () Bool)

(assert (=> start!20134 (= tp!17374 b_and!11545)))

(declare-fun b!197220 () Bool)

(declare-fun res!93265 () Bool)

(declare-fun e!129816 () Bool)

(assert (=> b!197220 (=> (not res!93265) (not e!129816))))

(declare-datatypes ((array!8526 0))(
  ( (array!8527 (arr!4013 (Array (_ BitVec 32) (_ BitVec 64))) (size!4338 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8526)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5829 0))(
  ( (V!5830 (val!2363 Int)) )
))
(declare-datatypes ((ValueCell!1975 0))(
  ( (ValueCellFull!1975 (v!4329 V!5829)) (EmptyCell!1975) )
))
(declare-datatypes ((array!8528 0))(
  ( (array!8529 (arr!4014 (Array (_ BitVec 32) ValueCell!1975)) (size!4339 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8528)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!197220 (= res!93265 (and (= (size!4339 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4338 _keys!825) (size!4339 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197221 () Bool)

(assert (=> b!197221 (= e!129816 false)))

(declare-datatypes ((tuple2!3590 0))(
  ( (tuple2!3591 (_1!1805 (_ BitVec 64)) (_2!1805 V!5829)) )
))
(declare-datatypes ((List!2526 0))(
  ( (Nil!2523) (Cons!2522 (h!3164 tuple2!3590) (t!7465 List!2526)) )
))
(declare-datatypes ((ListLongMap!2517 0))(
  ( (ListLongMap!2518 (toList!1274 List!2526)) )
))
(declare-fun lt!97723 () ListLongMap!2517)

(declare-fun zeroValue!615 () V!5829)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5829)

(declare-fun getCurrentListMapNoExtraKeys!231 (array!8526 array!8528 (_ BitVec 32) (_ BitVec 32) V!5829 V!5829 (_ BitVec 32) Int) ListLongMap!2517)

(assert (=> b!197221 (= lt!97723 (getCurrentListMapNoExtraKeys!231 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197222 () Bool)

(declare-fun e!129817 () Bool)

(declare-fun e!129820 () Bool)

(declare-fun mapRes!8024 () Bool)

(assert (=> b!197222 (= e!129817 (and e!129820 mapRes!8024))))

(declare-fun condMapEmpty!8024 () Bool)

(declare-fun mapDefault!8024 () ValueCell!1975)

