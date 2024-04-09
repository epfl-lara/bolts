; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40668 () Bool)

(assert start!40668)

(declare-fun b_free!10671 () Bool)

(declare-fun b_next!10671 () Bool)

(assert (=> start!40668 (= b_free!10671 (not b_next!10671))))

(declare-fun tp!37832 () Bool)

(declare-fun b_and!18697 () Bool)

(assert (=> start!40668 (= tp!37832 b_and!18697)))

(declare-fun b!449072 () Bool)

(declare-fun e!263352 () Bool)

(declare-fun tp_is_empty!12009 () Bool)

(assert (=> b!449072 (= e!263352 tp_is_empty!12009)))

(declare-fun mapIsEmpty!19647 () Bool)

(declare-fun mapRes!19647 () Bool)

(assert (=> mapIsEmpty!19647 mapRes!19647))

(declare-fun mapNonEmpty!19647 () Bool)

(declare-fun tp!37833 () Bool)

(assert (=> mapNonEmpty!19647 (= mapRes!19647 (and tp!37833 e!263352))))

(declare-fun mapKey!19647 () (_ BitVec 32))

(declare-datatypes ((V!17117 0))(
  ( (V!17118 (val!6049 Int)) )
))
(declare-datatypes ((ValueCell!5661 0))(
  ( (ValueCellFull!5661 (v!8300 V!17117)) (EmptyCell!5661) )
))
(declare-fun mapValue!19647 () ValueCell!5661)

