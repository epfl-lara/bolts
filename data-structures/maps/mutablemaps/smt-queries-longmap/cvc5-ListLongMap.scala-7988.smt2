; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98804 () Bool)

(assert start!98804)

(declare-fun b_free!24373 () Bool)

(declare-fun b_next!24373 () Bool)

(assert (=> start!98804 (= b_free!24373 (not b_next!24373))))

(declare-fun tp!85830 () Bool)

(declare-fun b_and!39609 () Bool)

(assert (=> start!98804 (= tp!85830 b_and!39609)))

(declare-fun b!1152106 () Bool)

(declare-fun e!655299 () Bool)

(declare-fun e!655305 () Bool)

(declare-fun mapRes!45179 () Bool)

(assert (=> b!1152106 (= e!655299 (and e!655305 mapRes!45179))))

(declare-fun condMapEmpty!45179 () Bool)

(declare-datatypes ((V!43665 0))(
  ( (V!43666 (val!14508 Int)) )
))
(declare-datatypes ((ValueCell!13742 0))(
  ( (ValueCellFull!13742 (v!17146 V!43665)) (EmptyCell!13742) )
))
(declare-datatypes ((array!74606 0))(
  ( (array!74607 (arr!35950 (Array (_ BitVec 32) ValueCell!13742)) (size!36487 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74606)

(declare-fun mapDefault!45179 () ValueCell!13742)

