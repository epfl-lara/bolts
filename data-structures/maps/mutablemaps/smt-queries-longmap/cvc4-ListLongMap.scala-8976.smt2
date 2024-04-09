; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108642 () Bool)

(assert start!108642)

(declare-fun b_free!28133 () Bool)

(declare-fun b_next!28133 () Bool)

(assert (=> start!108642 (= b_free!28133 (not b_next!28133))))

(declare-fun tp!99512 () Bool)

(declare-fun b_and!46207 () Bool)

(assert (=> start!108642 (= tp!99512 b_and!46207)))

(declare-fun b!1281925 () Bool)

(declare-fun res!851620 () Bool)

(declare-fun e!732463 () Bool)

(assert (=> b!1281925 (=> (not res!851620) (not e!732463))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84569 0))(
  ( (array!84570 (arr!40783 (Array (_ BitVec 32) (_ BitVec 64))) (size!41334 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84569)

(assert (=> b!1281925 (= res!851620 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41334 _keys!1741))))))

(declare-fun b!1281926 () Bool)

(declare-fun e!732462 () Bool)

(declare-fun e!732461 () Bool)

(declare-fun mapRes!52214 () Bool)

(assert (=> b!1281926 (= e!732462 (and e!732461 mapRes!52214))))

(declare-fun condMapEmpty!52214 () Bool)

(declare-datatypes ((V!50133 0))(
  ( (V!50134 (val!16961 Int)) )
))
(declare-datatypes ((ValueCell!15988 0))(
  ( (ValueCellFull!15988 (v!19560 V!50133)) (EmptyCell!15988) )
))
(declare-datatypes ((array!84571 0))(
  ( (array!84572 (arr!40784 (Array (_ BitVec 32) ValueCell!15988)) (size!41335 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84571)

(declare-fun mapDefault!52214 () ValueCell!15988)

