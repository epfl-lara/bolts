; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!456 () Bool)

(assert start!456)

(declare-fun b!2705 () Bool)

(declare-fun e!1053 () Bool)

(declare-fun tp_is_empty!61 () Bool)

(assert (=> b!2705 (= e!1053 tp_is_empty!61)))

(declare-fun mapIsEmpty!32 () Bool)

(declare-fun mapRes!32 () Bool)

(assert (=> mapIsEmpty!32 mapRes!32))

(declare-fun b!2706 () Bool)

(declare-fun e!1052 () Bool)

(declare-fun e!1050 () Bool)

(assert (=> b!2706 (= e!1052 (and e!1050 mapRes!32))))

(declare-fun condMapEmpty!32 () Bool)

(declare-datatypes ((V!259 0))(
  ( (V!260 (val!36 Int)) )
))
(declare-datatypes ((ValueCell!14 0))(
  ( (ValueCellFull!14 (v!1122 V!259)) (EmptyCell!14) )
))
(declare-datatypes ((array!51 0))(
  ( (array!52 (arr!24 (Array (_ BitVec 32) ValueCell!14)) (size!86 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!51)

(declare-fun mapDefault!32 () ValueCell!14)

