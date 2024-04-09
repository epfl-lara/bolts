; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84280 () Bool)

(assert start!84280)

(declare-fun b_free!19953 () Bool)

(declare-fun b_next!19953 () Bool)

(assert (=> start!84280 (= b_free!19953 (not b_next!19953))))

(declare-fun tp!69464 () Bool)

(declare-fun b_and!32001 () Bool)

(assert (=> start!84280 (= tp!69464 b_and!32001)))

(declare-fun b!985567 () Bool)

(declare-fun res!659627 () Bool)

(declare-fun e!555567 () Bool)

(assert (=> b!985567 (=> (not res!659627) (not e!555567))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35723 0))(
  ( (V!35724 (val!11578 Int)) )
))
(declare-datatypes ((ValueCell!11046 0))(
  ( (ValueCellFull!11046 (v!14140 V!35723)) (EmptyCell!11046) )
))
(declare-datatypes ((array!62075 0))(
  ( (array!62076 (arr!29891 (Array (_ BitVec 32) ValueCell!11046)) (size!30371 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62075)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62077 0))(
  ( (array!62078 (arr!29892 (Array (_ BitVec 32) (_ BitVec 64))) (size!30372 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62077)

(assert (=> b!985567 (= res!659627 (and (= (size!30371 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30372 _keys!1544) (size!30371 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985568 () Bool)

(declare-fun res!659628 () Bool)

(assert (=> b!985568 (=> (not res!659628) (not e!555567))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985568 (= res!659628 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30372 _keys!1544))))))

(declare-fun b!985570 () Bool)

(declare-fun res!659624 () Bool)

(assert (=> b!985570 (=> (not res!659624) (not e!555567))))

(assert (=> b!985570 (= res!659624 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985571 () Bool)

(declare-fun res!659621 () Bool)

(assert (=> b!985571 (=> (not res!659621) (not e!555567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985571 (= res!659621 (validKeyInArray!0 (select (arr!29892 _keys!1544) from!1932)))))

(declare-fun b!985572 () Bool)

(declare-fun e!555568 () Bool)

(assert (=> b!985572 (= e!555567 e!555568)))

(declare-fun res!659623 () Bool)

(assert (=> b!985572 (=> (not res!659623) (not e!555568))))

(assert (=> b!985572 (= res!659623 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29892 _keys!1544) from!1932))))))

(declare-fun lt!437309 () V!35723)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15539 (ValueCell!11046 V!35723) V!35723)

(declare-fun dynLambda!1854 (Int (_ BitVec 64)) V!35723)

(assert (=> b!985572 (= lt!437309 (get!15539 (select (arr!29891 _values!1278) from!1932) (dynLambda!1854 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14916 0))(
  ( (tuple2!14917 (_1!7468 (_ BitVec 64)) (_2!7468 V!35723)) )
))
(declare-datatypes ((List!20833 0))(
  ( (Nil!20830) (Cons!20829 (h!21991 tuple2!14916) (t!29738 List!20833)) )
))
(declare-datatypes ((ListLongMap!13627 0))(
  ( (ListLongMap!13628 (toList!6829 List!20833)) )
))
(declare-fun lt!437310 () ListLongMap!13627)

(declare-fun minValue!1220 () V!35723)

(declare-fun zeroValue!1220 () V!35723)

(declare-fun getCurrentListMapNoExtraKeys!3483 (array!62077 array!62075 (_ BitVec 32) (_ BitVec 32) V!35723 V!35723 (_ BitVec 32) Int) ListLongMap!13627)

(assert (=> b!985572 (= lt!437310 (getCurrentListMapNoExtraKeys!3483 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985573 () Bool)

(declare-fun e!555569 () Bool)

(declare-fun tp_is_empty!23055 () Bool)

(assert (=> b!985573 (= e!555569 tp_is_empty!23055)))

(declare-fun mapIsEmpty!36611 () Bool)

(declare-fun mapRes!36611 () Bool)

(assert (=> mapIsEmpty!36611 mapRes!36611))

(declare-fun b!985574 () Bool)

(declare-fun res!659625 () Bool)

(assert (=> b!985574 (=> (not res!659625) (not e!555567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62077 (_ BitVec 32)) Bool)

(assert (=> b!985574 (= res!659625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985575 () Bool)

(declare-fun e!555570 () Bool)

(declare-fun e!555572 () Bool)

(assert (=> b!985575 (= e!555570 (and e!555572 mapRes!36611))))

(declare-fun condMapEmpty!36611 () Bool)

(declare-fun mapDefault!36611 () ValueCell!11046)

(assert (=> b!985575 (= condMapEmpty!36611 (= (arr!29891 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11046)) mapDefault!36611)))))

(declare-fun b!985576 () Bool)

(assert (=> b!985576 (= e!555572 tp_is_empty!23055)))

(declare-fun b!985577 () Bool)

(assert (=> b!985577 (= e!555568 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun lt!437307 () tuple2!14916)

(declare-fun lt!437308 () tuple2!14916)

(declare-fun +!3017 (ListLongMap!13627 tuple2!14916) ListLongMap!13627)

(assert (=> b!985577 (= (+!3017 (+!3017 lt!437310 lt!437307) lt!437308) (+!3017 (+!3017 lt!437310 lt!437308) lt!437307))))

(assert (=> b!985577 (= lt!437308 (tuple2!14917 (select (arr!29892 _keys!1544) from!1932) lt!437309))))

(assert (=> b!985577 (= lt!437307 (tuple2!14917 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32709 0))(
  ( (Unit!32710) )
))
(declare-fun lt!437311 () Unit!32709)

(declare-fun addCommutativeForDiffKeys!679 (ListLongMap!13627 (_ BitVec 64) V!35723 (_ BitVec 64) V!35723) Unit!32709)

(assert (=> b!985577 (= lt!437311 (addCommutativeForDiffKeys!679 lt!437310 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29892 _keys!1544) from!1932) lt!437309))))

(declare-fun mapNonEmpty!36611 () Bool)

(declare-fun tp!69463 () Bool)

(assert (=> mapNonEmpty!36611 (= mapRes!36611 (and tp!69463 e!555569))))

(declare-fun mapKey!36611 () (_ BitVec 32))

(declare-fun mapRest!36611 () (Array (_ BitVec 32) ValueCell!11046))

(declare-fun mapValue!36611 () ValueCell!11046)

(assert (=> mapNonEmpty!36611 (= (arr!29891 _values!1278) (store mapRest!36611 mapKey!36611 mapValue!36611))))

(declare-fun res!659626 () Bool)

(assert (=> start!84280 (=> (not res!659626) (not e!555567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84280 (= res!659626 (validMask!0 mask!1948))))

(assert (=> start!84280 e!555567))

(assert (=> start!84280 true))

(assert (=> start!84280 tp_is_empty!23055))

(declare-fun array_inv!22971 (array!62075) Bool)

(assert (=> start!84280 (and (array_inv!22971 _values!1278) e!555570)))

(assert (=> start!84280 tp!69464))

(declare-fun array_inv!22972 (array!62077) Bool)

(assert (=> start!84280 (array_inv!22972 _keys!1544)))

(declare-fun b!985569 () Bool)

(declare-fun res!659622 () Bool)

(assert (=> b!985569 (=> (not res!659622) (not e!555567))))

(declare-datatypes ((List!20834 0))(
  ( (Nil!20831) (Cons!20830 (h!21992 (_ BitVec 64)) (t!29739 List!20834)) )
))
(declare-fun arrayNoDuplicates!0 (array!62077 (_ BitVec 32) List!20834) Bool)

(assert (=> b!985569 (= res!659622 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20831))))

(assert (= (and start!84280 res!659626) b!985567))

(assert (= (and b!985567 res!659627) b!985574))

(assert (= (and b!985574 res!659625) b!985569))

(assert (= (and b!985569 res!659622) b!985568))

(assert (= (and b!985568 res!659628) b!985571))

(assert (= (and b!985571 res!659621) b!985570))

(assert (= (and b!985570 res!659624) b!985572))

(assert (= (and b!985572 res!659623) b!985577))

(assert (= (and b!985575 condMapEmpty!36611) mapIsEmpty!36611))

(assert (= (and b!985575 (not condMapEmpty!36611)) mapNonEmpty!36611))

(get-info :version)

(assert (= (and mapNonEmpty!36611 ((_ is ValueCellFull!11046) mapValue!36611)) b!985573))

(assert (= (and b!985575 ((_ is ValueCellFull!11046) mapDefault!36611)) b!985576))

(assert (= start!84280 b!985575))

(declare-fun b_lambda!15015 () Bool)

(assert (=> (not b_lambda!15015) (not b!985572)))

(declare-fun t!29737 () Bool)

(declare-fun tb!6755 () Bool)

(assert (=> (and start!84280 (= defaultEntry!1281 defaultEntry!1281) t!29737) tb!6755))

(declare-fun result!13491 () Bool)

(assert (=> tb!6755 (= result!13491 tp_is_empty!23055)))

(assert (=> b!985572 t!29737))

(declare-fun b_and!32003 () Bool)

(assert (= b_and!32001 (and (=> t!29737 result!13491) b_and!32003)))

(declare-fun m!912723 () Bool)

(assert (=> b!985577 m!912723))

(assert (=> b!985577 m!912723))

(declare-fun m!912725 () Bool)

(assert (=> b!985577 m!912725))

(declare-fun m!912727 () Bool)

(assert (=> b!985577 m!912727))

(assert (=> b!985577 m!912727))

(declare-fun m!912729 () Bool)

(assert (=> b!985577 m!912729))

(declare-fun m!912731 () Bool)

(assert (=> b!985577 m!912731))

(assert (=> b!985577 m!912731))

(declare-fun m!912733 () Bool)

(assert (=> b!985577 m!912733))

(assert (=> b!985572 m!912723))

(declare-fun m!912735 () Bool)

(assert (=> b!985572 m!912735))

(declare-fun m!912737 () Bool)

(assert (=> b!985572 m!912737))

(declare-fun m!912739 () Bool)

(assert (=> b!985572 m!912739))

(assert (=> b!985572 m!912735))

(assert (=> b!985572 m!912739))

(declare-fun m!912741 () Bool)

(assert (=> b!985572 m!912741))

(declare-fun m!912743 () Bool)

(assert (=> mapNonEmpty!36611 m!912743))

(assert (=> b!985571 m!912723))

(assert (=> b!985571 m!912723))

(declare-fun m!912745 () Bool)

(assert (=> b!985571 m!912745))

(declare-fun m!912747 () Bool)

(assert (=> start!84280 m!912747))

(declare-fun m!912749 () Bool)

(assert (=> start!84280 m!912749))

(declare-fun m!912751 () Bool)

(assert (=> start!84280 m!912751))

(declare-fun m!912753 () Bool)

(assert (=> b!985574 m!912753))

(declare-fun m!912755 () Bool)

(assert (=> b!985569 m!912755))

(check-sat (not start!84280) tp_is_empty!23055 b_and!32003 (not b_lambda!15015) (not b!985572) (not b!985569) (not b!985574) (not b!985577) (not mapNonEmpty!36611) (not b_next!19953) (not b!985571))
(check-sat b_and!32003 (not b_next!19953))
