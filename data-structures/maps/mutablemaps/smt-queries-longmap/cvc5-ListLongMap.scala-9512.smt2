; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112926 () Bool)

(assert start!112926)

(declare-fun b!1338548 () Bool)

(declare-fun e!762244 () Bool)

(declare-fun tp_is_empty!36985 () Bool)

(assert (=> b!1338548 (= e!762244 tp_is_empty!36985)))

(declare-fun b!1338549 () Bool)

(declare-fun e!762245 () Bool)

(declare-fun mapRes!57169 () Bool)

(assert (=> b!1338549 (= e!762245 (and e!762244 mapRes!57169))))

(declare-fun condMapEmpty!57169 () Bool)

(declare-datatypes ((V!54417 0))(
  ( (V!54418 (val!18567 Int)) )
))
(declare-datatypes ((ValueCell!17594 0))(
  ( (ValueCellFull!17594 (v!21212 V!54417)) (EmptyCell!17594) )
))
(declare-datatypes ((array!90805 0))(
  ( (array!90806 (arr!43859 (Array (_ BitVec 32) ValueCell!17594)) (size!44410 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90805)

(declare-fun mapDefault!57169 () ValueCell!17594)

