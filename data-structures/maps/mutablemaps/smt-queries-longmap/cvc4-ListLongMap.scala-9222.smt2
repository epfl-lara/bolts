; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110720 () Bool)

(assert start!110720)

(declare-fun b_free!29519 () Bool)

(declare-fun b_next!29519 () Bool)

(assert (=> start!110720 (= b_free!29519 (not b_next!29519))))

(declare-fun tp!103879 () Bool)

(declare-fun b_and!47737 () Bool)

(assert (=> start!110720 (= tp!103879 b_and!47737)))

(declare-fun b!1309590 () Bool)

(declare-fun res!869422 () Bool)

(declare-fun e!747226 () Bool)

(assert (=> b!1309590 (=> (not res!869422) (not e!747226))))

(declare-datatypes ((array!87455 0))(
  ( (array!87456 (arr!42203 (Array (_ BitVec 32) (_ BitVec 64))) (size!42754 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87455)

(declare-datatypes ((List!30128 0))(
  ( (Nil!30125) (Cons!30124 (h!31333 (_ BitVec 64)) (t!43741 List!30128)) )
))
(declare-fun arrayNoDuplicates!0 (array!87455 (_ BitVec 32) List!30128) Bool)

(assert (=> b!1309590 (= res!869422 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30125))))

(declare-fun mapIsEmpty!54502 () Bool)

(declare-fun mapRes!54502 () Bool)

(assert (=> mapIsEmpty!54502 mapRes!54502))

(declare-fun b!1309591 () Bool)

(declare-fun res!869419 () Bool)

(assert (=> b!1309591 (=> (not res!869419) (not e!747226))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52101 0))(
  ( (V!52102 (val!17699 Int)) )
))
(declare-datatypes ((ValueCell!16726 0))(
  ( (ValueCellFull!16726 (v!20324 V!52101)) (EmptyCell!16726) )
))
(declare-datatypes ((array!87457 0))(
  ( (array!87458 (arr!42204 (Array (_ BitVec 32) ValueCell!16726)) (size!42755 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87457)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309591 (= res!869419 (and (= (size!42755 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42754 _keys!1628) (size!42755 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309592 () Bool)

(declare-fun e!747227 () Bool)

(declare-fun tp_is_empty!35249 () Bool)

(assert (=> b!1309592 (= e!747227 tp_is_empty!35249)))

(declare-fun b!1309594 () Bool)

(declare-fun res!869420 () Bool)

(assert (=> b!1309594 (=> (not res!869420) (not e!747226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87455 (_ BitVec 32)) Bool)

(assert (=> b!1309594 (= res!869420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309595 () Bool)

(declare-fun e!747230 () Bool)

(assert (=> b!1309595 (= e!747230 tp_is_empty!35249)))

(declare-fun mapNonEmpty!54502 () Bool)

(declare-fun tp!103880 () Bool)

(assert (=> mapNonEmpty!54502 (= mapRes!54502 (and tp!103880 e!747230))))

(declare-fun mapRest!54502 () (Array (_ BitVec 32) ValueCell!16726))

(declare-fun mapKey!54502 () (_ BitVec 32))

(declare-fun mapValue!54502 () ValueCell!16726)

(assert (=> mapNonEmpty!54502 (= (arr!42204 _values!1354) (store mapRest!54502 mapKey!54502 mapValue!54502))))

(declare-fun b!1309596 () Bool)

(assert (=> b!1309596 (= e!747226 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585229 () Bool)

(declare-fun minValue!1296 () V!52101)

(declare-fun zeroValue!1296 () V!52101)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22962 0))(
  ( (tuple2!22963 (_1!11491 (_ BitVec 64)) (_2!11491 V!52101)) )
))
(declare-datatypes ((List!30129 0))(
  ( (Nil!30126) (Cons!30125 (h!31334 tuple2!22962) (t!43742 List!30129)) )
))
(declare-datatypes ((ListLongMap!20631 0))(
  ( (ListLongMap!20632 (toList!10331 List!30129)) )
))
(declare-fun contains!8417 (ListLongMap!20631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5287 (array!87455 array!87457 (_ BitVec 32) (_ BitVec 32) V!52101 V!52101 (_ BitVec 32) Int) ListLongMap!20631)

(assert (=> b!1309596 (= lt!585229 (contains!8417 (getCurrentListMap!5287 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309597 () Bool)

(declare-fun e!747229 () Bool)

(assert (=> b!1309597 (= e!747229 (and e!747227 mapRes!54502))))

(declare-fun condMapEmpty!54502 () Bool)

(declare-fun mapDefault!54502 () ValueCell!16726)

