; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110836 () Bool)

(assert start!110836)

(declare-fun b_free!29635 () Bool)

(declare-fun b_next!29635 () Bool)

(assert (=> start!110836 (= b_free!29635 (not b_next!29635))))

(declare-fun tp!104227 () Bool)

(declare-fun b_and!47853 () Bool)

(assert (=> start!110836 (= tp!104227 b_and!47853)))

(declare-fun b!1311306 () Bool)

(declare-fun e!748099 () Bool)

(declare-fun tp_is_empty!35365 () Bool)

(assert (=> b!1311306 (= e!748099 tp_is_empty!35365)))

(declare-fun mapNonEmpty!54676 () Bool)

(declare-fun mapRes!54676 () Bool)

(declare-fun tp!104228 () Bool)

(assert (=> mapNonEmpty!54676 (= mapRes!54676 (and tp!104228 e!748099))))

(declare-datatypes ((V!52257 0))(
  ( (V!52258 (val!17757 Int)) )
))
(declare-datatypes ((ValueCell!16784 0))(
  ( (ValueCellFull!16784 (v!20382 V!52257)) (EmptyCell!16784) )
))
(declare-fun mapRest!54676 () (Array (_ BitVec 32) ValueCell!16784))

(declare-fun mapValue!54676 () ValueCell!16784)

(declare-fun mapKey!54676 () (_ BitVec 32))

(declare-datatypes ((array!87681 0))(
  ( (array!87682 (arr!42316 (Array (_ BitVec 32) ValueCell!16784)) (size!42867 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87681)

(assert (=> mapNonEmpty!54676 (= (arr!42316 _values!1354) (store mapRest!54676 mapKey!54676 mapValue!54676))))

(declare-fun b!1311307 () Bool)

(declare-fun res!870617 () Bool)

(declare-fun e!748097 () Bool)

(assert (=> b!1311307 (=> (not res!870617) (not e!748097))))

(declare-datatypes ((array!87683 0))(
  ( (array!87684 (arr!42317 (Array (_ BitVec 32) (_ BitVec 64))) (size!42868 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87683)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87683 (_ BitVec 32)) Bool)

(assert (=> b!1311307 (= res!870617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311308 () Bool)

(assert (=> b!1311308 (= e!748097 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52257)

(declare-fun zeroValue!1296 () V!52257)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585403 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!23050 0))(
  ( (tuple2!23051 (_1!11535 (_ BitVec 64)) (_2!11535 V!52257)) )
))
(declare-datatypes ((List!30216 0))(
  ( (Nil!30213) (Cons!30212 (h!31421 tuple2!23050) (t!43829 List!30216)) )
))
(declare-datatypes ((ListLongMap!20719 0))(
  ( (ListLongMap!20720 (toList!10375 List!30216)) )
))
(declare-fun contains!8461 (ListLongMap!20719 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5331 (array!87683 array!87681 (_ BitVec 32) (_ BitVec 32) V!52257 V!52257 (_ BitVec 32) Int) ListLongMap!20719)

(assert (=> b!1311308 (= lt!585403 (contains!8461 (getCurrentListMap!5331 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311309 () Bool)

(declare-fun res!870613 () Bool)

(assert (=> b!1311309 (=> (not res!870613) (not e!748097))))

(assert (=> b!1311309 (= res!870613 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42868 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311310 () Bool)

(declare-fun e!748096 () Bool)

(assert (=> b!1311310 (= e!748096 tp_is_empty!35365)))

(declare-fun b!1311311 () Bool)

(declare-fun e!748100 () Bool)

(assert (=> b!1311311 (= e!748100 (and e!748096 mapRes!54676))))

(declare-fun condMapEmpty!54676 () Bool)

(declare-fun mapDefault!54676 () ValueCell!16784)

