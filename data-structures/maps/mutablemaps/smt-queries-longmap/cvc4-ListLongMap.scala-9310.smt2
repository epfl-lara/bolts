; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111336 () Bool)

(assert start!111336)

(declare-fun b!1317040 () Bool)

(declare-fun e!751489 () Bool)

(declare-fun tp_is_empty!35777 () Bool)

(assert (=> b!1317040 (= e!751489 tp_is_empty!35777)))

(declare-fun mapIsEmpty!55313 () Bool)

(declare-fun mapRes!55313 () Bool)

(assert (=> mapIsEmpty!55313 mapRes!55313))

(declare-fun b!1317041 () Bool)

(declare-fun e!751491 () Bool)

(declare-fun e!751490 () Bool)

(assert (=> b!1317041 (= e!751491 (and e!751490 mapRes!55313))))

(declare-fun condMapEmpty!55313 () Bool)

(declare-datatypes ((V!52805 0))(
  ( (V!52806 (val!17963 Int)) )
))
(declare-datatypes ((ValueCell!16990 0))(
  ( (ValueCellFull!16990 (v!20591 V!52805)) (EmptyCell!16990) )
))
(declare-datatypes ((array!88469 0))(
  ( (array!88470 (arr!42704 (Array (_ BitVec 32) ValueCell!16990)) (size!43255 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88469)

(declare-fun mapDefault!55313 () ValueCell!16990)

