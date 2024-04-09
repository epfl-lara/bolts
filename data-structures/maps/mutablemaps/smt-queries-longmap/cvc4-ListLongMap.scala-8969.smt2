; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108580 () Bool)

(assert start!108580)

(declare-fun b_free!28091 () Bool)

(declare-fun b_next!28091 () Bool)

(assert (=> start!108580 (= b_free!28091 (not b_next!28091))))

(declare-fun tp!99383 () Bool)

(declare-fun b_and!46161 () Bool)

(assert (=> start!108580 (= tp!99383 b_and!46161)))

(declare-fun b!1281167 () Bool)

(declare-fun res!851132 () Bool)

(declare-fun e!732025 () Bool)

(assert (=> b!1281167 (=> (not res!851132) (not e!732025))))

(declare-datatypes ((array!84487 0))(
  ( (array!84488 (arr!40743 (Array (_ BitVec 32) (_ BitVec 64))) (size!41294 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84487)

(declare-datatypes ((List!29044 0))(
  ( (Nil!29041) (Cons!29040 (h!30249 (_ BitVec 64)) (t!42591 List!29044)) )
))
(declare-fun arrayNoDuplicates!0 (array!84487 (_ BitVec 32) List!29044) Bool)

(assert (=> b!1281167 (= res!851132 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29041))))

(declare-fun b!1281168 () Bool)

(declare-fun res!851134 () Bool)

(assert (=> b!1281168 (=> (not res!851134) (not e!732025))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1281168 (= res!851134 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41294 _keys!1741)) (not (= (select (arr!40743 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1281169 () Bool)

(declare-fun e!732021 () Bool)

(declare-fun e!732023 () Bool)

(declare-fun mapRes!52148 () Bool)

(assert (=> b!1281169 (= e!732021 (and e!732023 mapRes!52148))))

(declare-fun condMapEmpty!52148 () Bool)

(declare-datatypes ((V!50077 0))(
  ( (V!50078 (val!16940 Int)) )
))
(declare-datatypes ((ValueCell!15967 0))(
  ( (ValueCellFull!15967 (v!19538 V!50077)) (EmptyCell!15967) )
))
(declare-datatypes ((array!84489 0))(
  ( (array!84490 (arr!40744 (Array (_ BitVec 32) ValueCell!15967)) (size!41295 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84489)

(declare-fun mapDefault!52148 () ValueCell!15967)

