; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84126 () Bool)

(assert start!84126)

(declare-fun mapNonEmpty!36380 () Bool)

(declare-fun mapRes!36380 () Bool)

(declare-fun tp!69065 () Bool)

(declare-fun e!554257 () Bool)

(assert (=> mapNonEmpty!36380 (= mapRes!36380 (and tp!69065 e!554257))))

(declare-datatypes ((V!35517 0))(
  ( (V!35518 (val!11501 Int)) )
))
(declare-datatypes ((ValueCell!10969 0))(
  ( (ValueCellFull!10969 (v!14063 V!35517)) (EmptyCell!10969) )
))
(declare-datatypes ((array!61783 0))(
  ( (array!61784 (arr!29745 (Array (_ BitVec 32) ValueCell!10969)) (size!30225 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61783)

(declare-fun mapRest!36380 () (Array (_ BitVec 32) ValueCell!10969))

(declare-fun mapKey!36380 () (_ BitVec 32))

(declare-fun mapValue!36380 () ValueCell!10969)

(assert (=> mapNonEmpty!36380 (= (arr!29745 _values!1278) (store mapRest!36380 mapKey!36380 mapValue!36380))))

(declare-fun b!983224 () Bool)

(declare-fun tp_is_empty!22901 () Bool)

(assert (=> b!983224 (= e!554257 tp_is_empty!22901)))

(declare-fun b!983225 () Bool)

(declare-fun e!554256 () Bool)

(declare-fun e!554254 () Bool)

(assert (=> b!983225 (= e!554256 (and e!554254 mapRes!36380))))

(declare-fun condMapEmpty!36380 () Bool)

(declare-fun mapDefault!36380 () ValueCell!10969)

