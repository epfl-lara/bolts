; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111014 () Bool)

(assert start!111014)

(declare-fun b_free!29813 () Bool)

(declare-fun b_next!29813 () Bool)

(assert (=> start!111014 (= b_free!29813 (not b_next!29813))))

(declare-fun tp!104762 () Bool)

(declare-fun b_and!48031 () Bool)

(assert (=> start!111014 (= tp!104762 b_and!48031)))

(declare-fun b!1313793 () Bool)

(declare-fun e!749434 () Bool)

(declare-fun tp_is_empty!35543 () Bool)

(assert (=> b!1313793 (= e!749434 tp_is_empty!35543)))

(declare-fun mapIsEmpty!54943 () Bool)

(declare-fun mapRes!54943 () Bool)

(assert (=> mapIsEmpty!54943 mapRes!54943))

(declare-fun b!1313794 () Bool)

(declare-fun res!872299 () Bool)

(declare-fun e!749431 () Bool)

(assert (=> b!1313794 (=> (not res!872299) (not e!749431))))

(declare-datatypes ((array!88025 0))(
  ( (array!88026 (arr!42488 (Array (_ BitVec 32) (_ BitVec 64))) (size!43039 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88025)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88025 (_ BitVec 32)) Bool)

(assert (=> b!1313794 (= res!872299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313795 () Bool)

(declare-fun res!872303 () Bool)

(assert (=> b!1313795 (=> (not res!872303) (not e!749431))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313795 (= res!872303 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43039 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313796 () Bool)

(declare-fun e!749433 () Bool)

(assert (=> b!1313796 (= e!749433 tp_is_empty!35543)))

(declare-fun b!1313797 () Bool)

(declare-fun res!872301 () Bool)

(assert (=> b!1313797 (=> (not res!872301) (not e!749431))))

(declare-datatypes ((List!30345 0))(
  ( (Nil!30342) (Cons!30341 (h!31550 (_ BitVec 64)) (t!43958 List!30345)) )
))
(declare-fun arrayNoDuplicates!0 (array!88025 (_ BitVec 32) List!30345) Bool)

(assert (=> b!1313797 (= res!872301 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30342))))

(declare-fun mapNonEmpty!54943 () Bool)

(declare-fun tp!104761 () Bool)

(assert (=> mapNonEmpty!54943 (= mapRes!54943 (and tp!104761 e!749433))))

(declare-fun mapKey!54943 () (_ BitVec 32))

(declare-datatypes ((V!52493 0))(
  ( (V!52494 (val!17846 Int)) )
))
(declare-datatypes ((ValueCell!16873 0))(
  ( (ValueCellFull!16873 (v!20471 V!52493)) (EmptyCell!16873) )
))
(declare-fun mapRest!54943 () (Array (_ BitVec 32) ValueCell!16873))

(declare-datatypes ((array!88027 0))(
  ( (array!88028 (arr!42489 (Array (_ BitVec 32) ValueCell!16873)) (size!43040 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88027)

(declare-fun mapValue!54943 () ValueCell!16873)

(assert (=> mapNonEmpty!54943 (= (arr!42489 _values!1354) (store mapRest!54943 mapKey!54943 mapValue!54943))))

(declare-fun b!1313798 () Bool)

(declare-fun res!872302 () Bool)

(assert (=> b!1313798 (=> (not res!872302) (not e!749431))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313798 (= res!872302 (and (= (size!43040 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43039 _keys!1628) (size!43040 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313799 () Bool)

(declare-fun e!749435 () Bool)

(assert (=> b!1313799 (= e!749435 (and e!749434 mapRes!54943))))

(declare-fun condMapEmpty!54943 () Bool)

(declare-fun mapDefault!54943 () ValueCell!16873)

