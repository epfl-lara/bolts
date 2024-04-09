; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20044 () Bool)

(assert start!20044)

(declare-fun b!196135 () Bool)

(declare-fun e!129142 () Bool)

(assert (=> b!196135 (= e!129142 false)))

(declare-fun lt!97597 () Bool)

(declare-datatypes ((array!8356 0))(
  ( (array!8357 (arr!3928 (Array (_ BitVec 32) (_ BitVec 64))) (size!4253 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8356)

(declare-datatypes ((List!2482 0))(
  ( (Nil!2479) (Cons!2478 (h!3120 (_ BitVec 64)) (t!7421 List!2482)) )
))
(declare-fun arrayNoDuplicates!0 (array!8356 (_ BitVec 32) List!2482) Bool)

(assert (=> b!196135 (= lt!97597 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2479))))

(declare-fun b!196136 () Bool)

(declare-fun e!129143 () Bool)

(declare-fun tp_is_empty!4547 () Bool)

(assert (=> b!196136 (= e!129143 tp_is_empty!4547)))

(declare-fun mapNonEmpty!7889 () Bool)

(declare-fun mapRes!7889 () Bool)

(declare-fun tp!17177 () Bool)

(declare-fun e!129145 () Bool)

(assert (=> mapNonEmpty!7889 (= mapRes!7889 (and tp!17177 e!129145))))

(declare-datatypes ((V!5709 0))(
  ( (V!5710 (val!2318 Int)) )
))
(declare-datatypes ((ValueCell!1930 0))(
  ( (ValueCellFull!1930 (v!4284 V!5709)) (EmptyCell!1930) )
))
(declare-fun mapRest!7889 () (Array (_ BitVec 32) ValueCell!1930))

(declare-fun mapKey!7889 () (_ BitVec 32))

(declare-datatypes ((array!8358 0))(
  ( (array!8359 (arr!3929 (Array (_ BitVec 32) ValueCell!1930)) (size!4254 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8358)

(declare-fun mapValue!7889 () ValueCell!1930)

(assert (=> mapNonEmpty!7889 (= (arr!3929 _values!649) (store mapRest!7889 mapKey!7889 mapValue!7889))))

(declare-fun b!196137 () Bool)

(declare-fun e!129141 () Bool)

(assert (=> b!196137 (= e!129141 (and e!129143 mapRes!7889))))

(declare-fun condMapEmpty!7889 () Bool)

(declare-fun mapDefault!7889 () ValueCell!1930)

