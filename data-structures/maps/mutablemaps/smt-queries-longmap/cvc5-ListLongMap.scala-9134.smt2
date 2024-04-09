; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109624 () Bool)

(assert start!109624)

(declare-fun b_free!29077 () Bool)

(declare-fun b_next!29077 () Bool)

(assert (=> start!109624 (= b_free!29077 (not b_next!29077))))

(declare-fun tp!102350 () Bool)

(declare-fun b_and!47177 () Bool)

(assert (=> start!109624 (= tp!102350 b_and!47177)))

(declare-fun b!1297919 () Bool)

(declare-fun e!740526 () Bool)

(declare-fun e!740525 () Bool)

(declare-fun mapRes!53636 () Bool)

(assert (=> b!1297919 (= e!740526 (and e!740525 mapRes!53636))))

(declare-fun condMapEmpty!53636 () Bool)

(declare-datatypes ((V!51393 0))(
  ( (V!51394 (val!17433 Int)) )
))
(declare-datatypes ((ValueCell!16460 0))(
  ( (ValueCellFull!16460 (v!20034 V!51393)) (EmptyCell!16460) )
))
(declare-datatypes ((array!86407 0))(
  ( (array!86408 (arr!41700 (Array (_ BitVec 32) ValueCell!16460)) (size!42251 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86407)

(declare-fun mapDefault!53636 () ValueCell!16460)

