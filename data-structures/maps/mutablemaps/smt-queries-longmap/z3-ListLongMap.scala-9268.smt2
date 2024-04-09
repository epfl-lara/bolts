; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110994 () Bool)

(assert start!110994)

(declare-fun b_free!29793 () Bool)

(declare-fun b_next!29793 () Bool)

(assert (=> start!110994 (= b_free!29793 (not b_next!29793))))

(declare-fun tp!104701 () Bool)

(declare-fun b_and!48011 () Bool)

(assert (=> start!110994 (= tp!104701 b_and!48011)))

(declare-fun mapNonEmpty!54913 () Bool)

(declare-fun mapRes!54913 () Bool)

(declare-fun tp!104702 () Bool)

(declare-fun e!749284 () Bool)

(assert (=> mapNonEmpty!54913 (= mapRes!54913 (and tp!104702 e!749284))))

(declare-fun mapKey!54913 () (_ BitVec 32))

(declare-datatypes ((V!52467 0))(
  ( (V!52468 (val!17836 Int)) )
))
(declare-datatypes ((ValueCell!16863 0))(
  ( (ValueCellFull!16863 (v!20461 V!52467)) (EmptyCell!16863) )
))
(declare-fun mapValue!54913 () ValueCell!16863)

(declare-datatypes ((array!87987 0))(
  ( (array!87988 (arr!42469 (Array (_ BitVec 32) ValueCell!16863)) (size!43020 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87987)

(declare-fun mapRest!54913 () (Array (_ BitVec 32) ValueCell!16863))

(assert (=> mapNonEmpty!54913 (= (arr!42469 _values!1354) (store mapRest!54913 mapKey!54913 mapValue!54913))))

(declare-fun b!1313553 () Bool)

(declare-fun res!872151 () Bool)

(declare-fun e!749282 () Bool)

(assert (=> b!1313553 (=> (not res!872151) (not e!749282))))

(declare-datatypes ((array!87989 0))(
  ( (array!87990 (arr!42470 (Array (_ BitVec 32) (_ BitVec 64))) (size!43021 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87989)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87989 (_ BitVec 32)) Bool)

(assert (=> b!1313553 (= res!872151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313554 () Bool)

(declare-fun e!749283 () Bool)

(declare-fun e!749281 () Bool)

(assert (=> b!1313554 (= e!749283 (and e!749281 mapRes!54913))))

(declare-fun condMapEmpty!54913 () Bool)

(declare-fun mapDefault!54913 () ValueCell!16863)

(assert (=> b!1313554 (= condMapEmpty!54913 (= (arr!42469 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16863)) mapDefault!54913)))))

(declare-fun b!1313555 () Bool)

(declare-fun tp_is_empty!35523 () Bool)

(assert (=> b!1313555 (= e!749281 tp_is_empty!35523)))

(declare-fun b!1313556 () Bool)

(declare-fun res!872149 () Bool)

(assert (=> b!1313556 (=> (not res!872149) (not e!749282))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1313556 (= res!872149 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43021 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!872153 () Bool)

(assert (=> start!110994 (=> (not res!872153) (not e!749282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110994 (= res!872153 (validMask!0 mask!2040))))

(assert (=> start!110994 e!749282))

(assert (=> start!110994 tp!104701))

(declare-fun array_inv!32061 (array!87989) Bool)

(assert (=> start!110994 (array_inv!32061 _keys!1628)))

(assert (=> start!110994 true))

(assert (=> start!110994 tp_is_empty!35523))

(declare-fun array_inv!32062 (array!87987) Bool)

(assert (=> start!110994 (and (array_inv!32062 _values!1354) e!749283)))

(declare-fun mapIsEmpty!54913 () Bool)

(assert (=> mapIsEmpty!54913 mapRes!54913))

(declare-fun b!1313557 () Bool)

(declare-fun res!872150 () Bool)

(assert (=> b!1313557 (=> (not res!872150) (not e!749282))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313557 (= res!872150 (and (= (size!43020 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43021 _keys!1628) (size!43020 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313558 () Bool)

(assert (=> b!1313558 (= e!749282 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!52467)

(declare-fun lt!585631 () Bool)

(declare-fun minValue!1296 () V!52467)

(declare-datatypes ((tuple2!23166 0))(
  ( (tuple2!23167 (_1!11593 (_ BitVec 64)) (_2!11593 V!52467)) )
))
(declare-datatypes ((List!30330 0))(
  ( (Nil!30327) (Cons!30326 (h!31535 tuple2!23166) (t!43943 List!30330)) )
))
(declare-datatypes ((ListLongMap!20835 0))(
  ( (ListLongMap!20836 (toList!10433 List!30330)) )
))
(declare-fun contains!8519 (ListLongMap!20835 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5389 (array!87989 array!87987 (_ BitVec 32) (_ BitVec 32) V!52467 V!52467 (_ BitVec 32) Int) ListLongMap!20835)

(assert (=> b!1313558 (= lt!585631 (contains!8519 (getCurrentListMap!5389 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1313559 () Bool)

(declare-fun res!872152 () Bool)

(assert (=> b!1313559 (=> (not res!872152) (not e!749282))))

(declare-datatypes ((List!30331 0))(
  ( (Nil!30328) (Cons!30327 (h!31536 (_ BitVec 64)) (t!43944 List!30331)) )
))
(declare-fun arrayNoDuplicates!0 (array!87989 (_ BitVec 32) List!30331) Bool)

(assert (=> b!1313559 (= res!872152 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30328))))

(declare-fun b!1313560 () Bool)

(assert (=> b!1313560 (= e!749284 tp_is_empty!35523)))

(assert (= (and start!110994 res!872153) b!1313557))

(assert (= (and b!1313557 res!872150) b!1313553))

(assert (= (and b!1313553 res!872151) b!1313559))

(assert (= (and b!1313559 res!872152) b!1313556))

(assert (= (and b!1313556 res!872149) b!1313558))

(assert (= (and b!1313554 condMapEmpty!54913) mapIsEmpty!54913))

(assert (= (and b!1313554 (not condMapEmpty!54913)) mapNonEmpty!54913))

(get-info :version)

(assert (= (and mapNonEmpty!54913 ((_ is ValueCellFull!16863) mapValue!54913)) b!1313560))

(assert (= (and b!1313554 ((_ is ValueCellFull!16863) mapDefault!54913)) b!1313555))

(assert (= start!110994 b!1313554))

(declare-fun m!1202371 () Bool)

(assert (=> b!1313553 m!1202371))

(declare-fun m!1202373 () Bool)

(assert (=> b!1313558 m!1202373))

(assert (=> b!1313558 m!1202373))

(declare-fun m!1202375 () Bool)

(assert (=> b!1313558 m!1202375))

(declare-fun m!1202377 () Bool)

(assert (=> b!1313559 m!1202377))

(declare-fun m!1202379 () Bool)

(assert (=> start!110994 m!1202379))

(declare-fun m!1202381 () Bool)

(assert (=> start!110994 m!1202381))

(declare-fun m!1202383 () Bool)

(assert (=> start!110994 m!1202383))

(declare-fun m!1202385 () Bool)

(assert (=> mapNonEmpty!54913 m!1202385))

(check-sat b_and!48011 (not b!1313553) (not b!1313558) (not start!110994) tp_is_empty!35523 (not b_next!29793) (not mapNonEmpty!54913) (not b!1313559))
(check-sat b_and!48011 (not b_next!29793))
