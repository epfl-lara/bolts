; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110676 () Bool)

(assert start!110676)

(declare-fun b_free!29475 () Bool)

(declare-fun b_next!29475 () Bool)

(assert (=> start!110676 (= b_free!29475 (not b_next!29475))))

(declare-fun tp!103747 () Bool)

(declare-fun b_and!47693 () Bool)

(assert (=> start!110676 (= tp!103747 b_and!47693)))

(declare-fun b!1309062 () Bool)

(declare-fun e!746898 () Bool)

(declare-fun tp_is_empty!35205 () Bool)

(assert (=> b!1309062 (= e!746898 tp_is_empty!35205)))

(declare-fun res!869092 () Bool)

(declare-fun e!746897 () Bool)

(assert (=> start!110676 (=> (not res!869092) (not e!746897))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110676 (= res!869092 (validMask!0 mask!2040))))

(assert (=> start!110676 e!746897))

(assert (=> start!110676 tp!103747))

(declare-datatypes ((array!87373 0))(
  ( (array!87374 (arr!42162 (Array (_ BitVec 32) (_ BitVec 64))) (size!42713 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87373)

(declare-fun array_inv!31867 (array!87373) Bool)

(assert (=> start!110676 (array_inv!31867 _keys!1628)))

(assert (=> start!110676 true))

(assert (=> start!110676 tp_is_empty!35205))

(declare-datatypes ((V!52043 0))(
  ( (V!52044 (val!17677 Int)) )
))
(declare-datatypes ((ValueCell!16704 0))(
  ( (ValueCellFull!16704 (v!20302 V!52043)) (EmptyCell!16704) )
))
(declare-datatypes ((array!87375 0))(
  ( (array!87376 (arr!42163 (Array (_ BitVec 32) ValueCell!16704)) (size!42714 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87375)

(declare-fun e!746900 () Bool)

(declare-fun array_inv!31868 (array!87375) Bool)

(assert (=> start!110676 (and (array_inv!31868 _values!1354) e!746900)))

(declare-fun b!1309063 () Bool)

(declare-fun res!869090 () Bool)

(assert (=> b!1309063 (=> (not res!869090) (not e!746897))))

(declare-datatypes ((List!30099 0))(
  ( (Nil!30096) (Cons!30095 (h!31304 (_ BitVec 64)) (t!43712 List!30099)) )
))
(declare-fun arrayNoDuplicates!0 (array!87373 (_ BitVec 32) List!30099) Bool)

(assert (=> b!1309063 (= res!869090 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30096))))

(declare-fun mapNonEmpty!54436 () Bool)

(declare-fun mapRes!54436 () Bool)

(declare-fun tp!103748 () Bool)

(declare-fun e!746899 () Bool)

(assert (=> mapNonEmpty!54436 (= mapRes!54436 (and tp!103748 e!746899))))

(declare-fun mapRest!54436 () (Array (_ BitVec 32) ValueCell!16704))

(declare-fun mapKey!54436 () (_ BitVec 32))

(declare-fun mapValue!54436 () ValueCell!16704)

(assert (=> mapNonEmpty!54436 (= (arr!42163 _values!1354) (store mapRest!54436 mapKey!54436 mapValue!54436))))

(declare-fun b!1309064 () Bool)

(declare-fun res!869089 () Bool)

(assert (=> b!1309064 (=> (not res!869089) (not e!746897))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309064 (= res!869089 (and (= (size!42714 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42713 _keys!1628) (size!42714 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309065 () Bool)

(declare-fun res!869091 () Bool)

(assert (=> b!1309065 (=> (not res!869091) (not e!746897))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1309065 (= res!869091 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42713 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54436 () Bool)

(assert (=> mapIsEmpty!54436 mapRes!54436))

(declare-fun b!1309066 () Bool)

(assert (=> b!1309066 (= e!746900 (and e!746898 mapRes!54436))))

(declare-fun condMapEmpty!54436 () Bool)

(declare-fun mapDefault!54436 () ValueCell!16704)

(assert (=> b!1309066 (= condMapEmpty!54436 (= (arr!42163 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16704)) mapDefault!54436)))))

(declare-fun b!1309067 () Bool)

(declare-fun res!869093 () Bool)

(assert (=> b!1309067 (=> (not res!869093) (not e!746897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87373 (_ BitVec 32)) Bool)

(assert (=> b!1309067 (= res!869093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309068 () Bool)

(assert (=> b!1309068 (= e!746899 tp_is_empty!35205)))

(declare-fun b!1309069 () Bool)

(assert (=> b!1309069 (= e!746897 false)))

(declare-fun lt!585163 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52043)

(declare-fun zeroValue!1296 () V!52043)

(declare-datatypes ((tuple2!22928 0))(
  ( (tuple2!22929 (_1!11474 (_ BitVec 64)) (_2!11474 V!52043)) )
))
(declare-datatypes ((List!30100 0))(
  ( (Nil!30097) (Cons!30096 (h!31305 tuple2!22928) (t!43713 List!30100)) )
))
(declare-datatypes ((ListLongMap!20597 0))(
  ( (ListLongMap!20598 (toList!10314 List!30100)) )
))
(declare-fun contains!8400 (ListLongMap!20597 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5270 (array!87373 array!87375 (_ BitVec 32) (_ BitVec 32) V!52043 V!52043 (_ BitVec 32) Int) ListLongMap!20597)

(assert (=> b!1309069 (= lt!585163 (contains!8400 (getCurrentListMap!5270 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110676 res!869092) b!1309064))

(assert (= (and b!1309064 res!869089) b!1309067))

(assert (= (and b!1309067 res!869093) b!1309063))

(assert (= (and b!1309063 res!869090) b!1309065))

(assert (= (and b!1309065 res!869091) b!1309069))

(assert (= (and b!1309066 condMapEmpty!54436) mapIsEmpty!54436))

(assert (= (and b!1309066 (not condMapEmpty!54436)) mapNonEmpty!54436))

(get-info :version)

(assert (= (and mapNonEmpty!54436 ((_ is ValueCellFull!16704) mapValue!54436)) b!1309068))

(assert (= (and b!1309066 ((_ is ValueCellFull!16704) mapDefault!54436)) b!1309062))

(assert (= start!110676 b!1309066))

(declare-fun m!1199275 () Bool)

(assert (=> start!110676 m!1199275))

(declare-fun m!1199277 () Bool)

(assert (=> start!110676 m!1199277))

(declare-fun m!1199279 () Bool)

(assert (=> start!110676 m!1199279))

(declare-fun m!1199281 () Bool)

(assert (=> mapNonEmpty!54436 m!1199281))

(declare-fun m!1199283 () Bool)

(assert (=> b!1309063 m!1199283))

(declare-fun m!1199285 () Bool)

(assert (=> b!1309067 m!1199285))

(declare-fun m!1199287 () Bool)

(assert (=> b!1309069 m!1199287))

(assert (=> b!1309069 m!1199287))

(declare-fun m!1199289 () Bool)

(assert (=> b!1309069 m!1199289))

(check-sat (not mapNonEmpty!54436) (not b!1309067) b_and!47693 tp_is_empty!35205 (not b!1309063) (not start!110676) (not b_next!29475) (not b!1309069))
(check-sat b_and!47693 (not b_next!29475))
