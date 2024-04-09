; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79906 () Bool)

(assert start!79906)

(declare-fun b_free!17775 () Bool)

(declare-fun b_next!17775 () Bool)

(assert (=> start!79906 (= b_free!17775 (not b_next!17775))))

(declare-fun tp!61790 () Bool)

(declare-fun b_and!29205 () Bool)

(assert (=> start!79906 (= tp!61790 b_and!29205)))

(declare-fun b!939324 () Bool)

(declare-fun res!631929 () Bool)

(declare-fun e!527633 () Bool)

(assert (=> b!939324 (=> (not res!631929) (not e!527633))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!32009 0))(
  ( (V!32010 (val!10192 Int)) )
))
(declare-fun v!791 () V!32009)

(declare-datatypes ((tuple2!13502 0))(
  ( (tuple2!13503 (_1!6761 (_ BitVec 64)) (_2!6761 V!32009)) )
))
(declare-datatypes ((List!19309 0))(
  ( (Nil!19306) (Cons!19305 (h!20451 tuple2!13502) (t!27632 List!19309)) )
))
(declare-datatypes ((ListLongMap!12213 0))(
  ( (ListLongMap!12214 (toList!6122 List!19309)) )
))
(declare-fun lt!424484 () ListLongMap!12213)

(declare-fun apply!900 (ListLongMap!12213 (_ BitVec 64)) V!32009)

(assert (=> b!939324 (= res!631929 (= (apply!900 lt!424484 k0!1099) v!791))))

(declare-fun b!939325 () Bool)

(declare-fun e!527636 () Bool)

(declare-fun e!527634 () Bool)

(declare-fun mapRes!32204 () Bool)

(assert (=> b!939325 (= e!527636 (and e!527634 mapRes!32204))))

(declare-fun condMapEmpty!32204 () Bool)

