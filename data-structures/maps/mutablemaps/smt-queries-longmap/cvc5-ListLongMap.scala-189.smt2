; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3752 () Bool)

(assert start!3752)

(declare-fun mapNonEmpty!1129 () Bool)

(declare-fun mapRes!1129 () Bool)

(declare-fun tp!3649 () Bool)

(declare-fun e!17022 () Bool)

(assert (=> mapNonEmpty!1129 (= mapRes!1129 (and tp!3649 e!17022))))

(declare-datatypes ((V!1259 0))(
  ( (V!1260 (val!564 Int)) )
))
(declare-datatypes ((ValueCell!338 0))(
  ( (ValueCellFull!338 (v!1650 V!1259)) (EmptyCell!338) )
))
(declare-datatypes ((array!1385 0))(
  ( (array!1386 (arr!650 (Array (_ BitVec 32) ValueCell!338)) (size!751 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1385)

(declare-fun mapKey!1129 () (_ BitVec 32))

(declare-fun mapValue!1129 () ValueCell!338)

(declare-fun mapRest!1129 () (Array (_ BitVec 32) ValueCell!338))

(assert (=> mapNonEmpty!1129 (= (arr!650 _values!1501) (store mapRest!1129 mapKey!1129 mapValue!1129))))

(declare-fun b!26209 () Bool)

(declare-fun e!17023 () Bool)

(declare-fun tp_is_empty!1075 () Bool)

(assert (=> b!26209 (= e!17023 tp_is_empty!1075)))

(declare-fun mapIsEmpty!1129 () Bool)

(assert (=> mapIsEmpty!1129 mapRes!1129))

(declare-fun b!26210 () Bool)

(declare-fun e!17024 () Bool)

(assert (=> b!26210 (= e!17024 (and e!17023 mapRes!1129))))

(declare-fun condMapEmpty!1129 () Bool)

(declare-fun mapDefault!1129 () ValueCell!338)

