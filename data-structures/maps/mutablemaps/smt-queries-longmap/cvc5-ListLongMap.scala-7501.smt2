; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95102 () Bool)

(assert start!95102)

(declare-fun b_free!22183 () Bool)

(declare-fun b_next!22183 () Bool)

(assert (=> start!95102 (= b_free!22183 (not b_next!22183))))

(declare-fun tp!78030 () Bool)

(declare-fun b_and!35109 () Bool)

(assert (=> start!95102 (= tp!78030 b_and!35109)))

(declare-fun b!1074654 () Bool)

(declare-fun e!614133 () Bool)

(declare-fun tp_is_empty!25993 () Bool)

(assert (=> b!1074654 (= e!614133 tp_is_empty!25993)))

(declare-fun b!1074655 () Bool)

(declare-fun e!614135 () Bool)

(declare-fun e!614139 () Bool)

(declare-fun mapRes!40717 () Bool)

(assert (=> b!1074655 (= e!614135 (and e!614139 mapRes!40717))))

(declare-fun condMapEmpty!40717 () Bool)

(declare-datatypes ((V!39793 0))(
  ( (V!39794 (val!13047 Int)) )
))
(declare-datatypes ((ValueCell!12293 0))(
  ( (ValueCellFull!12293 (v!15670 V!39793)) (EmptyCell!12293) )
))
(declare-datatypes ((array!68918 0))(
  ( (array!68919 (arr!33144 (Array (_ BitVec 32) ValueCell!12293)) (size!33681 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68918)

(declare-fun mapDefault!40717 () ValueCell!12293)