(declare-datatypes ((ValueCell!9660 0))(
  ( (ValueCellFull!9660 (v!12723 V!32009)) (EmptyCell!9660) )
))
(declare-datatypes ((array!56530 0))(
  ( (array!56531 (arr!27199 (Array (_ BitVec 32) ValueCell!9660)) (size!27659 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56530)

(declare-fun mapDefault!32204 () ValueCell!9660)

(assert (=> b!939325 (= condMapEmpty!32204 (= (arr!27199 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9660)) mapDefault!32204)))))

(declare-fun b!939326 () Bool)

(declare-fun tp_is_empty!20283 () Bool)

(assert (=> b!939326 (= e!527634 tp_is_empty!20283)))

(declare-fun e!527630 () Bool)

(declare-fun b!939327 () Bool)

(declare-fun lt!424485 () ListLongMap!12213)

(assert (=> b!939327 (= e!527630 (not (= (apply!900 lt!424485 k0!1099) v!791)))))

(declare-fun b!939328 () Bool)

(declare-fun res!631926 () Bool)

(declare-fun e!527632 () Bool)

(assert (=> b!939328 (=> (not res!631926) (not e!527632))))

(declare-datatypes ((array!56532 0))(
  ( (array!56533 (arr!27200 (Array (_ BitVec 32) (_ BitVec 64))) (size!27660 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56532)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56532 (_ BitVec 32)) Bool)

(assert (=> b!939328 (= res!631926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!631927 () Bool)

(assert (=> start!79906 (=> (not res!631927) (not e!527632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79906 (= res!631927 (validMask!0 mask!1881))))

(assert (=> start!79906 e!527632))

(assert (=> start!79906 true))

(assert (=> start!79906 tp_is_empty!20283))

(declare-fun array_inv!21108 (array!56530) Bool)

(assert (=> start!79906 (and (array_inv!21108 _values!1231) e!527636)))

(assert (=> start!79906 tp!61790))

(declare-fun array_inv!21109 (array!56532) Bool)

(assert (=> start!79906 (array_inv!21109 _keys!1487)))

(declare-fun b!939329 () Bool)

(declare-fun res!631925 () Bool)

(assert (=> b!939329 (=> (not res!631925) (not e!527633))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!939329 (= res!631925 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!939330 () Bool)

(assert (=> b!939330 (= e!527633 e!527630)))

(declare-fun res!631928 () Bool)

(assert (=> b!939330 (=> res!631928 e!527630)))

(declare-fun contains!5135 (ListLongMap!12213 (_ BitVec 64)) Bool)

(assert (=> b!939330 (= res!631928 (not (contains!5135 lt!424485 k0!1099)))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!32009)

(declare-fun minValue!1173 () V!32009)

(declare-fun getCurrentListMap!3310 (array!56532 array!56530 (_ BitVec 32) (_ BitVec 32) V!32009 V!32009 (_ BitVec 32) Int) ListLongMap!12213)

(assert (=> b!939330 (= lt!424485 (getCurrentListMap!3310 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun mapNonEmpty!32204 () Bool)

(declare-fun tp!61789 () Bool)

(declare-fun e!527635 () Bool)

(assert (=> mapNonEmpty!32204 (= mapRes!32204 (and tp!61789 e!527635))))

(declare-fun mapValue!32204 () ValueCell!9660)

(declare-fun mapRest!32204 () (Array (_ BitVec 32) ValueCell!9660))

(declare-fun mapKey!32204 () (_ BitVec 32))

(assert (=> mapNonEmpty!32204 (= (arr!27199 _values!1231) (store mapRest!32204 mapKey!32204 mapValue!32204))))

(declare-fun mapIsEmpty!32204 () Bool)

(assert (=> mapIsEmpty!32204 mapRes!32204))

(declare-fun b!939331 () Bool)

(declare-fun res!631930 () Bool)

(assert (=> b!939331 (=> (not res!631930) (not e!527632))))

(declare-datatypes ((List!19310 0))(
  ( (Nil!19307) (Cons!19306 (h!20452 (_ BitVec 64)) (t!27633 List!19310)) )
))
(declare-fun arrayNoDuplicates!0 (array!56532 (_ BitVec 32) List!19310) Bool)

(assert (=> b!939331 (= res!631930 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19307))))

(declare-fun b!939332 () Bool)

(assert (=> b!939332 (= e!527632 e!527633)))

(declare-fun res!631931 () Bool)

(assert (=> b!939332 (=> (not res!631931) (not e!527633))))

(assert (=> b!939332 (= res!631931 (contains!5135 lt!424484 k0!1099))))

(assert (=> b!939332 (= lt!424484 (getCurrentListMap!3310 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!939333 () Bool)

(assert (=> b!939333 (= e!527635 tp_is_empty!20283)))

(declare-fun b!939334 () Bool)

(declare-fun res!631924 () Bool)

(assert (=> b!939334 (=> (not res!631924) (not e!527632))))

(assert (=> b!939334 (= res!631924 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27660 _keys!1487))))))

(declare-fun b!939335 () Bool)

(declare-fun res!631923 () Bool)

(assert (=> b!939335 (=> (not res!631923) (not e!527632))))

(assert (=> b!939335 (= res!631923 (and (= (size!27659 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27660 _keys!1487) (size!27659 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79906 res!631927) b!939335))

(assert (= (and b!939335 res!631923) b!939328))

(assert (= (and b!939328 res!631926) b!939331))

(assert (= (and b!939331 res!631930) b!939334))

(assert (= (and b!939334 res!631924) b!939332))

(assert (= (and b!939332 res!631931) b!939324))

(assert (= (and b!939324 res!631929) b!939329))

(assert (= (and b!939329 res!631925) b!939330))

(assert (= (and b!939330 (not res!631928)) b!939327))

(assert (= (and b!939325 condMapEmpty!32204) mapIsEmpty!32204))

(assert (= (and b!939325 (not condMapEmpty!32204)) mapNonEmpty!32204))

(get-info :version)

(assert (= (and mapNonEmpty!32204 ((_ is ValueCellFull!9660) mapValue!32204)) b!939333))

(assert (= (and b!939325 ((_ is ValueCellFull!9660) mapDefault!32204)) b!939326))

(assert (= start!79906 b!939325))

(declare-fun m!875283 () Bool)

(assert (=> b!939332 m!875283))

(declare-fun m!875285 () Bool)

(assert (=> b!939332 m!875285))

(declare-fun m!875287 () Bool)

(assert (=> b!939324 m!875287))

(declare-fun m!875289 () Bool)

(assert (=> start!79906 m!875289))

(declare-fun m!875291 () Bool)

(assert (=> start!79906 m!875291))

(declare-fun m!875293 () Bool)

(assert (=> start!79906 m!875293))

(declare-fun m!875295 () Bool)

(assert (=> mapNonEmpty!32204 m!875295))

(declare-fun m!875297 () Bool)

(assert (=> b!939327 m!875297))

(declare-fun m!875299 () Bool)

(assert (=> b!939330 m!875299))

(declare-fun m!875301 () Bool)

(assert (=> b!939330 m!875301))

(declare-fun m!875303 () Bool)

(assert (=> b!939331 m!875303))

(declare-fun m!875305 () Bool)

(assert (=> b!939328 m!875305))

(check-sat (not b!939330) (not b!939324) (not mapNonEmpty!32204) b_and!29205 tp_is_empty!20283 (not start!79906) (not b_next!17775) (not b!939331) (not b!939332) (not b!939327) (not b!939328))
(check-sat b_and!29205 (not b_next!17775))
