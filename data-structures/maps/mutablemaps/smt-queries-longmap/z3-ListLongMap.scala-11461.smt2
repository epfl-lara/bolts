; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133598 () Bool)

(assert start!133598)

(declare-fun b_free!31983 () Bool)

(declare-fun b_next!31983 () Bool)

(assert (=> start!133598 (= b_free!31983 (not b_next!31983))))

(declare-fun tp!113074 () Bool)

(declare-fun b_and!51487 () Bool)

(assert (=> start!133598 (= tp!113074 b_and!51487)))

(declare-fun b!1561402 () Bool)

(declare-fun e!870148 () Bool)

(declare-fun tp_is_empty!38649 () Bool)

(assert (=> b!1561402 (= e!870148 tp_is_empty!38649)))

(declare-fun b!1561403 () Bool)

(declare-fun res!1067691 () Bool)

(declare-fun e!870149 () Bool)

(assert (=> b!1561403 (=> (not res!1067691) (not e!870149))))

(declare-datatypes ((array!103969 0))(
  ( (array!103970 (arr!50172 (Array (_ BitVec 32) (_ BitVec 64))) (size!50723 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103969)

(declare-datatypes ((List!36594 0))(
  ( (Nil!36591) (Cons!36590 (h!38037 (_ BitVec 64)) (t!51374 List!36594)) )
))
(declare-fun arrayNoDuplicates!0 (array!103969 (_ BitVec 32) List!36594) Bool)

(assert (=> b!1561403 (= res!1067691 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36591))))

(declare-fun mapIsEmpty!59349 () Bool)

(declare-fun mapRes!59349 () Bool)

(assert (=> mapIsEmpty!59349 mapRes!59349))

(declare-fun b!1561404 () Bool)

(assert (=> b!1561404 (= e!870149 (not true))))

(declare-datatypes ((V!59739 0))(
  ( (V!59740 (val!19408 Int)) )
))
(declare-datatypes ((tuple2!25218 0))(
  ( (tuple2!25219 (_1!12619 (_ BitVec 64)) (_2!12619 V!59739)) )
))
(declare-datatypes ((List!36595 0))(
  ( (Nil!36592) (Cons!36591 (h!38038 tuple2!25218) (t!51375 List!36595)) )
))
(declare-datatypes ((ListLongMap!22665 0))(
  ( (ListLongMap!22666 (toList!11348 List!36595)) )
))
(declare-fun lt!671163 () ListLongMap!22665)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671161 () V!59739)

(declare-fun contains!10268 (ListLongMap!22665 (_ BitVec 64)) Bool)

(declare-fun +!5003 (ListLongMap!22665 tuple2!25218) ListLongMap!22665)

(assert (=> b!1561404 (not (contains!10268 (+!5003 lt!671163 (tuple2!25219 (select (arr!50172 _keys!637) from!782) lt!671161)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51870 0))(
  ( (Unit!51871) )
))
(declare-fun lt!671162 () Unit!51870)

(declare-fun addStillNotContains!539 (ListLongMap!22665 (_ BitVec 64) V!59739 (_ BitVec 64)) Unit!51870)

(assert (=> b!1561404 (= lt!671162 (addStillNotContains!539 lt!671163 (select (arr!50172 _keys!637) from!782) lt!671161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18294 0))(
  ( (ValueCellFull!18294 (v!22157 V!59739)) (EmptyCell!18294) )
))
(declare-datatypes ((array!103971 0))(
  ( (array!103972 (arr!50173 (Array (_ BitVec 32) ValueCell!18294)) (size!50724 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103971)

(declare-fun get!26237 (ValueCell!18294 V!59739) V!59739)

(declare-fun dynLambda!3892 (Int (_ BitVec 64)) V!59739)

(assert (=> b!1561404 (= lt!671161 (get!26237 (select (arr!50173 _values!487) from!782) (dynLambda!3892 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59739)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59739)

(declare-fun getCurrentListMapNoExtraKeys!6709 (array!103969 array!103971 (_ BitVec 32) (_ BitVec 32) V!59739 V!59739 (_ BitVec 32) Int) ListLongMap!22665)

(assert (=> b!1561404 (= lt!671163 (getCurrentListMapNoExtraKeys!6709 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1561405 () Bool)

(declare-fun res!1067694 () Bool)

(assert (=> b!1561405 (=> (not res!1067694) (not e!870149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1561405 (= res!1067694 (validKeyInArray!0 (select (arr!50172 _keys!637) from!782)))))

(declare-fun b!1561406 () Bool)

(declare-fun e!870151 () Bool)

(assert (=> b!1561406 (= e!870151 tp_is_empty!38649)))

(declare-fun b!1561407 () Bool)

(declare-fun res!1067696 () Bool)

(assert (=> b!1561407 (=> (not res!1067696) (not e!870149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103969 (_ BitVec 32)) Bool)

(assert (=> b!1561407 (= res!1067696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1561408 () Bool)

(declare-fun res!1067693 () Bool)

(assert (=> b!1561408 (=> (not res!1067693) (not e!870149))))

(assert (=> b!1561408 (= res!1067693 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50723 _keys!637)) (bvslt from!782 (size!50723 _keys!637))))))

(declare-fun res!1067695 () Bool)

(assert (=> start!133598 (=> (not res!1067695) (not e!870149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133598 (= res!1067695 (validMask!0 mask!947))))

(assert (=> start!133598 e!870149))

(assert (=> start!133598 tp!113074))

(assert (=> start!133598 tp_is_empty!38649))

(assert (=> start!133598 true))

(declare-fun array_inv!38929 (array!103969) Bool)

(assert (=> start!133598 (array_inv!38929 _keys!637)))

(declare-fun e!870152 () Bool)

(declare-fun array_inv!38930 (array!103971) Bool)

(assert (=> start!133598 (and (array_inv!38930 _values!487) e!870152)))

(declare-fun mapNonEmpty!59349 () Bool)

(declare-fun tp!113073 () Bool)

(assert (=> mapNonEmpty!59349 (= mapRes!59349 (and tp!113073 e!870151))))

(declare-fun mapRest!59349 () (Array (_ BitVec 32) ValueCell!18294))

(declare-fun mapKey!59349 () (_ BitVec 32))

(declare-fun mapValue!59349 () ValueCell!18294)

(assert (=> mapNonEmpty!59349 (= (arr!50173 _values!487) (store mapRest!59349 mapKey!59349 mapValue!59349))))

(declare-fun b!1561409 () Bool)

(declare-fun res!1067692 () Bool)

(assert (=> b!1561409 (=> (not res!1067692) (not e!870149))))

(assert (=> b!1561409 (= res!1067692 (and (= (size!50724 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50723 _keys!637) (size!50724 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1561410 () Bool)

(assert (=> b!1561410 (= e!870152 (and e!870148 mapRes!59349))))

(declare-fun condMapEmpty!59349 () Bool)

(declare-fun mapDefault!59349 () ValueCell!18294)

(assert (=> b!1561410 (= condMapEmpty!59349 (= (arr!50173 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18294)) mapDefault!59349)))))

(assert (= (and start!133598 res!1067695) b!1561409))

(assert (= (and b!1561409 res!1067692) b!1561407))

(assert (= (and b!1561407 res!1067696) b!1561403))

(assert (= (and b!1561403 res!1067691) b!1561408))

(assert (= (and b!1561408 res!1067693) b!1561405))

(assert (= (and b!1561405 res!1067694) b!1561404))

(assert (= (and b!1561410 condMapEmpty!59349) mapIsEmpty!59349))

(assert (= (and b!1561410 (not condMapEmpty!59349)) mapNonEmpty!59349))

(get-info :version)

(assert (= (and mapNonEmpty!59349 ((_ is ValueCellFull!18294) mapValue!59349)) b!1561406))

(assert (= (and b!1561410 ((_ is ValueCellFull!18294) mapDefault!59349)) b!1561402))

(assert (= start!133598 b!1561410))

(declare-fun b_lambda!24867 () Bool)

(assert (=> (not b_lambda!24867) (not b!1561404)))

(declare-fun t!51373 () Bool)

(declare-fun tb!12535 () Bool)

(assert (=> (and start!133598 (= defaultEntry!495 defaultEntry!495) t!51373) tb!12535))

(declare-fun result!26343 () Bool)

(assert (=> tb!12535 (= result!26343 tp_is_empty!38649)))

(assert (=> b!1561404 t!51373))

(declare-fun b_and!51489 () Bool)

(assert (= b_and!51487 (and (=> t!51373 result!26343) b_and!51489)))

(declare-fun m!1437133 () Bool)

(assert (=> mapNonEmpty!59349 m!1437133))

(declare-fun m!1437135 () Bool)

(assert (=> start!133598 m!1437135))

(declare-fun m!1437137 () Bool)

(assert (=> start!133598 m!1437137))

(declare-fun m!1437139 () Bool)

(assert (=> start!133598 m!1437139))

(declare-fun m!1437141 () Bool)

(assert (=> b!1561407 m!1437141))

(declare-fun m!1437143 () Bool)

(assert (=> b!1561404 m!1437143))

(declare-fun m!1437145 () Bool)

(assert (=> b!1561404 m!1437145))

(declare-fun m!1437147 () Bool)

(assert (=> b!1561404 m!1437147))

(declare-fun m!1437149 () Bool)

(assert (=> b!1561404 m!1437149))

(declare-fun m!1437151 () Bool)

(assert (=> b!1561404 m!1437151))

(assert (=> b!1561404 m!1437149))

(declare-fun m!1437153 () Bool)

(assert (=> b!1561404 m!1437153))

(declare-fun m!1437155 () Bool)

(assert (=> b!1561404 m!1437155))

(assert (=> b!1561404 m!1437145))

(declare-fun m!1437157 () Bool)

(assert (=> b!1561404 m!1437157))

(assert (=> b!1561404 m!1437143))

(assert (=> b!1561404 m!1437153))

(declare-fun m!1437159 () Bool)

(assert (=> b!1561403 m!1437159))

(assert (=> b!1561405 m!1437149))

(assert (=> b!1561405 m!1437149))

(declare-fun m!1437161 () Bool)

(assert (=> b!1561405 m!1437161))

(check-sat (not b!1561405) (not b_lambda!24867) (not b_next!31983) (not mapNonEmpty!59349) (not b!1561404) tp_is_empty!38649 (not start!133598) b_and!51489 (not b!1561407) (not b!1561403))
(check-sat b_and!51489 (not b_next!31983))
