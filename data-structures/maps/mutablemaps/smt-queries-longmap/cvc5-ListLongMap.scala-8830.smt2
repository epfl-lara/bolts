; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107240 () Bool)

(assert start!107240)

(declare-fun b!1270761 () Bool)

(declare-fun e!724504 () Bool)

(declare-fun e!724507 () Bool)

(declare-fun mapRes!50920 () Bool)

(assert (=> b!1270761 (= e!724504 (and e!724507 mapRes!50920))))

(declare-fun condMapEmpty!50920 () Bool)

(declare-datatypes ((V!49051 0))(
  ( (V!49052 (val!16521 Int)) )
))
(declare-datatypes ((ValueCell!15593 0))(
  ( (ValueCellFull!15593 (v!19156 V!49051)) (EmptyCell!15593) )
))
(declare-datatypes ((array!83007 0))(
  ( (array!83008 (arr!40036 (Array (_ BitVec 32) ValueCell!15593)) (size!40573 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83007)

(declare-fun mapDefault!50920 () ValueCell!15593)

