; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77870 () Bool)

(assert start!77870)

(declare-fun b_free!16401 () Bool)

(declare-fun b_next!16401 () Bool)

(assert (=> start!77870 (= b_free!16401 (not b_next!16401))))

(declare-fun tp!57468 () Bool)

(declare-fun b_and!26977 () Bool)

(assert (=> start!77870 (= tp!57468 b_and!26977)))

(declare-fun b!908733 () Bool)

(declare-fun e!509362 () Bool)

(declare-fun e!509357 () Bool)

(assert (=> b!908733 (= e!509362 e!509357)))

(declare-fun res!613481 () Bool)

(assert (=> b!908733 (=> (not res!613481) (not e!509357))))

(declare-datatypes ((V!30057 0))(
  ( (V!30058 (val!9460 Int)) )
))
(declare-datatypes ((tuple2!12358 0))(
  ( (tuple2!12359 (_1!6189 (_ BitVec 64)) (_2!6189 V!30057)) )
))
(declare-datatypes ((List!18212 0))(
  ( (Nil!18209) (Cons!18208 (h!19354 tuple2!12358) (t!25793 List!18212)) )
))
(declare-datatypes ((ListLongMap!11069 0))(
  ( (ListLongMap!11070 (toList!5550 List!18212)) )
))
(declare-fun lt!409821 () ListLongMap!11069)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4557 (ListLongMap!11069 (_ BitVec 64)) Bool)

(assert (=> b!908733 (= res!613481 (contains!4557 lt!409821 k0!1033))))