(declare-datatypes ((array!27785 0))(
  ( (array!27786 (arr!13335 (Array (_ BitVec 32) ValueCell!5661)) (size!13687 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27785)

(declare-fun mapRest!19647 () (Array (_ BitVec 32) ValueCell!5661))

(assert (=> mapNonEmpty!19647 (= (arr!13335 _values!549) (store mapRest!19647 mapKey!19647 mapValue!19647))))

(declare-fun b!449073 () Bool)

(declare-fun e!263353 () Bool)

(assert (=> b!449073 (= e!263353 tp_is_empty!12009)))

(declare-fun b!449074 () Bool)

(declare-fun res!267162 () Bool)

(declare-fun e!263354 () Bool)

(assert (=> b!449074 (=> (not res!267162) (not e!263354))))

(declare-datatypes ((array!27787 0))(
  ( (array!27788 (arr!13336 (Array (_ BitVec 32) (_ BitVec 64))) (size!13688 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27787)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449074 (= res!267162 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!449075 () Bool)

(declare-fun res!267151 () Bool)

(assert (=> b!449075 (=> (not res!267151) (not e!263354))))

(declare-datatypes ((List!7986 0))(
  ( (Nil!7983) (Cons!7982 (h!8838 (_ BitVec 64)) (t!13756 List!7986)) )
))
(declare-fun arrayNoDuplicates!0 (array!27787 (_ BitVec 32) List!7986) Bool)

(assert (=> b!449075 (= res!267151 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7983))))

(declare-fun b!449076 () Bool)

(declare-fun res!267153 () Bool)

(assert (=> b!449076 (=> (not res!267153) (not e!263354))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449076 (= res!267153 (or (= (select (arr!13336 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13336 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449077 () Bool)

(declare-fun res!267154 () Bool)

(assert (=> b!449077 (=> (not res!267154) (not e!263354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449077 (= res!267154 (validKeyInArray!0 k0!794))))

(declare-fun b!449078 () Bool)

(declare-fun res!267160 () Bool)

(declare-fun e!263350 () Bool)

(assert (=> b!449078 (=> (not res!267160) (not e!263350))))

(declare-fun lt!204293 () array!27787)

(assert (=> b!449078 (= res!267160 (arrayNoDuplicates!0 lt!204293 #b00000000000000000000000000000000 Nil!7983))))

(declare-fun b!449079 () Bool)

(declare-fun e!263351 () Bool)

(assert (=> b!449079 (= e!263351 (and e!263353 mapRes!19647))))

(declare-fun condMapEmpty!19647 () Bool)

(declare-fun mapDefault!19647 () ValueCell!5661)

(assert (=> b!449079 (= condMapEmpty!19647 (= (arr!13335 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5661)) mapDefault!19647)))))

(declare-fun b!449080 () Bool)

(declare-fun res!267152 () Bool)

(assert (=> b!449080 (=> (not res!267152) (not e!263354))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449080 (= res!267152 (validMask!0 mask!1025))))

(declare-fun b!449081 () Bool)

(declare-fun res!267155 () Bool)

(assert (=> b!449081 (=> (not res!267155) (not e!263354))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!449081 (= res!267155 (and (= (size!13687 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13688 _keys!709) (size!13687 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449082 () Bool)

(assert (=> b!449082 (= e!263354 e!263350)))

(declare-fun res!267156 () Bool)

(assert (=> b!449082 (=> (not res!267156) (not e!263350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27787 (_ BitVec 32)) Bool)

(assert (=> b!449082 (= res!267156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204293 mask!1025))))

(assert (=> b!449082 (= lt!204293 (array!27788 (store (arr!13336 _keys!709) i!563 k0!794) (size!13688 _keys!709)))))

(declare-fun b!449083 () Bool)

(assert (=> b!449083 (= e!263350 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7876 0))(
  ( (tuple2!7877 (_1!3948 (_ BitVec 64)) (_2!3948 V!17117)) )
))
(declare-datatypes ((List!7987 0))(
  ( (Nil!7984) (Cons!7983 (h!8839 tuple2!7876) (t!13757 List!7987)) )
))
(declare-datatypes ((ListLongMap!6803 0))(
  ( (ListLongMap!6804 (toList!3417 List!7987)) )
))
(declare-fun lt!204295 () ListLongMap!6803)

(declare-fun minValue!515 () V!17117)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17117)

(declare-fun v!412 () V!17117)

(declare-fun getCurrentListMapNoExtraKeys!1597 (array!27787 array!27785 (_ BitVec 32) (_ BitVec 32) V!17117 V!17117 (_ BitVec 32) Int) ListLongMap!6803)

(assert (=> b!449083 (= lt!204295 (getCurrentListMapNoExtraKeys!1597 lt!204293 (array!27786 (store (arr!13335 _values!549) i!563 (ValueCellFull!5661 v!412)) (size!13687 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204294 () ListLongMap!6803)

(assert (=> b!449083 (= lt!204294 (getCurrentListMapNoExtraKeys!1597 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449084 () Bool)

(declare-fun res!267159 () Bool)

(assert (=> b!449084 (=> (not res!267159) (not e!263350))))

(assert (=> b!449084 (= res!267159 (bvsle from!863 i!563))))

(declare-fun res!267157 () Bool)

(assert (=> start!40668 (=> (not res!267157) (not e!263354))))

(assert (=> start!40668 (= res!267157 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13688 _keys!709))))))

(assert (=> start!40668 e!263354))

(assert (=> start!40668 tp_is_empty!12009))

(assert (=> start!40668 tp!37832))

(assert (=> start!40668 true))

(declare-fun array_inv!9652 (array!27785) Bool)

(assert (=> start!40668 (and (array_inv!9652 _values!549) e!263351)))

(declare-fun array_inv!9653 (array!27787) Bool)

(assert (=> start!40668 (array_inv!9653 _keys!709)))

(declare-fun b!449085 () Bool)

(declare-fun res!267158 () Bool)

(assert (=> b!449085 (=> (not res!267158) (not e!263354))))

(assert (=> b!449085 (= res!267158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449086 () Bool)

(declare-fun res!267161 () Bool)

(assert (=> b!449086 (=> (not res!267161) (not e!263354))))

(assert (=> b!449086 (= res!267161 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13688 _keys!709))))))

(assert (= (and start!40668 res!267157) b!449080))

(assert (= (and b!449080 res!267152) b!449081))

(assert (= (and b!449081 res!267155) b!449085))

(assert (= (and b!449085 res!267158) b!449075))

(assert (= (and b!449075 res!267151) b!449086))

(assert (= (and b!449086 res!267161) b!449077))

(assert (= (and b!449077 res!267154) b!449076))

(assert (= (and b!449076 res!267153) b!449074))

(assert (= (and b!449074 res!267162) b!449082))

(assert (= (and b!449082 res!267156) b!449078))

(assert (= (and b!449078 res!267160) b!449084))

(assert (= (and b!449084 res!267159) b!449083))

(assert (= (and b!449079 condMapEmpty!19647) mapIsEmpty!19647))

(assert (= (and b!449079 (not condMapEmpty!19647)) mapNonEmpty!19647))

(get-info :version)

(assert (= (and mapNonEmpty!19647 ((_ is ValueCellFull!5661) mapValue!19647)) b!449072))

(assert (= (and b!449079 ((_ is ValueCellFull!5661) mapDefault!19647)) b!449073))

(assert (= start!40668 b!449079))

(declare-fun m!433385 () Bool)

(assert (=> b!449075 m!433385))

(declare-fun m!433387 () Bool)

(assert (=> b!449082 m!433387))

(declare-fun m!433389 () Bool)

(assert (=> b!449082 m!433389))

(declare-fun m!433391 () Bool)

(assert (=> b!449083 m!433391))

(declare-fun m!433393 () Bool)

(assert (=> b!449083 m!433393))

(declare-fun m!433395 () Bool)

(assert (=> b!449083 m!433395))

(declare-fun m!433397 () Bool)

(assert (=> b!449085 m!433397))

(declare-fun m!433399 () Bool)

(assert (=> b!449078 m!433399))

(declare-fun m!433401 () Bool)

(assert (=> b!449077 m!433401))

(declare-fun m!433403 () Bool)

(assert (=> start!40668 m!433403))

(declare-fun m!433405 () Bool)

(assert (=> start!40668 m!433405))

(declare-fun m!433407 () Bool)

(assert (=> b!449076 m!433407))

(declare-fun m!433409 () Bool)

(assert (=> b!449074 m!433409))

(declare-fun m!433411 () Bool)

(assert (=> b!449080 m!433411))

(declare-fun m!433413 () Bool)

(assert (=> mapNonEmpty!19647 m!433413))

(check-sat (not b!449077) (not b!449078) b_and!18697 (not b!449083) (not b!449075) (not b!449080) tp_is_empty!12009 (not start!40668) (not b_next!10671) (not mapNonEmpty!19647) (not b!449082) (not b!449085) (not b!449074))
(check-sat b_and!18697 (not b_next!10671))
