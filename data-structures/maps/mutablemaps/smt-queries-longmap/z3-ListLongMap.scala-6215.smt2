; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79454 () Bool)

(assert start!79454)

(declare-fun b_free!17613 () Bool)

(declare-fun b_next!17613 () Bool)

(assert (=> start!79454 (= b_free!17613 (not b_next!17613))))

(declare-fun tp!61283 () Bool)

(declare-fun b_and!28803 () Bool)

(assert (=> start!79454 (= tp!61283 b_and!28803)))

(declare-fun b!933402 () Bool)

(declare-fun res!628815 () Bool)

(declare-fun e!524149 () Bool)

(assert (=> b!933402 (=> (not res!628815) (not e!524149))))

(declare-datatypes ((array!56202 0))(
  ( (array!56203 (arr!27041 (Array (_ BitVec 32) (_ BitVec 64))) (size!27501 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56202)

(declare-datatypes ((List!19170 0))(
  ( (Nil!19167) (Cons!19166 (h!20312 (_ BitVec 64)) (t!27335 List!19170)) )
))
(declare-fun arrayNoDuplicates!0 (array!56202 (_ BitVec 32) List!19170) Bool)

(assert (=> b!933402 (= res!628815 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19167))))

(declare-fun b!933403 () Bool)

(declare-fun res!628816 () Bool)

(assert (=> b!933403 (=> (not res!628816) (not e!524149))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31793 0))(
  ( (V!31794 (val!10111 Int)) )
))
(declare-datatypes ((ValueCell!9579 0))(
  ( (ValueCellFull!9579 (v!12630 V!31793)) (EmptyCell!9579) )
))
(declare-datatypes ((array!56204 0))(
  ( (array!56205 (arr!27042 (Array (_ BitVec 32) ValueCell!9579)) (size!27502 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56204)

(assert (=> b!933403 (= res!628816 (and (= (size!27502 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27501 _keys!1487) (size!27502 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933404 () Bool)

(declare-fun res!628812 () Bool)

(declare-fun e!524148 () Bool)

(assert (=> b!933404 (=> (not res!628812) (not e!524148))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31793)

(declare-datatypes ((tuple2!13362 0))(
  ( (tuple2!13363 (_1!6691 (_ BitVec 64)) (_2!6691 V!31793)) )
))
(declare-datatypes ((List!19171 0))(
  ( (Nil!19168) (Cons!19167 (h!20313 tuple2!13362) (t!27336 List!19171)) )
))
(declare-datatypes ((ListLongMap!12073 0))(
  ( (ListLongMap!12074 (toList!6052 List!19171)) )
))
(declare-fun lt!420408 () ListLongMap!12073)

(declare-fun apply!834 (ListLongMap!12073 (_ BitVec 64)) V!31793)

(assert (=> b!933404 (= res!628812 (= (apply!834 lt!420408 k0!1099) v!791))))

(declare-fun mapNonEmpty!31941 () Bool)

(declare-fun mapRes!31941 () Bool)

(declare-fun tp!61284 () Bool)

(declare-fun e!524147 () Bool)

(assert (=> mapNonEmpty!31941 (= mapRes!31941 (and tp!61284 e!524147))))

(declare-fun mapValue!31941 () ValueCell!9579)

(declare-fun mapKey!31941 () (_ BitVec 32))

(declare-fun mapRest!31941 () (Array (_ BitVec 32) ValueCell!9579))

(assert (=> mapNonEmpty!31941 (= (arr!27042 _values!1231) (store mapRest!31941 mapKey!31941 mapValue!31941))))

(declare-fun b!933405 () Bool)

(declare-fun res!628811 () Bool)

(assert (=> b!933405 (=> (not res!628811) (not e!524149))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933405 (= res!628811 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27501 _keys!1487))))))

(declare-fun res!628814 () Bool)

(assert (=> start!79454 (=> (not res!628814) (not e!524149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79454 (= res!628814 (validMask!0 mask!1881))))

(assert (=> start!79454 e!524149))

(assert (=> start!79454 true))

(declare-fun tp_is_empty!20121 () Bool)

(assert (=> start!79454 tp_is_empty!20121))

(declare-fun e!524150 () Bool)

(declare-fun array_inv!21004 (array!56204) Bool)

(assert (=> start!79454 (and (array_inv!21004 _values!1231) e!524150)))

(assert (=> start!79454 tp!61283))

(declare-fun array_inv!21005 (array!56202) Bool)

(assert (=> start!79454 (array_inv!21005 _keys!1487)))

(declare-fun mapIsEmpty!31941 () Bool)

(assert (=> mapIsEmpty!31941 mapRes!31941))

(declare-fun b!933406 () Bool)

(declare-fun e!524152 () Bool)

(assert (=> b!933406 (= e!524148 e!524152)))

(declare-fun res!628808 () Bool)

(assert (=> b!933406 (=> (not res!628808) (not e!524152))))

(declare-fun lt!420409 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933406 (= res!628808 (validKeyInArray!0 lt!420409))))

(assert (=> b!933406 (= lt!420409 (select (arr!27041 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933407 () Bool)

(declare-fun e!524153 () Bool)

(assert (=> b!933407 (= e!524153 tp_is_empty!20121)))

(declare-fun b!933408 () Bool)

(assert (=> b!933408 (= e!524149 e!524148)))

(declare-fun res!628813 () Bool)

(assert (=> b!933408 (=> (not res!628813) (not e!524148))))

(declare-fun contains!5051 (ListLongMap!12073 (_ BitVec 64)) Bool)

(assert (=> b!933408 (= res!628813 (contains!5051 lt!420408 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31793)

(declare-fun minValue!1173 () V!31793)

(declare-fun getCurrentListMap!3244 (array!56202 array!56204 (_ BitVec 32) (_ BitVec 32) V!31793 V!31793 (_ BitVec 32) Int) ListLongMap!12073)

(assert (=> b!933408 (= lt!420408 (getCurrentListMap!3244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933409 () Bool)

(assert (=> b!933409 (= e!524150 (and e!524153 mapRes!31941))))

(declare-fun condMapEmpty!31941 () Bool)

(declare-fun mapDefault!31941 () ValueCell!9579)

(assert (=> b!933409 (= condMapEmpty!31941 (= (arr!27042 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9579)) mapDefault!31941)))))

(declare-fun b!933410 () Bool)

(assert (=> b!933410 (= e!524147 tp_is_empty!20121)))

(declare-fun b!933411 () Bool)

(assert (=> b!933411 (= e!524152 (not true))))

(assert (=> b!933411 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19167)))

(declare-datatypes ((Unit!31494 0))(
  ( (Unit!31495) )
))
(declare-fun lt!420403 () Unit!31494)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56202 (_ BitVec 32) (_ BitVec 32)) Unit!31494)

(assert (=> b!933411 (= lt!420403 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420405 () tuple2!13362)

(declare-fun +!2753 (ListLongMap!12073 tuple2!13362) ListLongMap!12073)

(assert (=> b!933411 (contains!5051 (+!2753 lt!420408 lt!420405) k0!1099)))

(declare-fun lt!420404 () Unit!31494)

(declare-fun lt!420407 () V!31793)

(declare-fun addStillContains!509 (ListLongMap!12073 (_ BitVec 64) V!31793 (_ BitVec 64)) Unit!31494)

(assert (=> b!933411 (= lt!420404 (addStillContains!509 lt!420408 lt!420409 lt!420407 k0!1099))))

(assert (=> b!933411 (= (getCurrentListMap!3244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2753 (getCurrentListMap!3244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420405))))

(assert (=> b!933411 (= lt!420405 (tuple2!13363 lt!420409 lt!420407))))

(declare-fun get!14239 (ValueCell!9579 V!31793) V!31793)

(declare-fun dynLambda!1592 (Int (_ BitVec 64)) V!31793)

(assert (=> b!933411 (= lt!420407 (get!14239 (select (arr!27042 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1592 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420406 () Unit!31494)

(declare-fun lemmaListMapRecursiveValidKeyArray!188 (array!56202 array!56204 (_ BitVec 32) (_ BitVec 32) V!31793 V!31793 (_ BitVec 32) Int) Unit!31494)

(assert (=> b!933411 (= lt!420406 (lemmaListMapRecursiveValidKeyArray!188 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933412 () Bool)

(declare-fun res!628810 () Bool)

(assert (=> b!933412 (=> (not res!628810) (not e!524148))))

(assert (=> b!933412 (= res!628810 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933413 () Bool)

(declare-fun res!628817 () Bool)

(assert (=> b!933413 (=> (not res!628817) (not e!524148))))

(assert (=> b!933413 (= res!628817 (validKeyInArray!0 k0!1099))))

(declare-fun b!933414 () Bool)

(declare-fun res!628809 () Bool)

(assert (=> b!933414 (=> (not res!628809) (not e!524149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56202 (_ BitVec 32)) Bool)

(assert (=> b!933414 (= res!628809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!79454 res!628814) b!933403))

(assert (= (and b!933403 res!628816) b!933414))

(assert (= (and b!933414 res!628809) b!933402))

(assert (= (and b!933402 res!628815) b!933405))

(assert (= (and b!933405 res!628811) b!933408))

(assert (= (and b!933408 res!628813) b!933404))

(assert (= (and b!933404 res!628812) b!933412))

(assert (= (and b!933412 res!628810) b!933413))

(assert (= (and b!933413 res!628817) b!933406))

(assert (= (and b!933406 res!628808) b!933411))

(assert (= (and b!933409 condMapEmpty!31941) mapIsEmpty!31941))

(assert (= (and b!933409 (not condMapEmpty!31941)) mapNonEmpty!31941))

(get-info :version)

(assert (= (and mapNonEmpty!31941 ((_ is ValueCellFull!9579) mapValue!31941)) b!933410))

(assert (= (and b!933409 ((_ is ValueCellFull!9579) mapDefault!31941)) b!933407))

(assert (= start!79454 b!933409))

(declare-fun b_lambda!13977 () Bool)

(assert (=> (not b_lambda!13977) (not b!933411)))

(declare-fun t!27334 () Bool)

(declare-fun tb!6015 () Bool)

(assert (=> (and start!79454 (= defaultEntry!1235 defaultEntry!1235) t!27334) tb!6015))

(declare-fun result!11847 () Bool)

(assert (=> tb!6015 (= result!11847 tp_is_empty!20121)))

(assert (=> b!933411 t!27334))

(declare-fun b_and!28805 () Bool)

(assert (= b_and!28803 (and (=> t!27334 result!11847) b_and!28805)))

(declare-fun m!867659 () Bool)

(assert (=> mapNonEmpty!31941 m!867659))

(declare-fun m!867661 () Bool)

(assert (=> b!933402 m!867661))

(declare-fun m!867663 () Bool)

(assert (=> b!933414 m!867663))

(declare-fun m!867665 () Bool)

(assert (=> b!933406 m!867665))

(declare-fun m!867667 () Bool)

(assert (=> b!933406 m!867667))

(declare-fun m!867669 () Bool)

(assert (=> b!933404 m!867669))

(declare-fun m!867671 () Bool)

(assert (=> start!79454 m!867671))

(declare-fun m!867673 () Bool)

(assert (=> start!79454 m!867673))

(declare-fun m!867675 () Bool)

(assert (=> start!79454 m!867675))

(declare-fun m!867677 () Bool)

(assert (=> b!933413 m!867677))

(declare-fun m!867679 () Bool)

(assert (=> b!933411 m!867679))

(declare-fun m!867681 () Bool)

(assert (=> b!933411 m!867681))

(declare-fun m!867683 () Bool)

(assert (=> b!933411 m!867683))

(declare-fun m!867685 () Bool)

(assert (=> b!933411 m!867685))

(declare-fun m!867687 () Bool)

(assert (=> b!933411 m!867687))

(assert (=> b!933411 m!867683))

(assert (=> b!933411 m!867681))

(assert (=> b!933411 m!867687))

(declare-fun m!867689 () Bool)

(assert (=> b!933411 m!867689))

(declare-fun m!867691 () Bool)

(assert (=> b!933411 m!867691))

(declare-fun m!867693 () Bool)

(assert (=> b!933411 m!867693))

(declare-fun m!867695 () Bool)

(assert (=> b!933411 m!867695))

(declare-fun m!867697 () Bool)

(assert (=> b!933411 m!867697))

(declare-fun m!867699 () Bool)

(assert (=> b!933411 m!867699))

(assert (=> b!933411 m!867695))

(declare-fun m!867701 () Bool)

(assert (=> b!933411 m!867701))

(declare-fun m!867703 () Bool)

(assert (=> b!933408 m!867703))

(declare-fun m!867705 () Bool)

(assert (=> b!933408 m!867705))

(check-sat (not b!933413) (not b!933408) b_and!28805 (not b_next!17613) (not b_lambda!13977) (not b!933411) (not start!79454) (not b!933406) tp_is_empty!20121 (not b!933414) (not b!933402) (not mapNonEmpty!31941) (not b!933404))
(check-sat b_and!28805 (not b_next!17613))
