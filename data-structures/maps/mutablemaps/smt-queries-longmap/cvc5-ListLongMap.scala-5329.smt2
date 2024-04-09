; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71258 () Bool)

(assert start!71258)

(declare-fun b_free!13381 () Bool)

(declare-fun b_next!13381 () Bool)

(assert (=> start!71258 (= b_free!13381 (not b_next!13381))))

(declare-fun tp!46905 () Bool)

(declare-fun b_and!22337 () Bool)

(assert (=> start!71258 (= tp!46905 b_and!22337)))

(declare-fun b!827290 () Bool)

(declare-fun res!563993 () Bool)

(declare-fun e!460887 () Bool)

(assert (=> b!827290 (=> (not res!563993) (not e!460887))))

(declare-datatypes ((array!46316 0))(
  ( (array!46317 (arr!22198 (Array (_ BitVec 32) (_ BitVec 64))) (size!22619 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46316)

(declare-datatypes ((List!15911 0))(
  ( (Nil!15908) (Cons!15907 (h!17036 (_ BitVec 64)) (t!22268 List!15911)) )
))
(declare-fun arrayNoDuplicates!0 (array!46316 (_ BitVec 32) List!15911) Bool)

(assert (=> b!827290 (= res!563993 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15908))))

(declare-fun mapNonEmpty!24265 () Bool)

(declare-fun mapRes!24265 () Bool)

(declare-fun tp!46906 () Bool)

(declare-fun e!460890 () Bool)

(assert (=> mapNonEmpty!24265 (= mapRes!24265 (and tp!46906 e!460890))))

(declare-datatypes ((V!25123 0))(
  ( (V!25124 (val!7593 Int)) )
))
(declare-datatypes ((ValueCell!7130 0))(
  ( (ValueCellFull!7130 (v!10024 V!25123)) (EmptyCell!7130) )
))
(declare-fun mapRest!24265 () (Array (_ BitVec 32) ValueCell!7130))

(declare-fun mapValue!24265 () ValueCell!7130)

(declare-datatypes ((array!46318 0))(
  ( (array!46319 (arr!22199 (Array (_ BitVec 32) ValueCell!7130)) (size!22620 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46318)

(declare-fun mapKey!24265 () (_ BitVec 32))

(assert (=> mapNonEmpty!24265 (= (arr!22199 _values!788) (store mapRest!24265 mapKey!24265 mapValue!24265))))

(declare-fun b!827291 () Bool)

(declare-fun e!460888 () Bool)

(declare-fun e!460889 () Bool)

(assert (=> b!827291 (= e!460888 (and e!460889 mapRes!24265))))

(declare-fun condMapEmpty!24265 () Bool)

(declare-fun mapDefault!24265 () ValueCell!7130)

