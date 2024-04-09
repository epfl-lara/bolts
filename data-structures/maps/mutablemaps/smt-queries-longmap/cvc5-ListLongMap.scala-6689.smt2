; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84134 () Bool)

(assert start!84134)

(declare-fun mapNonEmpty!36392 () Bool)

(declare-fun mapRes!36392 () Bool)

(declare-fun tp!69077 () Bool)

(declare-fun e!554317 () Bool)

(assert (=> mapNonEmpty!36392 (= mapRes!36392 (and tp!69077 e!554317))))

(declare-datatypes ((V!35529 0))(
  ( (V!35530 (val!11505 Int)) )
))
(declare-datatypes ((ValueCell!10973 0))(
  ( (ValueCellFull!10973 (v!14067 V!35529)) (EmptyCell!10973) )
))
(declare-datatypes ((array!61793 0))(
  ( (array!61794 (arr!29750 (Array (_ BitVec 32) ValueCell!10973)) (size!30230 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61793)

(declare-fun mapRest!36392 () (Array (_ BitVec 32) ValueCell!10973))

(declare-fun mapValue!36392 () ValueCell!10973)

(declare-fun mapKey!36392 () (_ BitVec 32))

(assert (=> mapNonEmpty!36392 (= (arr!29750 _values!1278) (store mapRest!36392 mapKey!36392 mapValue!36392))))

(declare-fun b!983296 () Bool)

(declare-fun e!554314 () Bool)

(declare-fun e!554316 () Bool)

(assert (=> b!983296 (= e!554314 (and e!554316 mapRes!36392))))

(declare-fun condMapEmpty!36392 () Bool)

(declare-fun mapDefault!36392 () ValueCell!10973)

