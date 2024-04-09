; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84274 () Bool)

(assert start!84274)

(declare-fun b_free!19947 () Bool)

(declare-fun b_next!19947 () Bool)

(assert (=> start!84274 (= b_free!19947 (not b_next!19947))))

(declare-fun tp!69446 () Bool)

(declare-fun b_and!31989 () Bool)

(assert (=> start!84274 (= tp!69446 b_and!31989)))

(declare-fun b!985462 () Bool)

(declare-fun e!555517 () Bool)

(declare-fun tp_is_empty!23049 () Bool)

(assert (=> b!985462 (= e!555517 tp_is_empty!23049)))

(declare-fun mapIsEmpty!36602 () Bool)

(declare-fun mapRes!36602 () Bool)

(assert (=> mapIsEmpty!36602 mapRes!36602))

(declare-fun b!985463 () Bool)

(declare-fun res!659552 () Bool)

(declare-fun e!555515 () Bool)

(assert (=> b!985463 (=> (not res!659552) (not e!555515))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62063 0))(
  ( (array!62064 (arr!29885 (Array (_ BitVec 32) (_ BitVec 64))) (size!30365 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62063)

(assert (=> b!985463 (= res!659552 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30365 _keys!1544))))))

(declare-fun mapNonEmpty!36602 () Bool)

(declare-fun tp!69445 () Bool)

(declare-fun e!555514 () Bool)

(assert (=> mapNonEmpty!36602 (= mapRes!36602 (and tp!69445 e!555514))))

(declare-fun mapKey!36602 () (_ BitVec 32))

