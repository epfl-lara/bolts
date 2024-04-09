; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20642 () Bool)

(assert start!20642)

(declare-fun b_free!5289 () Bool)

(declare-fun b_next!5289 () Bool)

(assert (=> start!20642 (= b_free!5289 (not b_next!5289))))

(declare-fun tp!18898 () Bool)

(declare-fun b_and!12053 () Bool)

(assert (=> start!20642 (= tp!18898 b_and!12053)))

(declare-fun b!205804 () Bool)

(declare-fun res!99557 () Bool)

(declare-fun e!134566 () Bool)

(assert (=> b!205804 (=> (not res!99557) (not e!134566))))

(declare-datatypes ((array!9500 0))(
  ( (array!9501 (arr!4500 (Array (_ BitVec 32) (_ BitVec 64))) (size!4825 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9500)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9500 (_ BitVec 32)) Bool)

(assert (=> b!205804 (= res!99557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205805 () Bool)

(declare-fun res!99565 () Bool)

(assert (=> b!205805 (=> (not res!99565) (not e!134566))))

(declare-datatypes ((List!2885 0))(
  ( (Nil!2882) (Cons!2881 (h!3523 (_ BitVec 64)) (t!7824 List!2885)) )
))
(declare-fun arrayNoDuplicates!0 (array!9500 (_ BitVec 32) List!2885) Bool)

(assert (=> b!205805 (= res!99565 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2882))))

(declare-fun b!205806 () Bool)

(declare-fun e!134565 () Bool)

(declare-fun tp_is_empty!5145 () Bool)

(assert (=> b!205806 (= e!134565 tp_is_empty!5145)))

(declare-fun res!99563 () Bool)

(assert (=> start!20642 (=> (not res!99563) (not e!134566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20642 (= res!99563 (validMask!0 mask!1149))))

(assert (=> start!20642 e!134566))

(declare-datatypes ((V!6507 0))(
  ( (V!6508 (val!2617 Int)) )
))
(declare-datatypes ((ValueCell!2229 0))(
  ( (ValueCellFull!2229 (v!4583 V!6507)) (EmptyCell!2229) )
))
(declare-datatypes ((array!9502 0))(
  ( (array!9503 (arr!4501 (Array (_ BitVec 32) ValueCell!2229)) (size!4826 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9502)

(declare-fun e!134568 () Bool)

(declare-fun array_inv!2965 (array!9502) Bool)

(assert (=> start!20642 (and (array_inv!2965 _values!649) e!134568)))

(assert (=> start!20642 true))

(assert (=> start!20642 tp_is_empty!5145))

(declare-fun array_inv!2966 (array!9500) Bool)

(assert (=> start!20642 (array_inv!2966 _keys!825)))

(assert (=> start!20642 tp!18898))

(declare-fun b!205807 () Bool)

(declare-fun res!99560 () Bool)

(assert (=> b!205807 (=> (not res!99560) (not e!134566))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205807 (= res!99560 (= (select (arr!4500 _keys!825) i!601) k0!843))))

(declare-fun b!205808 () Bool)

(declare-fun e!134569 () Bool)

(assert (=> b!205808 (= e!134569 true)))

(declare-datatypes ((tuple2!3966 0))(
  ( (tuple2!3967 (_1!1993 (_ BitVec 64)) (_2!1993 V!6507)) )
))
(declare-datatypes ((List!2886 0))(
  ( (Nil!2883) (Cons!2882 (h!3524 tuple2!3966) (t!7825 List!2886)) )
))
(declare-datatypes ((ListLongMap!2893 0))(
  ( (ListLongMap!2894 (toList!1462 List!2886)) )
))
(declare-fun lt!105009 () ListLongMap!2893)

(declare-fun lt!105012 () ListLongMap!2893)

(declare-fun lt!105007 () tuple2!3966)

(declare-fun +!479 (ListLongMap!2893 tuple2!3966) ListLongMap!2893)

(assert (=> b!205808 (= lt!105009 (+!479 lt!105012 lt!105007))))

(declare-datatypes ((Unit!6255 0))(
  ( (Unit!6256) )
))
(declare-fun lt!105004 () Unit!6255)

(declare-fun lt!105005 () ListLongMap!2893)

(declare-fun minValue!615 () V!6507)

(declare-fun v!520 () V!6507)

(declare-fun addCommutativeForDiffKeys!178 (ListLongMap!2893 (_ BitVec 64) V!6507 (_ BitVec 64) V!6507) Unit!6255)

(assert (=> b!205808 (= lt!105004 (addCommutativeForDiffKeys!178 lt!105005 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8786 () Bool)

(declare-fun mapRes!8786 () Bool)

(declare-fun tp!18899 () Bool)

(declare-fun e!134567 () Bool)

(assert (=> mapNonEmpty!8786 (= mapRes!8786 (and tp!18899 e!134567))))

(declare-fun mapKey!8786 () (_ BitVec 32))

(declare-fun mapValue!8786 () ValueCell!2229)

(declare-fun mapRest!8786 () (Array (_ BitVec 32) ValueCell!2229))

(assert (=> mapNonEmpty!8786 (= (arr!4501 _values!649) (store mapRest!8786 mapKey!8786 mapValue!8786))))

(declare-fun b!205809 () Bool)

(declare-fun res!99562 () Bool)

(assert (=> b!205809 (=> (not res!99562) (not e!134566))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205809 (= res!99562 (and (= (size!4826 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4825 _keys!825) (size!4826 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205810 () Bool)

(assert (=> b!205810 (= e!134567 tp_is_empty!5145)))

(declare-fun mapIsEmpty!8786 () Bool)

(assert (=> mapIsEmpty!8786 mapRes!8786))

(declare-fun b!205811 () Bool)

(assert (=> b!205811 (= e!134568 (and e!134565 mapRes!8786))))

(declare-fun condMapEmpty!8786 () Bool)

(declare-fun mapDefault!8786 () ValueCell!2229)

(assert (=> b!205811 (= condMapEmpty!8786 (= (arr!4501 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2229)) mapDefault!8786)))))

(declare-fun b!205812 () Bool)

(declare-fun e!134564 () Bool)

(assert (=> b!205812 (= e!134566 (not e!134564))))

(declare-fun res!99559 () Bool)

(assert (=> b!205812 (=> res!99559 e!134564)))

(assert (=> b!205812 (= res!99559 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!105013 () ListLongMap!2893)

(declare-fun zeroValue!615 () V!6507)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1027 (array!9500 array!9502 (_ BitVec 32) (_ BitVec 32) V!6507 V!6507 (_ BitVec 32) Int) ListLongMap!2893)

(assert (=> b!205812 (= lt!105013 (getCurrentListMap!1027 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105003 () ListLongMap!2893)

(declare-fun lt!105011 () array!9502)

(assert (=> b!205812 (= lt!105003 (getCurrentListMap!1027 _keys!825 lt!105011 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105002 () ListLongMap!2893)

(declare-fun lt!105006 () ListLongMap!2893)

(assert (=> b!205812 (and (= lt!105002 lt!105006) (= lt!105006 lt!105002))))

(assert (=> b!205812 (= lt!105006 (+!479 lt!105005 lt!105007))))

(assert (=> b!205812 (= lt!105007 (tuple2!3967 k0!843 v!520))))

(declare-fun lt!105008 () Unit!6255)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!140 (array!9500 array!9502 (_ BitVec 32) (_ BitVec 32) V!6507 V!6507 (_ BitVec 32) (_ BitVec 64) V!6507 (_ BitVec 32) Int) Unit!6255)

(assert (=> b!205812 (= lt!105008 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!140 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!398 (array!9500 array!9502 (_ BitVec 32) (_ BitVec 32) V!6507 V!6507 (_ BitVec 32) Int) ListLongMap!2893)

(assert (=> b!205812 (= lt!105002 (getCurrentListMapNoExtraKeys!398 _keys!825 lt!105011 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205812 (= lt!105011 (array!9503 (store (arr!4501 _values!649) i!601 (ValueCellFull!2229 v!520)) (size!4826 _values!649)))))

(assert (=> b!205812 (= lt!105005 (getCurrentListMapNoExtraKeys!398 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205813 () Bool)

(declare-fun res!99561 () Bool)

(assert (=> b!205813 (=> (not res!99561) (not e!134566))))

(assert (=> b!205813 (= res!99561 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4825 _keys!825))))))

(declare-fun b!205814 () Bool)

(assert (=> b!205814 (= e!134564 e!134569)))

(declare-fun res!99564 () Bool)

(assert (=> b!205814 (=> res!99564 e!134569)))

(assert (=> b!205814 (= res!99564 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!205814 (= lt!105013 lt!105012)))

(declare-fun lt!105010 () tuple2!3966)

(assert (=> b!205814 (= lt!105012 (+!479 lt!105005 lt!105010))))

(assert (=> b!205814 (= lt!105003 lt!105009)))

(assert (=> b!205814 (= lt!105009 (+!479 lt!105006 lt!105010))))

(assert (=> b!205814 (= lt!105003 (+!479 lt!105002 lt!105010))))

(assert (=> b!205814 (= lt!105010 (tuple2!3967 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205815 () Bool)

(declare-fun res!99558 () Bool)

(assert (=> b!205815 (=> (not res!99558) (not e!134566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205815 (= res!99558 (validKeyInArray!0 k0!843))))

(assert (= (and start!20642 res!99563) b!205809))

(assert (= (and b!205809 res!99562) b!205804))

(assert (= (and b!205804 res!99557) b!205805))

(assert (= (and b!205805 res!99565) b!205813))

(assert (= (and b!205813 res!99561) b!205815))

(assert (= (and b!205815 res!99558) b!205807))

(assert (= (and b!205807 res!99560) b!205812))

(assert (= (and b!205812 (not res!99559)) b!205814))

(assert (= (and b!205814 (not res!99564)) b!205808))

(assert (= (and b!205811 condMapEmpty!8786) mapIsEmpty!8786))

(assert (= (and b!205811 (not condMapEmpty!8786)) mapNonEmpty!8786))

(get-info :version)

(assert (= (and mapNonEmpty!8786 ((_ is ValueCellFull!2229) mapValue!8786)) b!205810))

(assert (= (and b!205811 ((_ is ValueCellFull!2229) mapDefault!8786)) b!205806))

(assert (= start!20642 b!205811))

(declare-fun m!233497 () Bool)

(assert (=> b!205814 m!233497))

(declare-fun m!233499 () Bool)

(assert (=> b!205814 m!233499))

(declare-fun m!233501 () Bool)

(assert (=> b!205814 m!233501))

(declare-fun m!233503 () Bool)

(assert (=> start!20642 m!233503))

(declare-fun m!233505 () Bool)

(assert (=> start!20642 m!233505))

(declare-fun m!233507 () Bool)

(assert (=> start!20642 m!233507))

(declare-fun m!233509 () Bool)

(assert (=> b!205805 m!233509))

(declare-fun m!233511 () Bool)

(assert (=> b!205804 m!233511))

(declare-fun m!233513 () Bool)

(assert (=> b!205808 m!233513))

(declare-fun m!233515 () Bool)

(assert (=> b!205808 m!233515))

(declare-fun m!233517 () Bool)

(assert (=> mapNonEmpty!8786 m!233517))

(declare-fun m!233519 () Bool)

(assert (=> b!205812 m!233519))

(declare-fun m!233521 () Bool)

(assert (=> b!205812 m!233521))

(declare-fun m!233523 () Bool)

(assert (=> b!205812 m!233523))

(declare-fun m!233525 () Bool)

(assert (=> b!205812 m!233525))

(declare-fun m!233527 () Bool)

(assert (=> b!205812 m!233527))

(declare-fun m!233529 () Bool)

(assert (=> b!205812 m!233529))

(declare-fun m!233531 () Bool)

(assert (=> b!205812 m!233531))

(declare-fun m!233533 () Bool)

(assert (=> b!205807 m!233533))

(declare-fun m!233535 () Bool)

(assert (=> b!205815 m!233535))

(check-sat b_and!12053 (not b!205808) tp_is_empty!5145 (not b!205815) (not start!20642) (not b!205804) (not b!205814) (not b_next!5289) (not mapNonEmpty!8786) (not b!205805) (not b!205812))
(check-sat b_and!12053 (not b_next!5289))
