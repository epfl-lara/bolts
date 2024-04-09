; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110752 () Bool)

(assert start!110752)

(declare-fun b_free!29551 () Bool)

(declare-fun b_next!29551 () Bool)

(assert (=> start!110752 (= b_free!29551 (not b_next!29551))))

(declare-fun tp!103976 () Bool)

(declare-fun b_and!47769 () Bool)

(assert (=> start!110752 (= tp!103976 b_and!47769)))

(declare-fun b!1310162 () Bool)

(declare-fun res!869851 () Bool)

(declare-fun e!747469 () Bool)

(assert (=> b!1310162 (=> (not res!869851) (not e!747469))))

(declare-datatypes ((array!87517 0))(
  ( (array!87518 (arr!42234 (Array (_ BitVec 32) (_ BitVec 64))) (size!42785 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87517)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87517 (_ BitVec 32)) Bool)

(assert (=> b!1310162 (= res!869851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310163 () Bool)

(declare-fun res!869848 () Bool)

(assert (=> b!1310163 (=> (not res!869848) (not e!747469))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52145 0))(
  ( (V!52146 (val!17715 Int)) )
))
(declare-fun minValue!1296 () V!52145)

(declare-datatypes ((ValueCell!16742 0))(
  ( (ValueCellFull!16742 (v!20340 V!52145)) (EmptyCell!16742) )
))
(declare-datatypes ((array!87519 0))(
  ( (array!87520 (arr!42235 (Array (_ BitVec 32) ValueCell!16742)) (size!42786 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87519)

(declare-fun zeroValue!1296 () V!52145)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!22988 0))(
  ( (tuple2!22989 (_1!11504 (_ BitVec 64)) (_2!11504 V!52145)) )
))
(declare-datatypes ((List!30154 0))(
  ( (Nil!30151) (Cons!30150 (h!31359 tuple2!22988) (t!43767 List!30154)) )
))
(declare-datatypes ((ListLongMap!20657 0))(
  ( (ListLongMap!20658 (toList!10344 List!30154)) )
))
(declare-fun contains!8430 (ListLongMap!20657 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5300 (array!87517 array!87519 (_ BitVec 32) (_ BitVec 32) V!52145 V!52145 (_ BitVec 32) Int) ListLongMap!20657)

(assert (=> b!1310163 (= res!869848 (contains!8430 (getCurrentListMap!5300 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54550 () Bool)

(declare-fun mapRes!54550 () Bool)

(declare-fun tp!103975 () Bool)

(declare-fun e!747468 () Bool)

(assert (=> mapNonEmpty!54550 (= mapRes!54550 (and tp!103975 e!747468))))

(declare-fun mapRest!54550 () (Array (_ BitVec 32) ValueCell!16742))

(declare-fun mapKey!54550 () (_ BitVec 32))

(declare-fun mapValue!54550 () ValueCell!16742)

(assert (=> mapNonEmpty!54550 (= (arr!42235 _values!1354) (store mapRest!54550 mapKey!54550 mapValue!54550))))

(declare-fun res!869850 () Bool)

(assert (=> start!110752 (=> (not res!869850) (not e!747469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110752 (= res!869850 (validMask!0 mask!2040))))

(assert (=> start!110752 e!747469))

(assert (=> start!110752 tp!103976))

(declare-fun array_inv!31907 (array!87517) Bool)

(assert (=> start!110752 (array_inv!31907 _keys!1628)))

(assert (=> start!110752 true))

(declare-fun tp_is_empty!35281 () Bool)

(assert (=> start!110752 tp_is_empty!35281))

(declare-fun e!747470 () Bool)

(declare-fun array_inv!31908 (array!87519) Bool)

(assert (=> start!110752 (and (array_inv!31908 _values!1354) e!747470)))

(declare-fun b!1310164 () Bool)

(declare-fun e!747467 () Bool)

(assert (=> b!1310164 (= e!747470 (and e!747467 mapRes!54550))))

(declare-fun condMapEmpty!54550 () Bool)

(declare-fun mapDefault!54550 () ValueCell!16742)

