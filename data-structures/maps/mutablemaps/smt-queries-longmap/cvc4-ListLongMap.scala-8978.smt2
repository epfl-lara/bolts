; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108668 () Bool)

(assert start!108668)

(declare-fun b_free!28145 () Bool)

(declare-fun b_next!28145 () Bool)

(assert (=> start!108668 (= b_free!28145 (not b_next!28145))))

(declare-fun tp!99551 () Bool)

(declare-fun b_and!46221 () Bool)

(assert (=> start!108668 (= tp!99551 b_and!46221)))

(declare-fun b!1282179 () Bool)

(declare-fun res!851754 () Bool)

(declare-fun e!732622 () Bool)

(assert (=> b!1282179 (=> (not res!851754) (not e!732622))))

(declare-datatypes ((array!84595 0))(
  ( (array!84596 (arr!40795 (Array (_ BitVec 32) (_ BitVec 64))) (size!41346 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84595)

(declare-datatypes ((List!29080 0))(
  ( (Nil!29077) (Cons!29076 (h!30285 (_ BitVec 64)) (t!42631 List!29080)) )
))
(declare-fun arrayNoDuplicates!0 (array!84595 (_ BitVec 32) List!29080) Bool)

(assert (=> b!1282179 (= res!851754 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29077))))

(declare-fun b!1282180 () Bool)

(declare-fun res!851756 () Bool)

(assert (=> b!1282180 (=> (not res!851756) (not e!732622))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1282180 (= res!851756 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41346 _keys!1741))))))

(declare-fun b!1282181 () Bool)

(declare-fun e!732625 () Bool)

(declare-fun e!732624 () Bool)

(declare-fun mapRes!52235 () Bool)

(assert (=> b!1282181 (= e!732625 (and e!732624 mapRes!52235))))

(declare-fun condMapEmpty!52235 () Bool)

(declare-datatypes ((V!50149 0))(
  ( (V!50150 (val!16967 Int)) )
))
(declare-datatypes ((ValueCell!15994 0))(
  ( (ValueCellFull!15994 (v!19567 V!50149)) (EmptyCell!15994) )
))
(declare-datatypes ((array!84597 0))(
  ( (array!84598 (arr!40796 (Array (_ BitVec 32) ValueCell!15994)) (size!41347 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84597)

(declare-fun mapDefault!52235 () ValueCell!15994)