(declare-datatypes ((V!35715 0))(
  ( (V!35716 (val!11575 Int)) )
))
(declare-datatypes ((ValueCell!11043 0))(
  ( (ValueCellFull!11043 (v!14137 V!35715)) (EmptyCell!11043) )
))
(declare-datatypes ((array!62065 0))(
  ( (array!62066 (arr!29886 (Array (_ BitVec 32) ValueCell!11043)) (size!30366 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62065)

(declare-fun mapRest!36602 () (Array (_ BitVec 32) ValueCell!11043))

(declare-fun mapValue!36602 () ValueCell!11043)

(assert (=> mapNonEmpty!36602 (= (arr!29886 _values!1278) (store mapRest!36602 mapKey!36602 mapValue!36602))))

(declare-fun res!659549 () Bool)

(assert (=> start!84274 (=> (not res!659549) (not e!555515))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84274 (= res!659549 (validMask!0 mask!1948))))

(assert (=> start!84274 e!555515))

(assert (=> start!84274 true))

(assert (=> start!84274 tp_is_empty!23049))

(declare-fun e!555513 () Bool)

(declare-fun array_inv!22965 (array!62065) Bool)

(assert (=> start!84274 (and (array_inv!22965 _values!1278) e!555513)))

(assert (=> start!84274 tp!69446))

(declare-fun array_inv!22966 (array!62063) Bool)

(assert (=> start!84274 (array_inv!22966 _keys!1544)))

(declare-fun b!985464 () Bool)

(declare-fun res!659555 () Bool)

(assert (=> b!985464 (=> (not res!659555) (not e!555515))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62063 (_ BitVec 32)) Bool)

(assert (=> b!985464 (= res!659555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985465 () Bool)

(declare-fun e!555516 () Bool)

(assert (=> b!985465 (= e!555516 (not true))))

(declare-datatypes ((tuple2!14910 0))(
  ( (tuple2!14911 (_1!7465 (_ BitVec 64)) (_2!7465 V!35715)) )
))
(declare-datatypes ((List!20828 0))(
  ( (Nil!20825) (Cons!20824 (h!21986 tuple2!14910) (t!29727 List!20828)) )
))
(declare-datatypes ((ListLongMap!13621 0))(
  ( (ListLongMap!13622 (toList!6826 List!20828)) )
))
(declare-fun lt!437266 () ListLongMap!13621)

(declare-fun lt!437264 () tuple2!14910)

(declare-fun lt!437265 () tuple2!14910)

(declare-fun +!3014 (ListLongMap!13621 tuple2!14910) ListLongMap!13621)

(assert (=> b!985465 (= (+!3014 (+!3014 lt!437266 lt!437264) lt!437265) (+!3014 (+!3014 lt!437266 lt!437265) lt!437264))))

(declare-fun lt!437262 () V!35715)

(assert (=> b!985465 (= lt!437265 (tuple2!14911 (select (arr!29885 _keys!1544) from!1932) lt!437262))))

(declare-fun minValue!1220 () V!35715)

(assert (=> b!985465 (= lt!437264 (tuple2!14911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32703 0))(
  ( (Unit!32704) )
))
(declare-fun lt!437263 () Unit!32703)

(declare-fun addCommutativeForDiffKeys!676 (ListLongMap!13621 (_ BitVec 64) V!35715 (_ BitVec 64) V!35715) Unit!32703)

(assert (=> b!985465 (= lt!437263 (addCommutativeForDiffKeys!676 lt!437266 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29885 _keys!1544) from!1932) lt!437262))))

(declare-fun b!985466 () Bool)

(assert (=> b!985466 (= e!555513 (and e!555517 mapRes!36602))))

(declare-fun condMapEmpty!36602 () Bool)

(declare-fun mapDefault!36602 () ValueCell!11043)

(assert (=> b!985466 (= condMapEmpty!36602 (= (arr!29886 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11043)) mapDefault!36602)))))

(declare-fun b!985467 () Bool)

(declare-fun res!659551 () Bool)

(assert (=> b!985467 (=> (not res!659551) (not e!555515))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985467 (= res!659551 (and (= (size!30366 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30365 _keys!1544) (size!30366 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985468 () Bool)

(declare-fun res!659553 () Bool)

(assert (=> b!985468 (=> (not res!659553) (not e!555515))))

(assert (=> b!985468 (= res!659553 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985469 () Bool)

(declare-fun res!659554 () Bool)

(assert (=> b!985469 (=> (not res!659554) (not e!555515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985469 (= res!659554 (validKeyInArray!0 (select (arr!29885 _keys!1544) from!1932)))))

(declare-fun b!985470 () Bool)

(assert (=> b!985470 (= e!555515 e!555516)))

(declare-fun res!659556 () Bool)

(assert (=> b!985470 (=> (not res!659556) (not e!555516))))

(assert (=> b!985470 (= res!659556 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29885 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15535 (ValueCell!11043 V!35715) V!35715)

(declare-fun dynLambda!1852 (Int (_ BitVec 64)) V!35715)

(assert (=> b!985470 (= lt!437262 (get!15535 (select (arr!29886 _values!1278) from!1932) (dynLambda!1852 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35715)

(declare-fun getCurrentListMapNoExtraKeys!3481 (array!62063 array!62065 (_ BitVec 32) (_ BitVec 32) V!35715 V!35715 (_ BitVec 32) Int) ListLongMap!13621)

(assert (=> b!985470 (= lt!437266 (getCurrentListMapNoExtraKeys!3481 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985471 () Bool)

(assert (=> b!985471 (= e!555514 tp_is_empty!23049)))

(declare-fun b!985472 () Bool)

(declare-fun res!659550 () Bool)

(assert (=> b!985472 (=> (not res!659550) (not e!555515))))

(declare-datatypes ((List!20829 0))(
  ( (Nil!20826) (Cons!20825 (h!21987 (_ BitVec 64)) (t!29728 List!20829)) )
))
(declare-fun arrayNoDuplicates!0 (array!62063 (_ BitVec 32) List!20829) Bool)

(assert (=> b!985472 (= res!659550 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20826))))

(assert (= (and start!84274 res!659549) b!985467))

(assert (= (and b!985467 res!659551) b!985464))

(assert (= (and b!985464 res!659555) b!985472))

(assert (= (and b!985472 res!659550) b!985463))

(assert (= (and b!985463 res!659552) b!985469))

(assert (= (and b!985469 res!659554) b!985468))

(assert (= (and b!985468 res!659553) b!985470))

(assert (= (and b!985470 res!659556) b!985465))

(assert (= (and b!985466 condMapEmpty!36602) mapIsEmpty!36602))

(assert (= (and b!985466 (not condMapEmpty!36602)) mapNonEmpty!36602))

(get-info :version)

(assert (= (and mapNonEmpty!36602 ((_ is ValueCellFull!11043) mapValue!36602)) b!985471))

(assert (= (and b!985466 ((_ is ValueCellFull!11043) mapDefault!36602)) b!985462))

(assert (= start!84274 b!985466))

(declare-fun b_lambda!15009 () Bool)

(assert (=> (not b_lambda!15009) (not b!985470)))

(declare-fun t!29726 () Bool)

(declare-fun tb!6749 () Bool)

(assert (=> (and start!84274 (= defaultEntry!1281 defaultEntry!1281) t!29726) tb!6749))

(declare-fun result!13479 () Bool)

(assert (=> tb!6749 (= result!13479 tp_is_empty!23049)))

(assert (=> b!985470 t!29726))

(declare-fun b_and!31991 () Bool)

(assert (= b_and!31989 (and (=> t!29726 result!13479) b_and!31991)))

(declare-fun m!912621 () Bool)

(assert (=> b!985465 m!912621))

(declare-fun m!912623 () Bool)

(assert (=> b!985465 m!912623))

(assert (=> b!985465 m!912623))

(declare-fun m!912625 () Bool)

(assert (=> b!985465 m!912625))

(assert (=> b!985465 m!912621))

(declare-fun m!912627 () Bool)

(assert (=> b!985465 m!912627))

(declare-fun m!912629 () Bool)

(assert (=> b!985465 m!912629))

(assert (=> b!985465 m!912629))

(declare-fun m!912631 () Bool)

(assert (=> b!985465 m!912631))

(declare-fun m!912633 () Bool)

(assert (=> b!985464 m!912633))

(declare-fun m!912635 () Bool)

(assert (=> start!84274 m!912635))

(declare-fun m!912637 () Bool)

(assert (=> start!84274 m!912637))

(declare-fun m!912639 () Bool)

(assert (=> start!84274 m!912639))

(assert (=> b!985469 m!912629))

(assert (=> b!985469 m!912629))

(declare-fun m!912641 () Bool)

(assert (=> b!985469 m!912641))

(declare-fun m!912643 () Bool)

(assert (=> b!985472 m!912643))

(declare-fun m!912645 () Bool)

(assert (=> mapNonEmpty!36602 m!912645))

(assert (=> b!985470 m!912629))

(declare-fun m!912647 () Bool)

(assert (=> b!985470 m!912647))

(declare-fun m!912649 () Bool)

(assert (=> b!985470 m!912649))

(declare-fun m!912651 () Bool)

(assert (=> b!985470 m!912651))

(assert (=> b!985470 m!912647))

(assert (=> b!985470 m!912651))

(declare-fun m!912653 () Bool)

(assert (=> b!985470 m!912653))

(check-sat (not start!84274) b_and!31991 (not b!985469) (not b!985472) (not b!985464) (not b_lambda!15009) (not b!985465) (not b_next!19947) (not b!985470) tp_is_empty!23049 (not mapNonEmpty!36602))
(check-sat b_and!31991 (not b_next!19947))
