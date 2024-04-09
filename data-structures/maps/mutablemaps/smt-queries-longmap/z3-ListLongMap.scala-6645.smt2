; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83872 () Bool)

(assert start!83872)

(declare-fun b_free!19653 () Bool)

(declare-fun b_next!19653 () Bool)

(assert (=> start!83872 (= b_free!19653 (not b_next!19653))))

(declare-fun tp!68402 () Bool)

(declare-fun b_and!31413 () Bool)

(assert (=> start!83872 (= tp!68402 b_and!31413)))

(declare-fun b!979321 () Bool)

(declare-fun e!552077 () Bool)

(declare-fun e!552080 () Bool)

(declare-fun mapRes!35999 () Bool)

(assert (=> b!979321 (= e!552077 (and e!552080 mapRes!35999))))

(declare-fun condMapEmpty!35999 () Bool)

(declare-datatypes ((V!35179 0))(
  ( (V!35180 (val!11374 Int)) )
))
(declare-datatypes ((ValueCell!10842 0))(
  ( (ValueCellFull!10842 (v!13936 V!35179)) (EmptyCell!10842) )
))
(declare-datatypes ((array!61307 0))(
  ( (array!61308 (arr!29507 (Array (_ BitVec 32) ValueCell!10842)) (size!29987 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61307)

(declare-fun mapDefault!35999 () ValueCell!10842)

(assert (=> b!979321 (= condMapEmpty!35999 (= (arr!29507 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10842)) mapDefault!35999)))))

(declare-fun b!979322 () Bool)

(declare-fun tp_is_empty!22647 () Bool)

(assert (=> b!979322 (= e!552080 tp_is_empty!22647)))

(declare-fun mapIsEmpty!35999 () Bool)

(assert (=> mapIsEmpty!35999 mapRes!35999))

(declare-fun b!979323 () Bool)

(declare-fun res!655505 () Bool)

(declare-fun e!552075 () Bool)

(assert (=> b!979323 (=> (not res!655505) (not e!552075))))

(declare-datatypes ((array!61309 0))(
  ( (array!61310 (arr!29508 (Array (_ BitVec 32) (_ BitVec 64))) (size!29988 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61309)

(declare-datatypes ((List!20581 0))(
  ( (Nil!20578) (Cons!20577 (h!21739 (_ BitVec 64)) (t!29198 List!20581)) )
))
(declare-fun arrayNoDuplicates!0 (array!61309 (_ BitVec 32) List!20581) Bool)

(assert (=> b!979323 (= res!655505 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20578))))

(declare-fun b!979324 () Bool)

(declare-fun e!552078 () Bool)

(assert (=> b!979324 (= e!552075 (not e!552078))))

(declare-fun res!655503 () Bool)

(assert (=> b!979324 (=> res!655503 e!552078)))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979324 (= res!655503 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29508 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14686 0))(
  ( (tuple2!14687 (_1!7353 (_ BitVec 64)) (_2!7353 V!35179)) )
))
(declare-datatypes ((List!20582 0))(
  ( (Nil!20579) (Cons!20578 (h!21740 tuple2!14686) (t!29199 List!20582)) )
))
(declare-datatypes ((ListLongMap!13397 0))(
  ( (ListLongMap!13398 (toList!6714 List!20582)) )
))
(declare-fun lt!434429 () ListLongMap!13397)

(declare-fun lt!434433 () ListLongMap!13397)

(declare-fun lt!434434 () tuple2!14686)

(declare-fun lt!434427 () tuple2!14686)

(declare-fun +!2920 (ListLongMap!13397 tuple2!14686) ListLongMap!13397)

(assert (=> b!979324 (= (+!2920 lt!434433 lt!434434) (+!2920 lt!434429 lt!434427))))

(declare-fun lt!434426 () ListLongMap!13397)

(assert (=> b!979324 (= lt!434429 (+!2920 lt!434426 lt!434434))))

(declare-fun lt!434425 () V!35179)

(assert (=> b!979324 (= lt!434434 (tuple2!14687 (select (arr!29508 _keys!1544) from!1932) lt!434425))))

(assert (=> b!979324 (= lt!434433 (+!2920 lt!434426 lt!434427))))

(declare-fun minValue!1220 () V!35179)

(assert (=> b!979324 (= lt!434427 (tuple2!14687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32515 0))(
  ( (Unit!32516) )
))
(declare-fun lt!434428 () Unit!32515)

(declare-fun addCommutativeForDiffKeys!582 (ListLongMap!13397 (_ BitVec 64) V!35179 (_ BitVec 64) V!35179) Unit!32515)

(assert (=> b!979324 (= lt!434428 (addCommutativeForDiffKeys!582 lt!434426 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29508 _keys!1544) from!1932) lt!434425))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15305 (ValueCell!10842 V!35179) V!35179)

(declare-fun dynLambda!1756 (Int (_ BitVec 64)) V!35179)

(assert (=> b!979324 (= lt!434425 (get!15305 (select (arr!29507 _values!1278) from!1932) (dynLambda!1756 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434431 () ListLongMap!13397)

(declare-fun lt!434430 () tuple2!14686)

(assert (=> b!979324 (= lt!434426 (+!2920 lt!434431 lt!434430))))

(declare-fun zeroValue!1220 () V!35179)

(assert (=> b!979324 (= lt!434430 (tuple2!14687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3381 (array!61309 array!61307 (_ BitVec 32) (_ BitVec 32) V!35179 V!35179 (_ BitVec 32) Int) ListLongMap!13397)

(assert (=> b!979324 (= lt!434431 (getCurrentListMapNoExtraKeys!3381 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979326 () Bool)

(declare-fun e!552079 () Bool)

(assert (=> b!979326 (= e!552079 tp_is_empty!22647)))

(declare-fun b!979327 () Bool)

(declare-fun res!655501 () Bool)

(assert (=> b!979327 (=> (not res!655501) (not e!552075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61309 (_ BitVec 32)) Bool)

(assert (=> b!979327 (= res!655501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979328 () Bool)

(declare-fun res!655500 () Bool)

(assert (=> b!979328 (=> (not res!655500) (not e!552075))))

(assert (=> b!979328 (= res!655500 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!35999 () Bool)

(declare-fun tp!68401 () Bool)

(assert (=> mapNonEmpty!35999 (= mapRes!35999 (and tp!68401 e!552079))))

(declare-fun mapKey!35999 () (_ BitVec 32))

(declare-fun mapValue!35999 () ValueCell!10842)

(declare-fun mapRest!35999 () (Array (_ BitVec 32) ValueCell!10842))

(assert (=> mapNonEmpty!35999 (= (arr!29507 _values!1278) (store mapRest!35999 mapKey!35999 mapValue!35999))))

(declare-fun b!979325 () Bool)

(declare-fun res!655502 () Bool)

(assert (=> b!979325 (=> (not res!655502) (not e!552075))))

(assert (=> b!979325 (= res!655502 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29988 _keys!1544))))))

(declare-fun res!655506 () Bool)

(assert (=> start!83872 (=> (not res!655506) (not e!552075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83872 (= res!655506 (validMask!0 mask!1948))))

(assert (=> start!83872 e!552075))

(assert (=> start!83872 true))

(assert (=> start!83872 tp_is_empty!22647))

(declare-fun array_inv!22707 (array!61307) Bool)

(assert (=> start!83872 (and (array_inv!22707 _values!1278) e!552077)))

(assert (=> start!83872 tp!68402))

(declare-fun array_inv!22708 (array!61309) Bool)

(assert (=> start!83872 (array_inv!22708 _keys!1544)))

(declare-fun b!979329 () Bool)

(declare-fun res!655504 () Bool)

(assert (=> b!979329 (=> (not res!655504) (not e!552075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979329 (= res!655504 (validKeyInArray!0 (select (arr!29508 _keys!1544) from!1932)))))

(declare-fun b!979330 () Bool)

(declare-fun res!655499 () Bool)

(assert (=> b!979330 (=> (not res!655499) (not e!552075))))

(assert (=> b!979330 (= res!655499 (and (= (size!29987 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29988 _keys!1544) (size!29987 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979331 () Bool)

(assert (=> b!979331 (= e!552078 true)))

(assert (=> b!979331 (= lt!434429 (+!2920 (+!2920 lt!434431 lt!434434) lt!434430))))

(declare-fun lt!434432 () Unit!32515)

(assert (=> b!979331 (= lt!434432 (addCommutativeForDiffKeys!582 lt!434431 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29508 _keys!1544) from!1932) lt!434425))))

(assert (= (and start!83872 res!655506) b!979330))

(assert (= (and b!979330 res!655499) b!979327))

(assert (= (and b!979327 res!655501) b!979323))

(assert (= (and b!979323 res!655505) b!979325))

(assert (= (and b!979325 res!655502) b!979329))

(assert (= (and b!979329 res!655504) b!979328))

(assert (= (and b!979328 res!655500) b!979324))

(assert (= (and b!979324 (not res!655503)) b!979331))

(assert (= (and b!979321 condMapEmpty!35999) mapIsEmpty!35999))

(assert (= (and b!979321 (not condMapEmpty!35999)) mapNonEmpty!35999))

(get-info :version)

(assert (= (and mapNonEmpty!35999 ((_ is ValueCellFull!10842) mapValue!35999)) b!979326))

(assert (= (and b!979321 ((_ is ValueCellFull!10842) mapDefault!35999)) b!979322))

(assert (= start!83872 b!979321))

(declare-fun b_lambda!14727 () Bool)

(assert (=> (not b_lambda!14727) (not b!979324)))

(declare-fun t!29197 () Bool)

(declare-fun tb!6467 () Bool)

(assert (=> (and start!83872 (= defaultEntry!1281 defaultEntry!1281) t!29197) tb!6467))

(declare-fun result!12915 () Bool)

(assert (=> tb!6467 (= result!12915 tp_is_empty!22647)))

(assert (=> b!979324 t!29197))

(declare-fun b_and!31415 () Bool)

(assert (= b_and!31413 (and (=> t!29197 result!12915) b_and!31415)))

(declare-fun m!906743 () Bool)

(assert (=> b!979323 m!906743))

(declare-fun m!906745 () Bool)

(assert (=> b!979331 m!906745))

(assert (=> b!979331 m!906745))

(declare-fun m!906747 () Bool)

(assert (=> b!979331 m!906747))

(declare-fun m!906749 () Bool)

(assert (=> b!979331 m!906749))

(assert (=> b!979331 m!906749))

(declare-fun m!906751 () Bool)

(assert (=> b!979331 m!906751))

(declare-fun m!906753 () Bool)

(assert (=> b!979327 m!906753))

(assert (=> b!979329 m!906749))

(assert (=> b!979329 m!906749))

(declare-fun m!906755 () Bool)

(assert (=> b!979329 m!906755))

(declare-fun m!906757 () Bool)

(assert (=> b!979324 m!906757))

(declare-fun m!906759 () Bool)

(assert (=> b!979324 m!906759))

(assert (=> b!979324 m!906749))

(declare-fun m!906761 () Bool)

(assert (=> b!979324 m!906761))

(declare-fun m!906763 () Bool)

(assert (=> b!979324 m!906763))

(declare-fun m!906765 () Bool)

(assert (=> b!979324 m!906765))

(declare-fun m!906767 () Bool)

(assert (=> b!979324 m!906767))

(declare-fun m!906769 () Bool)

(assert (=> b!979324 m!906769))

(assert (=> b!979324 m!906749))

(declare-fun m!906771 () Bool)

(assert (=> b!979324 m!906771))

(declare-fun m!906773 () Bool)

(assert (=> b!979324 m!906773))

(assert (=> b!979324 m!906759))

(assert (=> b!979324 m!906773))

(declare-fun m!906775 () Bool)

(assert (=> b!979324 m!906775))

(declare-fun m!906777 () Bool)

(assert (=> start!83872 m!906777))

(declare-fun m!906779 () Bool)

(assert (=> start!83872 m!906779))

(declare-fun m!906781 () Bool)

(assert (=> start!83872 m!906781))

(declare-fun m!906783 () Bool)

(assert (=> mapNonEmpty!35999 m!906783))

(check-sat (not b!979324) (not b!979323) (not b!979329) (not mapNonEmpty!35999) (not b_lambda!14727) (not b!979327) (not b!979331) b_and!31415 tp_is_empty!22647 (not b_next!19653) (not start!83872))
(check-sat b_and!31415 (not b_next!19653))
