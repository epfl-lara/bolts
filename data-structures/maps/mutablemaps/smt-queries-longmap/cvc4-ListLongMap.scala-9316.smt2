; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111372 () Bool)

(assert start!111372)

(declare-fun b!1317364 () Bool)

(declare-fun e!751758 () Bool)

(declare-fun tp_is_empty!35813 () Bool)

(assert (=> b!1317364 (= e!751758 tp_is_empty!35813)))

(declare-fun mapIsEmpty!55367 () Bool)

(declare-fun mapRes!55367 () Bool)

(assert (=> mapIsEmpty!55367 mapRes!55367))

(declare-fun mapNonEmpty!55367 () Bool)

(declare-fun tp!105474 () Bool)

(declare-fun e!751759 () Bool)

(assert (=> mapNonEmpty!55367 (= mapRes!55367 (and tp!105474 e!751759))))

(declare-datatypes ((V!52853 0))(
  ( (V!52854 (val!17981 Int)) )
))
(declare-datatypes ((ValueCell!17008 0))(
  ( (ValueCellFull!17008 (v!20609 V!52853)) (EmptyCell!17008) )
))
(declare-fun mapRest!55367 () (Array (_ BitVec 32) ValueCell!17008))

(declare-datatypes ((array!88535 0))(
  ( (array!88536 (arr!42737 (Array (_ BitVec 32) ValueCell!17008)) (size!43288 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88535)

(declare-fun mapValue!55367 () ValueCell!17008)

(declare-fun mapKey!55367 () (_ BitVec 32))

(assert (=> mapNonEmpty!55367 (= (arr!42737 _values!1337) (store mapRest!55367 mapKey!55367 mapValue!55367))))

(declare-fun b!1317365 () Bool)

(declare-fun e!751760 () Bool)

(assert (=> b!1317365 (= e!751760 (and e!751758 mapRes!55367))))

(declare-fun condMapEmpty!55367 () Bool)

(declare-fun mapDefault!55367 () ValueCell!17008)

