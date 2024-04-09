; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110832 () Bool)

(assert start!110832)

(declare-fun b_free!29631 () Bool)

(declare-fun b_next!29631 () Bool)

(assert (=> start!110832 (= b_free!29631 (not b_next!29631))))

(declare-fun tp!104215 () Bool)

(declare-fun b_and!47849 () Bool)

(assert (=> start!110832 (= tp!104215 b_and!47849)))

(declare-fun b!1311258 () Bool)

(declare-fun res!870585 () Bool)

(declare-fun e!748066 () Bool)

(assert (=> b!1311258 (=> (not res!870585) (not e!748066))))

(declare-datatypes ((array!87673 0))(
  ( (array!87674 (arr!42312 (Array (_ BitVec 32) (_ BitVec 64))) (size!42863 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87673)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311258 (= res!870585 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42863 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!870583 () Bool)

(assert (=> start!110832 (=> (not res!870583) (not e!748066))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110832 (= res!870583 (validMask!0 mask!2040))))

(assert (=> start!110832 e!748066))

(assert (=> start!110832 tp!104215))

(declare-fun array_inv!31959 (array!87673) Bool)

(assert (=> start!110832 (array_inv!31959 _keys!1628)))

(assert (=> start!110832 true))

(declare-fun tp_is_empty!35361 () Bool)

(assert (=> start!110832 tp_is_empty!35361))

(declare-datatypes ((V!52251 0))(
  ( (V!52252 (val!17755 Int)) )
))
(declare-datatypes ((ValueCell!16782 0))(
  ( (ValueCellFull!16782 (v!20380 V!52251)) (EmptyCell!16782) )
))
(declare-datatypes ((array!87675 0))(
  ( (array!87676 (arr!42313 (Array (_ BitVec 32) ValueCell!16782)) (size!42864 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87675)

(declare-fun e!748070 () Bool)

(declare-fun array_inv!31960 (array!87675) Bool)

(assert (=> start!110832 (and (array_inv!31960 _values!1354) e!748070)))

(declare-fun mapIsEmpty!54670 () Bool)

(declare-fun mapRes!54670 () Bool)

(assert (=> mapIsEmpty!54670 mapRes!54670))

(declare-fun b!1311259 () Bool)

(assert (=> b!1311259 (= e!748066 false)))

(declare-fun minValue!1296 () V!52251)

(declare-fun zeroValue!1296 () V!52251)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585397 () Bool)

(declare-datatypes ((tuple2!23048 0))(
  ( (tuple2!23049 (_1!11534 (_ BitVec 64)) (_2!11534 V!52251)) )
))
(declare-datatypes ((List!30214 0))(
  ( (Nil!30211) (Cons!30210 (h!31419 tuple2!23048) (t!43827 List!30214)) )
))
(declare-datatypes ((ListLongMap!20717 0))(
  ( (ListLongMap!20718 (toList!10374 List!30214)) )
))
(declare-fun contains!8460 (ListLongMap!20717 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5330 (array!87673 array!87675 (_ BitVec 32) (_ BitVec 32) V!52251 V!52251 (_ BitVec 32) Int) ListLongMap!20717)

(assert (=> b!1311259 (= lt!585397 (contains!8460 (getCurrentListMap!5330 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311260 () Bool)

(declare-fun e!748067 () Bool)

(assert (=> b!1311260 (= e!748070 (and e!748067 mapRes!54670))))

(declare-fun condMapEmpty!54670 () Bool)

(declare-fun mapDefault!54670 () ValueCell!16782)

(assert (=> b!1311260 (= condMapEmpty!54670 (= (arr!42313 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16782)) mapDefault!54670)))))

(declare-fun b!1311261 () Bool)

(declare-fun e!748069 () Bool)

(assert (=> b!1311261 (= e!748069 tp_is_empty!35361)))

(declare-fun b!1311262 () Bool)

(assert (=> b!1311262 (= e!748067 tp_is_empty!35361)))

(declare-fun b!1311263 () Bool)

(declare-fun res!870586 () Bool)

(assert (=> b!1311263 (=> (not res!870586) (not e!748066))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87673 (_ BitVec 32)) Bool)

(assert (=> b!1311263 (= res!870586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311264 () Bool)

(declare-fun res!870587 () Bool)

(assert (=> b!1311264 (=> (not res!870587) (not e!748066))))

(assert (=> b!1311264 (= res!870587 (and (= (size!42864 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42863 _keys!1628) (size!42864 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311265 () Bool)

(declare-fun res!870584 () Bool)

(assert (=> b!1311265 (=> (not res!870584) (not e!748066))))

(declare-datatypes ((List!30215 0))(
  ( (Nil!30212) (Cons!30211 (h!31420 (_ BitVec 64)) (t!43828 List!30215)) )
))
(declare-fun arrayNoDuplicates!0 (array!87673 (_ BitVec 32) List!30215) Bool)

(assert (=> b!1311265 (= res!870584 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30212))))

(declare-fun mapNonEmpty!54670 () Bool)

(declare-fun tp!104216 () Bool)

(assert (=> mapNonEmpty!54670 (= mapRes!54670 (and tp!104216 e!748069))))

(declare-fun mapValue!54670 () ValueCell!16782)

(declare-fun mapKey!54670 () (_ BitVec 32))

(declare-fun mapRest!54670 () (Array (_ BitVec 32) ValueCell!16782))

(assert (=> mapNonEmpty!54670 (= (arr!42313 _values!1354) (store mapRest!54670 mapKey!54670 mapValue!54670))))

(assert (= (and start!110832 res!870583) b!1311264))

(assert (= (and b!1311264 res!870587) b!1311263))

(assert (= (and b!1311263 res!870586) b!1311265))

(assert (= (and b!1311265 res!870584) b!1311258))

(assert (= (and b!1311258 res!870585) b!1311259))

(assert (= (and b!1311260 condMapEmpty!54670) mapIsEmpty!54670))

(assert (= (and b!1311260 (not condMapEmpty!54670)) mapNonEmpty!54670))

(get-info :version)

(assert (= (and mapNonEmpty!54670 ((_ is ValueCellFull!16782) mapValue!54670)) b!1311261))

(assert (= (and b!1311260 ((_ is ValueCellFull!16782) mapDefault!54670)) b!1311262))

(assert (= start!110832 b!1311260))

(declare-fun m!1200793 () Bool)

(assert (=> b!1311265 m!1200793))

(declare-fun m!1200795 () Bool)

(assert (=> b!1311259 m!1200795))

(assert (=> b!1311259 m!1200795))

(declare-fun m!1200797 () Bool)

(assert (=> b!1311259 m!1200797))

(declare-fun m!1200799 () Bool)

(assert (=> start!110832 m!1200799))

(declare-fun m!1200801 () Bool)

(assert (=> start!110832 m!1200801))

(declare-fun m!1200803 () Bool)

(assert (=> start!110832 m!1200803))

(declare-fun m!1200805 () Bool)

(assert (=> b!1311263 m!1200805))

(declare-fun m!1200807 () Bool)

(assert (=> mapNonEmpty!54670 m!1200807))

(check-sat (not b!1311265) (not start!110832) (not b_next!29631) (not b!1311259) (not mapNonEmpty!54670) b_and!47849 (not b!1311263) tp_is_empty!35361)
(check-sat b_and!47849 (not b_next!29631))
