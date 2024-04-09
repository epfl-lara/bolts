; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108662 () Bool)

(assert start!108662)

(declare-fun b_free!28139 () Bool)

(declare-fun b_next!28139 () Bool)

(assert (=> start!108662 (= b_free!28139 (not b_next!28139))))

(declare-fun tp!99534 () Bool)

(declare-fun b_and!46215 () Bool)

(assert (=> start!108662 (= tp!99534 b_and!46215)))

(declare-fun b!1282107 () Bool)

(declare-fun res!851710 () Bool)

(declare-fun e!732577 () Bool)

(assert (=> b!1282107 (=> (not res!851710) (not e!732577))))

(declare-datatypes ((array!84583 0))(
  ( (array!84584 (arr!40789 (Array (_ BitVec 32) (_ BitVec 64))) (size!41340 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84583)

(declare-datatypes ((List!29075 0))(
  ( (Nil!29072) (Cons!29071 (h!30280 (_ BitVec 64)) (t!42626 List!29075)) )
))
(declare-fun arrayNoDuplicates!0 (array!84583 (_ BitVec 32) List!29075) Bool)

(assert (=> b!1282107 (= res!851710 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29072))))

(declare-fun b!1282108 () Bool)

(declare-fun e!732578 () Bool)

(declare-fun e!732579 () Bool)

(declare-fun mapRes!52226 () Bool)

(assert (=> b!1282108 (= e!732578 (and e!732579 mapRes!52226))))

(declare-fun condMapEmpty!52226 () Bool)

(declare-datatypes ((V!50141 0))(
  ( (V!50142 (val!16964 Int)) )
))
(declare-datatypes ((ValueCell!15991 0))(
  ( (ValueCellFull!15991 (v!19564 V!50141)) (EmptyCell!15991) )
))
(declare-datatypes ((array!84585 0))(
  ( (array!84586 (arr!40790 (Array (_ BitVec 32) ValueCell!15991)) (size!41341 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84585)

(declare-fun mapDefault!52226 () ValueCell!15991)

