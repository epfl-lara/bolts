; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111360 () Bool)

(assert start!111360)

(declare-fun b!1317256 () Bool)

(declare-fun res!874363 () Bool)

(declare-fun e!751669 () Bool)

(assert (=> b!1317256 (=> (not res!874363) (not e!751669))))

(declare-datatypes ((array!88513 0))(
  ( (array!88514 (arr!42726 (Array (_ BitVec 32) (_ BitVec 64))) (size!43277 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88513)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88513 (_ BitVec 32)) Bool)

(assert (=> b!1317256 (= res!874363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317257 () Bool)

(declare-fun res!874362 () Bool)

(assert (=> b!1317257 (=> (not res!874362) (not e!751669))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52837 0))(
  ( (V!52838 (val!17975 Int)) )
))
(declare-datatypes ((ValueCell!17002 0))(
  ( (ValueCellFull!17002 (v!20603 V!52837)) (EmptyCell!17002) )
))
(declare-datatypes ((array!88515 0))(
  ( (array!88516 (arr!42727 (Array (_ BitVec 32) ValueCell!17002)) (size!43278 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88515)

(assert (=> b!1317257 (= res!874362 (and (= (size!43278 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43277 _keys!1609) (size!43278 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55349 () Bool)

(declare-fun mapRes!55349 () Bool)

(declare-fun tp!105456 () Bool)

(declare-fun e!751672 () Bool)

(assert (=> mapNonEmpty!55349 (= mapRes!55349 (and tp!105456 e!751672))))

(declare-fun mapValue!55349 () ValueCell!17002)

(declare-fun mapKey!55349 () (_ BitVec 32))

(declare-fun mapRest!55349 () (Array (_ BitVec 32) ValueCell!17002))

(assert (=> mapNonEmpty!55349 (= (arr!42727 _values!1337) (store mapRest!55349 mapKey!55349 mapValue!55349))))

(declare-fun mapIsEmpty!55349 () Bool)

(assert (=> mapIsEmpty!55349 mapRes!55349))

(declare-fun b!1317258 () Bool)

(declare-fun e!751670 () Bool)

(declare-fun e!751671 () Bool)

(assert (=> b!1317258 (= e!751670 (and e!751671 mapRes!55349))))

(declare-fun condMapEmpty!55349 () Bool)

(declare-fun mapDefault!55349 () ValueCell!17002)