(declare-datatypes ((ValueCell!8928 0))(
  ( (ValueCellFull!8928 (v!11967 V!30057)) (EmptyCell!8928) )
))
(declare-datatypes ((array!53660 0))(
  ( (array!53661 (arr!25784 (Array (_ BitVec 32) ValueCell!8928)) (size!26244 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53660)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30057)

(declare-datatypes ((array!53662 0))(
  ( (array!53663 (arr!25785 (Array (_ BitVec 32) (_ BitVec 64))) (size!26245 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53662)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30057)

(declare-fun getCurrentListMap!2780 (array!53662 array!53660 (_ BitVec 32) (_ BitVec 32) V!30057 V!30057 (_ BitVec 32) Int) ListLongMap!11069)

(assert (=> b!908733 (= lt!409821 (getCurrentListMap!2780 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908734 () Bool)

(declare-fun res!613483 () Bool)

(assert (=> b!908734 (=> (not res!613483) (not e!509357))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908734 (= res!613483 (inRange!0 i!717 mask!1756))))

(declare-fun b!908735 () Bool)

(declare-fun e!509359 () Bool)

(assert (=> b!908735 (= e!509359 (bvsle #b00000000000000000000000000000000 (size!26245 _keys!1386)))))

(declare-fun lt!409825 () V!30057)

(declare-fun apply!522 (ListLongMap!11069 (_ BitVec 64)) V!30057)

(assert (=> b!908735 (= (apply!522 lt!409821 k0!1033) lt!409825)))

(declare-datatypes ((Unit!30819 0))(
  ( (Unit!30820) )
))
(declare-fun lt!409822 () Unit!30819)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!64 (array!53662 array!53660 (_ BitVec 32) (_ BitVec 32) V!30057 V!30057 (_ BitVec 64) V!30057 (_ BitVec 32) Int) Unit!30819)

(assert (=> b!908735 (= lt!409822 (lemmaListMapApplyFromThenApplyFromZero!64 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409825 i!717 defaultEntry!1160))))

(declare-fun b!908736 () Bool)

(declare-fun e!509358 () Bool)

(declare-fun e!509356 () Bool)

(declare-fun mapRes!29944 () Bool)

(assert (=> b!908736 (= e!509358 (and e!509356 mapRes!29944))))

(declare-fun condMapEmpty!29944 () Bool)

(declare-fun mapDefault!29944 () ValueCell!8928)

(assert (=> b!908736 (= condMapEmpty!29944 (= (arr!25784 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8928)) mapDefault!29944)))))

(declare-fun b!908737 () Bool)

(declare-fun res!613484 () Bool)

(assert (=> b!908737 (=> (not res!613484) (not e!509357))))

(assert (=> b!908737 (= res!613484 (and (= (select (arr!25785 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908738 () Bool)

(declare-fun res!613477 () Bool)

(assert (=> b!908738 (=> (not res!613477) (not e!509362))))

(assert (=> b!908738 (= res!613477 (and (= (size!26244 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26245 _keys!1386) (size!26244 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!908739 () Bool)

(declare-fun e!509363 () Bool)

(declare-fun tp_is_empty!18819 () Bool)

(assert (=> b!908739 (= e!509363 tp_is_empty!18819)))

(declare-fun b!908740 () Bool)

(declare-fun res!613478 () Bool)

(assert (=> b!908740 (=> (not res!613478) (not e!509362))))

(declare-datatypes ((List!18213 0))(
  ( (Nil!18210) (Cons!18209 (h!19355 (_ BitVec 64)) (t!25794 List!18213)) )
))
(declare-fun arrayNoDuplicates!0 (array!53662 (_ BitVec 32) List!18213) Bool)

(assert (=> b!908740 (= res!613478 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18210))))

(declare-fun b!908741 () Bool)

(declare-fun res!613486 () Bool)

(assert (=> b!908741 (=> (not res!613486) (not e!509362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53662 (_ BitVec 32)) Bool)

(assert (=> b!908741 (= res!613486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!613479 () Bool)

(assert (=> start!77870 (=> (not res!613479) (not e!509362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77870 (= res!613479 (validMask!0 mask!1756))))

(assert (=> start!77870 e!509362))

(declare-fun array_inv!20162 (array!53660) Bool)

(assert (=> start!77870 (and (array_inv!20162 _values!1152) e!509358)))

(assert (=> start!77870 tp!57468))

(assert (=> start!77870 true))

(assert (=> start!77870 tp_is_empty!18819))

(declare-fun array_inv!20163 (array!53662) Bool)

(assert (=> start!77870 (array_inv!20163 _keys!1386)))

(declare-fun mapIsEmpty!29944 () Bool)

(assert (=> mapIsEmpty!29944 mapRes!29944))

(declare-fun b!908742 () Bool)

(assert (=> b!908742 (= e!509356 tp_is_empty!18819)))

(declare-fun b!908743 () Bool)

(declare-fun res!613482 () Bool)

(assert (=> b!908743 (=> res!613482 e!509359)))

(declare-fun lt!409824 () ListLongMap!11069)

(assert (=> b!908743 (= res!613482 (not (= (apply!522 lt!409824 k0!1033) lt!409825)))))

(declare-fun b!908744 () Bool)

(declare-fun e!509360 () Bool)

(assert (=> b!908744 (= e!509357 (not e!509360))))

(declare-fun res!613485 () Bool)

(assert (=> b!908744 (=> res!613485 e!509360)))

(assert (=> b!908744 (= res!613485 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26245 _keys!1386))))))

(declare-fun get!13592 (ValueCell!8928 V!30057) V!30057)

(declare-fun dynLambda!1389 (Int (_ BitVec 64)) V!30057)

(assert (=> b!908744 (= lt!409825 (get!13592 (select (arr!25784 _values!1152) i!717) (dynLambda!1389 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908744 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409823 () Unit!30819)

(declare-fun lemmaKeyInListMapIsInArray!262 (array!53662 array!53660 (_ BitVec 32) (_ BitVec 32) V!30057 V!30057 (_ BitVec 64) Int) Unit!30819)

(assert (=> b!908744 (= lt!409823 (lemmaKeyInListMapIsInArray!262 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!908745 () Bool)

(assert (=> b!908745 (= e!509360 e!509359)))

(declare-fun res!613480 () Bool)

(assert (=> b!908745 (=> res!613480 e!509359)))

(assert (=> b!908745 (= res!613480 (not (contains!4557 lt!409824 k0!1033)))))

(assert (=> b!908745 (= lt!409824 (getCurrentListMap!2780 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapNonEmpty!29944 () Bool)

(declare-fun tp!57469 () Bool)

(assert (=> mapNonEmpty!29944 (= mapRes!29944 (and tp!57469 e!509363))))

(declare-fun mapRest!29944 () (Array (_ BitVec 32) ValueCell!8928))

(declare-fun mapValue!29944 () ValueCell!8928)

(declare-fun mapKey!29944 () (_ BitVec 32))

(assert (=> mapNonEmpty!29944 (= (arr!25784 _values!1152) (store mapRest!29944 mapKey!29944 mapValue!29944))))

(assert (= (and start!77870 res!613479) b!908738))

(assert (= (and b!908738 res!613477) b!908741))

(assert (= (and b!908741 res!613486) b!908740))

(assert (= (and b!908740 res!613478) b!908733))

(assert (= (and b!908733 res!613481) b!908734))

(assert (= (and b!908734 res!613483) b!908737))

(assert (= (and b!908737 res!613484) b!908744))

(assert (= (and b!908744 (not res!613485)) b!908745))

(assert (= (and b!908745 (not res!613480)) b!908743))

(assert (= (and b!908743 (not res!613482)) b!908735))

(assert (= (and b!908736 condMapEmpty!29944) mapIsEmpty!29944))

(assert (= (and b!908736 (not condMapEmpty!29944)) mapNonEmpty!29944))

(get-info :version)

(assert (= (and mapNonEmpty!29944 ((_ is ValueCellFull!8928) mapValue!29944)) b!908739))

(assert (= (and b!908736 ((_ is ValueCellFull!8928) mapDefault!29944)) b!908742))

(assert (= start!77870 b!908736))

(declare-fun b_lambda!13315 () Bool)

(assert (=> (not b_lambda!13315) (not b!908744)))

(declare-fun t!25792 () Bool)

(declare-fun tb!5431 () Bool)

(assert (=> (and start!77870 (= defaultEntry!1160 defaultEntry!1160) t!25792) tb!5431))

(declare-fun result!10651 () Bool)

(assert (=> tb!5431 (= result!10651 tp_is_empty!18819)))

(assert (=> b!908744 t!25792))

(declare-fun b_and!26979 () Bool)

(assert (= b_and!26977 (and (=> t!25792 result!10651) b_and!26979)))

(declare-fun m!844165 () Bool)

(assert (=> b!908733 m!844165))

(declare-fun m!844167 () Bool)

(assert (=> b!908733 m!844167))

(declare-fun m!844169 () Bool)

(assert (=> b!908740 m!844169))

(declare-fun m!844171 () Bool)

(assert (=> b!908737 m!844171))

(declare-fun m!844173 () Bool)

(assert (=> start!77870 m!844173))

(declare-fun m!844175 () Bool)

(assert (=> start!77870 m!844175))

(declare-fun m!844177 () Bool)

(assert (=> start!77870 m!844177))

(declare-fun m!844179 () Bool)

(assert (=> b!908734 m!844179))

(declare-fun m!844181 () Bool)

(assert (=> b!908743 m!844181))

(declare-fun m!844183 () Bool)

(assert (=> b!908745 m!844183))

(declare-fun m!844185 () Bool)

(assert (=> b!908745 m!844185))

(declare-fun m!844187 () Bool)

(assert (=> b!908744 m!844187))

(declare-fun m!844189 () Bool)

(assert (=> b!908744 m!844189))

(declare-fun m!844191 () Bool)

(assert (=> b!908744 m!844191))

(declare-fun m!844193 () Bool)

(assert (=> b!908744 m!844193))

(assert (=> b!908744 m!844187))

(assert (=> b!908744 m!844191))

(declare-fun m!844195 () Bool)

(assert (=> b!908744 m!844195))

(declare-fun m!844197 () Bool)

(assert (=> b!908735 m!844197))

(declare-fun m!844199 () Bool)

(assert (=> b!908735 m!844199))

(declare-fun m!844201 () Bool)

(assert (=> b!908741 m!844201))

(declare-fun m!844203 () Bool)

(assert (=> mapNonEmpty!29944 m!844203))

(check-sat (not mapNonEmpty!29944) tp_is_empty!18819 (not start!77870) (not b!908735) (not b_lambda!13315) (not b!908743) (not b!908734) b_and!26979 (not b!908733) (not b!908741) (not b!908745) (not b!908740) (not b_next!16401) (not b!908744))
(check-sat b_and!26979 (not b_next!16401))
