; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108682 () Bool)

(assert start!108682)

(declare-fun b_free!28159 () Bool)

(declare-fun b_next!28159 () Bool)

(assert (=> start!108682 (= b_free!28159 (not b_next!28159))))

(declare-fun tp!99593 () Bool)

(declare-fun b_and!46235 () Bool)

(assert (=> start!108682 (= tp!99593 b_and!46235)))

(declare-fun mapIsEmpty!52256 () Bool)

(declare-fun mapRes!52256 () Bool)

(assert (=> mapIsEmpty!52256 mapRes!52256))

(declare-fun b!1282347 () Bool)

(declare-fun e!732726 () Bool)

(declare-fun e!732730 () Bool)

(assert (=> b!1282347 (= e!732726 (and e!732730 mapRes!52256))))

(declare-fun condMapEmpty!52256 () Bool)

(declare-datatypes ((V!50169 0))(
  ( (V!50170 (val!16974 Int)) )
))
(declare-datatypes ((ValueCell!16001 0))(
  ( (ValueCellFull!16001 (v!19574 V!50169)) (EmptyCell!16001) )
))
(declare-datatypes ((array!84621 0))(
  ( (array!84622 (arr!40808 (Array (_ BitVec 32) ValueCell!16001)) (size!41359 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84621)

(declare-fun mapDefault!52256 () ValueCell!16001)

