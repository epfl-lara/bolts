; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110810 () Bool)

(assert start!110810)

(declare-fun b_free!29609 () Bool)

(declare-fun b_next!29609 () Bool)

(assert (=> start!110810 (= b_free!29609 (not b_next!29609))))

(declare-fun tp!104150 () Bool)

(declare-fun b_and!47827 () Bool)

(assert (=> start!110810 (= tp!104150 b_and!47827)))

(declare-fun b!1310994 () Bool)

(declare-fun e!747904 () Bool)

(declare-fun tp_is_empty!35339 () Bool)

(assert (=> b!1310994 (= e!747904 tp_is_empty!35339)))

(declare-fun b!1310995 () Bool)

(declare-fun res!870421 () Bool)

(declare-fun e!747902 () Bool)

(assert (=> b!1310995 (=> (not res!870421) (not e!747902))))

(declare-datatypes ((array!87629 0))(
  ( (array!87630 (arr!42290 (Array (_ BitVec 32) (_ BitVec 64))) (size!42841 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87629)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87629 (_ BitVec 32)) Bool)

(assert (=> b!1310995 (= res!870421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310996 () Bool)

(declare-fun res!870422 () Bool)

(assert (=> b!1310996 (=> (not res!870422) (not e!747902))))

(declare-datatypes ((List!30197 0))(
  ( (Nil!30194) (Cons!30193 (h!31402 (_ BitVec 64)) (t!43810 List!30197)) )
))
(declare-fun arrayNoDuplicates!0 (array!87629 (_ BitVec 32) List!30197) Bool)

(assert (=> b!1310996 (= res!870422 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30194))))

(declare-fun mapIsEmpty!54637 () Bool)

(declare-fun mapRes!54637 () Bool)

(assert (=> mapIsEmpty!54637 mapRes!54637))

(declare-fun b!1310997 () Bool)

(declare-fun e!747901 () Bool)

(assert (=> b!1310997 (= e!747901 tp_is_empty!35339)))

(declare-fun res!870419 () Bool)

(assert (=> start!110810 (=> (not res!870419) (not e!747902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110810 (= res!870419 (validMask!0 mask!2040))))

(assert (=> start!110810 e!747902))

(assert (=> start!110810 tp!104150))

(declare-fun array_inv!31943 (array!87629) Bool)

(assert (=> start!110810 (array_inv!31943 _keys!1628)))

(assert (=> start!110810 true))

(assert (=> start!110810 tp_is_empty!35339))

(declare-datatypes ((V!52221 0))(
  ( (V!52222 (val!17744 Int)) )
))
(declare-datatypes ((ValueCell!16771 0))(
  ( (ValueCellFull!16771 (v!20369 V!52221)) (EmptyCell!16771) )
))
(declare-datatypes ((array!87631 0))(
  ( (array!87632 (arr!42291 (Array (_ BitVec 32) ValueCell!16771)) (size!42842 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87631)

(declare-fun e!747903 () Bool)

(declare-fun array_inv!31944 (array!87631) Bool)

(assert (=> start!110810 (and (array_inv!31944 _values!1354) e!747903)))

(declare-fun b!1310998 () Bool)

(declare-fun res!870420 () Bool)

(assert (=> b!1310998 (=> (not res!870420) (not e!747902))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310998 (= res!870420 (and (= (size!42842 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42841 _keys!1628) (size!42842 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310999 () Bool)

(declare-fun res!870418 () Bool)

(assert (=> b!1310999 (=> (not res!870418) (not e!747902))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310999 (= res!870418 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42841 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54637 () Bool)

(declare-fun tp!104149 () Bool)

(assert (=> mapNonEmpty!54637 (= mapRes!54637 (and tp!104149 e!747904))))

(declare-fun mapKey!54637 () (_ BitVec 32))

(declare-fun mapRest!54637 () (Array (_ BitVec 32) ValueCell!16771))

(declare-fun mapValue!54637 () ValueCell!16771)

(assert (=> mapNonEmpty!54637 (= (arr!42291 _values!1354) (store mapRest!54637 mapKey!54637 mapValue!54637))))

(declare-fun b!1311000 () Bool)

(assert (=> b!1311000 (= e!747902 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52221)

(declare-fun zeroValue!1296 () V!52221)

(declare-fun lt!585364 () Bool)

(declare-datatypes ((tuple2!23032 0))(
  ( (tuple2!23033 (_1!11526 (_ BitVec 64)) (_2!11526 V!52221)) )
))
(declare-datatypes ((List!30198 0))(
  ( (Nil!30195) (Cons!30194 (h!31403 tuple2!23032) (t!43811 List!30198)) )
))
(declare-datatypes ((ListLongMap!20701 0))(
  ( (ListLongMap!20702 (toList!10366 List!30198)) )
))
(declare-fun contains!8452 (ListLongMap!20701 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5322 (array!87629 array!87631 (_ BitVec 32) (_ BitVec 32) V!52221 V!52221 (_ BitVec 32) Int) ListLongMap!20701)

(assert (=> b!1311000 (= lt!585364 (contains!8452 (getCurrentListMap!5322 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311001 () Bool)

(assert (=> b!1311001 (= e!747903 (and e!747901 mapRes!54637))))

(declare-fun condMapEmpty!54637 () Bool)

(declare-fun mapDefault!54637 () ValueCell!16771)

