; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110616 () Bool)

(assert start!110616)

(declare-fun b_free!29415 () Bool)

(declare-fun b_next!29415 () Bool)

(assert (=> start!110616 (= b_free!29415 (not b_next!29415))))

(declare-fun tp!103567 () Bool)

(declare-fun b_and!47633 () Bool)

(assert (=> start!110616 (= tp!103567 b_and!47633)))

(declare-fun mapIsEmpty!54346 () Bool)

(declare-fun mapRes!54346 () Bool)

(assert (=> mapIsEmpty!54346 mapRes!54346))

(declare-fun b!1308146 () Bool)

(declare-fun res!868447 () Bool)

(declare-fun e!746450 () Bool)

(assert (=> b!1308146 (=> (not res!868447) (not e!746450))))

(declare-datatypes ((array!87257 0))(
  ( (array!87258 (arr!42104 (Array (_ BitVec 32) (_ BitVec 64))) (size!42655 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87257)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308146 (= res!868447 (validKeyInArray!0 (select (arr!42104 _keys!1628) from!2020)))))

(declare-fun b!1308147 () Bool)

(declare-fun e!746449 () Bool)

(declare-fun tp_is_empty!35145 () Bool)

(assert (=> b!1308147 (= e!746449 tp_is_empty!35145)))

(declare-fun b!1308148 () Bool)

(declare-fun res!868445 () Bool)

(assert (=> b!1308148 (=> (not res!868445) (not e!746450))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87257 (_ BitVec 32)) Bool)

(assert (=> b!1308148 (= res!868445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308149 () Bool)

(declare-fun e!746446 () Bool)

(assert (=> b!1308149 (= e!746446 tp_is_empty!35145)))

(declare-fun b!1308150 () Bool)

(declare-fun res!868446 () Bool)

(assert (=> b!1308150 (=> (not res!868446) (not e!746450))))

(declare-fun k0!1175 () (_ BitVec 64))

(assert (=> b!1308150 (= res!868446 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42655 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308151 () Bool)

(assert (=> b!1308151 (= e!746450 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((V!51963 0))(
  ( (V!51964 (val!17647 Int)) )
))
(declare-fun minValue!1296 () V!51963)

(declare-datatypes ((ValueCell!16674 0))(
  ( (ValueCellFull!16674 (v!20272 V!51963)) (EmptyCell!16674) )
))
(declare-datatypes ((array!87259 0))(
  ( (array!87260 (arr!42105 (Array (_ BitVec 32) ValueCell!16674)) (size!42656 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87259)

(declare-fun zeroValue!1296 () V!51963)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22886 0))(
  ( (tuple2!22887 (_1!11453 (_ BitVec 64)) (_2!11453 V!51963)) )
))
(declare-datatypes ((List!30057 0))(
  ( (Nil!30054) (Cons!30053 (h!31262 tuple2!22886) (t!43670 List!30057)) )
))
(declare-datatypes ((ListLongMap!20555 0))(
  ( (ListLongMap!20556 (toList!10293 List!30057)) )
))
(declare-fun contains!8379 (ListLongMap!20555 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5249 (array!87257 array!87259 (_ BitVec 32) (_ BitVec 32) V!51963 V!51963 (_ BitVec 32) Int) ListLongMap!20555)

(assert (=> b!1308151 (contains!8379 (getCurrentListMap!5249 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43236 0))(
  ( (Unit!43237) )
))
(declare-fun lt!585073 () Unit!43236)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!8 (array!87257 array!87259 (_ BitVec 32) (_ BitVec 32) V!51963 V!51963 (_ BitVec 64) (_ BitVec 32) Int) Unit!43236)

(assert (=> b!1308151 (= lt!585073 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!8 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun res!868444 () Bool)

(assert (=> start!110616 (=> (not res!868444) (not e!746450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110616 (= res!868444 (validMask!0 mask!2040))))

(assert (=> start!110616 e!746450))

(assert (=> start!110616 tp!103567))

(declare-fun array_inv!31823 (array!87257) Bool)

(assert (=> start!110616 (array_inv!31823 _keys!1628)))

(assert (=> start!110616 true))

(assert (=> start!110616 tp_is_empty!35145))

(declare-fun e!746448 () Bool)

(declare-fun array_inv!31824 (array!87259) Bool)

(assert (=> start!110616 (and (array_inv!31824 _values!1354) e!746448)))

(declare-fun b!1308152 () Bool)

(declare-fun res!868448 () Bool)

(assert (=> b!1308152 (=> (not res!868448) (not e!746450))))

(assert (=> b!1308152 (= res!868448 (not (= (select (arr!42104 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1308153 () Bool)

(declare-fun res!868450 () Bool)

(assert (=> b!1308153 (=> (not res!868450) (not e!746450))))

(declare-datatypes ((List!30058 0))(
  ( (Nil!30055) (Cons!30054 (h!31263 (_ BitVec 64)) (t!43671 List!30058)) )
))
(declare-fun arrayNoDuplicates!0 (array!87257 (_ BitVec 32) List!30058) Bool)

(assert (=> b!1308153 (= res!868450 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30055))))

(declare-fun b!1308154 () Bool)

(declare-fun res!868451 () Bool)

(assert (=> b!1308154 (=> (not res!868451) (not e!746450))))

(assert (=> b!1308154 (= res!868451 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308155 () Bool)

(declare-fun res!868443 () Bool)

(assert (=> b!1308155 (=> (not res!868443) (not e!746450))))

(assert (=> b!1308155 (= res!868443 (and (= (size!42656 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42655 _keys!1628) (size!42656 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54346 () Bool)

(declare-fun tp!103568 () Bool)

(assert (=> mapNonEmpty!54346 (= mapRes!54346 (and tp!103568 e!746449))))

(declare-fun mapValue!54346 () ValueCell!16674)

(declare-fun mapRest!54346 () (Array (_ BitVec 32) ValueCell!16674))

(declare-fun mapKey!54346 () (_ BitVec 32))

(assert (=> mapNonEmpty!54346 (= (arr!42105 _values!1354) (store mapRest!54346 mapKey!54346 mapValue!54346))))

(declare-fun b!1308156 () Bool)

(assert (=> b!1308156 (= e!746448 (and e!746446 mapRes!54346))))

(declare-fun condMapEmpty!54346 () Bool)

(declare-fun mapDefault!54346 () ValueCell!16674)

(assert (=> b!1308156 (= condMapEmpty!54346 (= (arr!42105 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16674)) mapDefault!54346)))))

(declare-fun b!1308157 () Bool)

(declare-fun res!868449 () Bool)

(assert (=> b!1308157 (=> (not res!868449) (not e!746450))))

(assert (=> b!1308157 (= res!868449 (contains!8379 (getCurrentListMap!5249 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110616 res!868444) b!1308155))

(assert (= (and b!1308155 res!868443) b!1308148))

(assert (= (and b!1308148 res!868445) b!1308153))

(assert (= (and b!1308153 res!868450) b!1308150))

(assert (= (and b!1308150 res!868446) b!1308157))

(assert (= (and b!1308157 res!868449) b!1308152))

(assert (= (and b!1308152 res!868448) b!1308146))

(assert (= (and b!1308146 res!868447) b!1308154))

(assert (= (and b!1308154 res!868451) b!1308151))

(assert (= (and b!1308156 condMapEmpty!54346) mapIsEmpty!54346))

(assert (= (and b!1308156 (not condMapEmpty!54346)) mapNonEmpty!54346))

(get-info :version)

(assert (= (and mapNonEmpty!54346 ((_ is ValueCellFull!16674) mapValue!54346)) b!1308147))

(assert (= (and b!1308156 ((_ is ValueCellFull!16674) mapDefault!54346)) b!1308149))

(assert (= start!110616 b!1308156))

(declare-fun m!1198625 () Bool)

(assert (=> b!1308146 m!1198625))

(assert (=> b!1308146 m!1198625))

(declare-fun m!1198627 () Bool)

(assert (=> b!1308146 m!1198627))

(assert (=> b!1308152 m!1198625))

(declare-fun m!1198629 () Bool)

(assert (=> b!1308148 m!1198629))

(declare-fun m!1198631 () Bool)

(assert (=> b!1308157 m!1198631))

(assert (=> b!1308157 m!1198631))

(declare-fun m!1198633 () Bool)

(assert (=> b!1308157 m!1198633))

(declare-fun m!1198635 () Bool)

(assert (=> b!1308151 m!1198635))

(assert (=> b!1308151 m!1198635))

(declare-fun m!1198637 () Bool)

(assert (=> b!1308151 m!1198637))

(declare-fun m!1198639 () Bool)

(assert (=> b!1308151 m!1198639))

(declare-fun m!1198641 () Bool)

(assert (=> mapNonEmpty!54346 m!1198641))

(declare-fun m!1198643 () Bool)

(assert (=> b!1308153 m!1198643))

(declare-fun m!1198645 () Bool)

(assert (=> start!110616 m!1198645))

(declare-fun m!1198647 () Bool)

(assert (=> start!110616 m!1198647))

(declare-fun m!1198649 () Bool)

(assert (=> start!110616 m!1198649))

(check-sat tp_is_empty!35145 (not b!1308153) (not mapNonEmpty!54346) (not b!1308157) (not b!1308151) b_and!47633 (not b_next!29415) (not b!1308148) (not b!1308146) (not start!110616))
(check-sat b_and!47633 (not b_next!29415))
