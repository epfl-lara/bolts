; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112690 () Bool)

(assert start!112690)

(declare-fun b_free!30991 () Bool)

(declare-fun b_next!30991 () Bool)

(assert (=> start!112690 (= b_free!30991 (not b_next!30991))))

(declare-fun tp!108615 () Bool)

(declare-fun b_and!49929 () Bool)

(assert (=> start!112690 (= tp!108615 b_and!49929)))

(declare-fun b!1336038 () Bool)

(declare-fun e!760929 () Bool)

(declare-fun e!760931 () Bool)

(declare-fun mapRes!57029 () Bool)

(assert (=> b!1336038 (= e!760929 (and e!760931 mapRes!57029))))

(declare-fun condMapEmpty!57029 () Bool)

(declare-datatypes ((V!54305 0))(
  ( (V!54306 (val!18525 Int)) )
))
(declare-datatypes ((ValueCell!17552 0))(
  ( (ValueCellFull!17552 (v!21163 V!54305)) (EmptyCell!17552) )
))
(declare-datatypes ((array!90637 0))(
  ( (array!90638 (arr!43779 (Array (_ BitVec 32) ValueCell!17552)) (size!44330 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90637)

(declare-fun mapDefault!57029 () ValueCell!17552)

