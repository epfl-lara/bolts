; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82248 () Bool)

(assert start!82248)

(declare-fun b_free!18493 () Bool)

(declare-fun b_next!18493 () Bool)

(assert (=> start!82248 (= b_free!18493 (not b_next!18493))))

(declare-fun tp!64440 () Bool)

(declare-fun b_and!29999 () Bool)

(assert (=> start!82248 (= tp!64440 b_and!29999)))

(declare-fun b!958184 () Bool)

(declare-fun e!540214 () Bool)

(declare-fun tp_is_empty!21199 () Bool)

(assert (=> b!958184 (= e!540214 tp_is_empty!21199)))

(declare-fun b!958185 () Bool)

(declare-fun res!641491 () Bool)

(declare-fun e!540217 () Bool)

(assert (=> b!958185 (=> (not res!641491) (not e!540217))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58515 0))(
  ( (array!58516 (arr!28127 (Array (_ BitVec 32) (_ BitVec 64))) (size!28607 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58515)

(declare-datatypes ((V!33249 0))(
  ( (V!33250 (val!10650 Int)) )
))
(declare-datatypes ((ValueCell!10118 0))(
  ( (ValueCellFull!10118 (v!13207 V!33249)) (EmptyCell!10118) )
))
(declare-datatypes ((array!58517 0))(
  ( (array!58518 (arr!28128 (Array (_ BitVec 32) ValueCell!10118)) (size!28608 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58517)

(assert (=> b!958185 (= res!641491 (and (= (size!28608 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28607 _keys!1668) (size!28608 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958186 () Bool)

(declare-fun res!641490 () Bool)

(assert (=> b!958186 (=> (not res!641490) (not e!540217))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958186 (= res!641490 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28607 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28607 _keys!1668))))))

(declare-fun b!958187 () Bool)

(declare-fun e!540215 () Bool)

(declare-fun mapRes!33778 () Bool)

(assert (=> b!958187 (= e!540215 (and e!540214 mapRes!33778))))

(declare-fun condMapEmpty!33778 () Bool)

(declare-fun mapDefault!33778 () ValueCell!10118)

