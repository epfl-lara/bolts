; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110586 () Bool)

(assert start!110586)

(declare-fun b_free!29385 () Bool)

(declare-fun b_next!29385 () Bool)

(assert (=> start!110586 (= b_free!29385 (not b_next!29385))))

(declare-fun tp!103477 () Bool)

(declare-fun b_and!47603 () Bool)

(assert (=> start!110586 (= tp!103477 b_and!47603)))

(declare-fun b!1307658 () Bool)

(declare-fun res!868093 () Bool)

(declare-fun e!746222 () Bool)

(assert (=> b!1307658 (=> (not res!868093) (not e!746222))))

(declare-datatypes ((array!87203 0))(
  ( (array!87204 (arr!42077 (Array (_ BitVec 32) (_ BitVec 64))) (size!42628 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87203)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307658 (= res!868093 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42628 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307659 () Bool)

(declare-fun res!868090 () Bool)

(assert (=> b!1307659 (=> (not res!868090) (not e!746222))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51923 0))(
  ( (V!51924 (val!17632 Int)) )
))
(declare-datatypes ((ValueCell!16659 0))(
  ( (ValueCellFull!16659 (v!20257 V!51923)) (EmptyCell!16659) )
))
(declare-datatypes ((array!87205 0))(
  ( (array!87206 (arr!42078 (Array (_ BitVec 32) ValueCell!16659)) (size!42629 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87205)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307659 (= res!868090 (and (= (size!42629 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42628 _keys!1628) (size!42629 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54301 () Bool)

(declare-fun mapRes!54301 () Bool)

(declare-fun tp!103478 () Bool)

(declare-fun e!746224 () Bool)

(assert (=> mapNonEmpty!54301 (= mapRes!54301 (and tp!103478 e!746224))))

(declare-fun mapKey!54301 () (_ BitVec 32))

(declare-fun mapRest!54301 () (Array (_ BitVec 32) ValueCell!16659))

(declare-fun mapValue!54301 () ValueCell!16659)

(assert (=> mapNonEmpty!54301 (= (arr!42078 _values!1354) (store mapRest!54301 mapKey!54301 mapValue!54301))))

(declare-fun b!1307660 () Bool)

(assert (=> b!1307660 (= e!746222 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!51923)

(declare-fun lt!585028 () Bool)

(declare-fun minValue!1296 () V!51923)

(declare-datatypes ((tuple2!22864 0))(
  ( (tuple2!22865 (_1!11442 (_ BitVec 64)) (_2!11442 V!51923)) )
))
(declare-datatypes ((List!30037 0))(
  ( (Nil!30034) (Cons!30033 (h!31242 tuple2!22864) (t!43650 List!30037)) )
))
(declare-datatypes ((ListLongMap!20533 0))(
  ( (ListLongMap!20534 (toList!10282 List!30037)) )
))
(declare-fun contains!8368 (ListLongMap!20533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5238 (array!87203 array!87205 (_ BitVec 32) (_ BitVec 32) V!51923 V!51923 (_ BitVec 32) Int) ListLongMap!20533)

(assert (=> b!1307660 (= lt!585028 (contains!8368 (getCurrentListMap!5238 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307661 () Bool)

(declare-fun res!868092 () Bool)

(assert (=> b!1307661 (=> (not res!868092) (not e!746222))))

(declare-datatypes ((List!30038 0))(
  ( (Nil!30035) (Cons!30034 (h!31243 (_ BitVec 64)) (t!43651 List!30038)) )
))
(declare-fun arrayNoDuplicates!0 (array!87203 (_ BitVec 32) List!30038) Bool)

(assert (=> b!1307661 (= res!868092 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30035))))

(declare-fun b!1307662 () Bool)

(declare-fun res!868091 () Bool)

(assert (=> b!1307662 (=> (not res!868091) (not e!746222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87203 (_ BitVec 32)) Bool)

(assert (=> b!1307662 (= res!868091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307663 () Bool)

(declare-fun tp_is_empty!35115 () Bool)

(assert (=> b!1307663 (= e!746224 tp_is_empty!35115)))

(declare-fun b!1307665 () Bool)

(declare-fun e!746221 () Bool)

(declare-fun e!746223 () Bool)

(assert (=> b!1307665 (= e!746221 (and e!746223 mapRes!54301))))

(declare-fun condMapEmpty!54301 () Bool)

(declare-fun mapDefault!54301 () ValueCell!16659)

(assert (=> b!1307665 (= condMapEmpty!54301 (= (arr!42078 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16659)) mapDefault!54301)))))

(declare-fun mapIsEmpty!54301 () Bool)

(assert (=> mapIsEmpty!54301 mapRes!54301))

(declare-fun res!868094 () Bool)

(assert (=> start!110586 (=> (not res!868094) (not e!746222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110586 (= res!868094 (validMask!0 mask!2040))))

(assert (=> start!110586 e!746222))

(assert (=> start!110586 tp!103477))

(declare-fun array_inv!31805 (array!87203) Bool)

(assert (=> start!110586 (array_inv!31805 _keys!1628)))

(assert (=> start!110586 true))

(assert (=> start!110586 tp_is_empty!35115))

(declare-fun array_inv!31806 (array!87205) Bool)

(assert (=> start!110586 (and (array_inv!31806 _values!1354) e!746221)))

(declare-fun b!1307664 () Bool)

(assert (=> b!1307664 (= e!746223 tp_is_empty!35115)))

(assert (= (and start!110586 res!868094) b!1307659))

(assert (= (and b!1307659 res!868090) b!1307662))

(assert (= (and b!1307662 res!868091) b!1307661))

(assert (= (and b!1307661 res!868092) b!1307658))

(assert (= (and b!1307658 res!868093) b!1307660))

(assert (= (and b!1307665 condMapEmpty!54301) mapIsEmpty!54301))

(assert (= (and b!1307665 (not condMapEmpty!54301)) mapNonEmpty!54301))

(get-info :version)

(assert (= (and mapNonEmpty!54301 ((_ is ValueCellFull!16659) mapValue!54301)) b!1307663))

(assert (= (and b!1307665 ((_ is ValueCellFull!16659) mapDefault!54301)) b!1307664))

(assert (= start!110586 b!1307665))

(declare-fun m!1198285 () Bool)

(assert (=> b!1307660 m!1198285))

(assert (=> b!1307660 m!1198285))

(declare-fun m!1198287 () Bool)

(assert (=> b!1307660 m!1198287))

(declare-fun m!1198289 () Bool)

(assert (=> start!110586 m!1198289))

(declare-fun m!1198291 () Bool)

(assert (=> start!110586 m!1198291))

(declare-fun m!1198293 () Bool)

(assert (=> start!110586 m!1198293))

(declare-fun m!1198295 () Bool)

(assert (=> b!1307661 m!1198295))

(declare-fun m!1198297 () Bool)

(assert (=> b!1307662 m!1198297))

(declare-fun m!1198299 () Bool)

(assert (=> mapNonEmpty!54301 m!1198299))

(check-sat (not b!1307660) b_and!47603 (not b!1307662) (not b!1307661) (not b_next!29385) (not mapNonEmpty!54301) tp_is_empty!35115 (not start!110586))
(check-sat b_and!47603 (not b_next!29385))
